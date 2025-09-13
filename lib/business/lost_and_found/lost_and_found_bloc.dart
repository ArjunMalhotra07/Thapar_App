import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/data/repo/lost_and_found_repo.dart';

part 'lost_and_found_event.dart';
part 'lost_and_found_state.dart';
part 'lost_and_found_bloc.freezed.dart';

class LostAndFoundBloc extends Bloc<LostAndFoundEvent, LostAndFoundState> {
  final LostAndFoundRepo lostAndFoundRepo;
  
  List<LostFoundItem> allItems = [];
  List<LostFoundItem> filteredItems = [];
  String currentSearchQuery = '';

  LostAndFoundBloc({required this.lostAndFoundRepo}) 
      : super(const LostAndFoundState.initial()) {
    on<_Started>(_onStarted);
    on<_FetchItems>(_onFetchItems);
    on<_SearchItems>(_onSearchItems);
    on<_ClearSearch>(_onClearSearch);
    on<_RefreshItems>(_onRefreshItems);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<LostAndFoundState> emit,
  ) async {
    add(const LostAndFoundEvent.fetchItems());
  }

  Future<void> _onFetchItems(
    _FetchItems event,
    Emitter<LostAndFoundState> emit,
  ) async {
    emit(const LostAndFoundState.loading());
    
    try {
      final response = await lostAndFoundRepo.fetchItems();
      allItems = response.items;
      filteredItems = List.from(allItems);
      
      if (allItems.isEmpty) {
        emit(const LostAndFoundState.empty(
          message: 'No lost and found items available',
        ));
      } else {
        emit(LostAndFoundState.success(
          items: filteredItems,
          searchQuery: '',
          count: filteredItems.length,
        ));
      }
    } catch (e) {
      emit(LostAndFoundState.failure(
        message: 'Failed to load items: ${e.toString()}',
      ));
    }
  }

  Future<void> _onSearchItems(
    _SearchItems event,
    Emitter<LostAndFoundState> emit,
  ) async {
    currentSearchQuery = event.query;
    
    if (event.query.isEmpty) {
      filteredItems = List.from(allItems);
    } else {
      filteredItems = allItems.where((item) {
        final query = event.query.toLowerCase();
        return (item.name?.toLowerCase().contains(query) ?? false) ||
               (item.properties?.toLowerCase().contains(query) ?? false) ||
               (item.location?.toLowerCase().contains(query) ?? false) ||
               (item.location?.toLowerCase().contains(query) ?? false);
      }).toList();
    }
    
    if (filteredItems.isEmpty && event.query.isNotEmpty) {
      emit(LostAndFoundState.empty(
        message: 'No items found for "${event.query}"',
      ));
    } else if (filteredItems.isEmpty) {
      emit(const LostAndFoundState.empty(
        message: 'No items available',
      ));
    } else {
      emit(LostAndFoundState.success(
        items: filteredItems,
        searchQuery: event.query,
        count: filteredItems.length,
      ));
    }
  }

  Future<void> _onClearSearch(
    _ClearSearch event,
    Emitter<LostAndFoundState> emit,
  ) async {
    currentSearchQuery = '';
    filteredItems = List.from(allItems);
    
    if (filteredItems.isEmpty) {
      emit(const LostAndFoundState.empty(
        message: 'No items available',
      ));
    } else {
      emit(LostAndFoundState.success(
        items: filteredItems,
        searchQuery: '',
        count: filteredItems.length,
      ));
    }
  }

  Future<void> _onRefreshItems(
    _RefreshItems event,
    Emitter<LostAndFoundState> emit,
  ) async {
    try {
      final response = await lostAndFoundRepo.fetchItems();
      allItems = response.items;
      
      if (currentSearchQuery.isNotEmpty) {
        add(LostAndFoundEvent.searchItems(query: currentSearchQuery));
      } else {
        filteredItems = List.from(allItems);
        
        if (filteredItems.isEmpty) {
          emit(const LostAndFoundState.empty(
            message: 'No items available',
          ));
        } else {
          emit(LostAndFoundState.success(
            items: filteredItems,
            searchQuery: currentSearchQuery,
            count: filteredItems.length,
          ));
        }
      }
    } catch (e) {
      // Silent refresh failure, maintain current state
    }
  }

}