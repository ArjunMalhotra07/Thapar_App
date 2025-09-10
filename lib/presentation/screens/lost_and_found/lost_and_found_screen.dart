// ==================== SCREEN ====================
// presentation/screens/lost_found/lost_found_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thaparapp/business/lost_and_found/lost_and_found_bloc.dart';
import 'package:thaparapp/data/model/lost_and_found_item/lost_found_item.dart';
import 'package:thaparapp/injector.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/lost_and_found/lost_found_item_details_sheet.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/lost_and_found/lost_and_found_item_card.dart';
import 'package:thaparapp/presentation/widgets/screen_specific/lost_and_found/lost_found_search_widget.dart';
import '../../constants/app_fonts.dart';

class LostFoundScreen extends StatefulWidget {
  const LostFoundScreen({super.key});

  @override
  State<LostFoundScreen> createState() => _LostFoundScreenState();
}

class _LostFoundScreenState extends State<LostFoundScreen> {
  final TextEditingController _searchController = TextEditingController();
  late LostAndFoundBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = locator<LostAndFoundBloc>();
    // Only fetch items if we haven't loaded them yet (first time opening the screen)
    if (_bloc.allItems.isEmpty) {
      _bloc.add(const LostAndFoundEvent.fetchItems());
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    _bloc.add(LostAndFoundEvent.searchItems(query: query));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDB952), // Orange background from design
      appBar: AppBar(
        backgroundColor: Color(0xFFFDB952),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lost & Found',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: AppFonts.gilroy,
              ),
            ),
            Text(
              'Helping you reconnect with lost things.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.gilroy,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: Column(
          children: [
            // Search section with white container
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    LostFoundSearchWidget(
                      searchController: _searchController,
                      onSearchChanged: _onSearchChanged,
                    ),
                    SizedBox(height: 16),
                    // Items list
                    Expanded(
                      child: BlocBuilder<LostAndFoundBloc, LostAndFoundState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => Center(
                              child: CircularProgressIndicator(),
                            ),
                            loading: () => Center(
                              child: CircularProgressIndicator(),
                            ),
                            success: (items, searchQuery, filterType, count) => 
                              ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return LostFoundItemCard(
                                    item: items[index],
                                    onTap: () => _showItemDetails(items[index]),
                                  );
                                },
                              ),
                            empty: (message) => _buildEmptyState(message),
                            failure: (message) => Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.error_outline, 
                                       size: 64, 
                                       color: Colors.red[400]),
                                  SizedBox(height: 16),
                                  Text(
                                    'Error',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey[600],
                                      fontFamily: AppFonts.gilroy,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    message,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[500],
                                      fontFamily: AppFonts.gilroy,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 16),
                                  ElevatedButton(
                                    onPressed: () => _bloc.add(
                                      const LostAndFoundEvent.fetchItems(),
                                    ),
                                    child: Text('Retry'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState([String? message]) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text(
            message ?? 'No items found',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
              fontFamily: AppFonts.gilroy,
            ),
          ),
          if (message == null || !message.contains('No items'))
            Column(
              children: [
                SizedBox(height: 8),
                Text(
                  'Try adjusting your search terms',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontFamily: AppFonts.gilroy,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  void _showItemDetails(LostFoundItem item) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => LostFoundItemDetailsSheet(item: item),
    );
  }
}