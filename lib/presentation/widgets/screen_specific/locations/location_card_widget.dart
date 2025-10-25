import 'package:flutter/material.dart';
import 'package:thaparapp/data/model/location_service/location/location.dart';
import 'package:thaparapp/presentation/constants/app_color.dart';
import 'package:thaparapp/presentation/constants/app_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationCardWidget extends StatefulWidget {
  final Location location;

  const LocationCardWidget({required this.location, super.key});

  @override
  State<LocationCardWidget> createState() => _LocationCardWidgetState();
}

class _LocationCardWidgetState extends State<LocationCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _heightAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _slideAnimation = Tween<double>(begin: 0, end: -12).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutQuart,
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.2, 1.0, curve: Curves.easeOut),
      ),
    );

    _heightAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutQuart,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleDescription() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(3, 3, 3, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            GestureDetector(
              onTap: _toggleDescription,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(color: Colors.white),
                    child: AnimatedBuilder(
                      animation: _slideAnimation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, _slideAnimation.value),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  widget.location.imageUrl ??
                                      'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=400&q=80',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 12,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Text(
                        widget.location.category.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          letterSpacing: 0.5,
                          fontFamily: AppFonts.gilroy,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content section
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  AnimatedBuilder(
                    animation: _slideAnimation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, _slideAnimation.value),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Text(
                            widget.location.name ?? 'Unknown Location',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontFamily: AppFonts.gilroy,
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // Description
                  AnimatedBuilder(
                    animation: _heightAnimation,
                    builder: (context, child) {
                      return ClipRect(
                        child: Align(
                          alignment: Alignment.topCenter,
                          heightFactor: _heightAnimation.value,
                          child: AnimatedBuilder(
                            animation: _fadeAnimation,
                            builder: (context, child) {
                              return Opacity(
                                opacity: _fadeAnimation.value,
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    widget.location.description ??
                                        'No description available',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      fontFamily: AppFonts.gilroy,
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),

                  // Tags and button
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Features tags
                        if (widget.location.features != null &&
                            widget.location.features!.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Wrap(
                              spacing: 8,
                              runSpacing: 4,
                              children: widget.location.features!
                                  .map(
                                    (feature) => Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: Color(0xFFFF6B6B),
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        feature.toUpperCase(),
                                        style: TextStyle(
                                          fontFamily: AppFonts.gilroy,
                                          fontSize: 12,
                                          color: Color(0xFFFF6B6B),
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),

                        // View on Map button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              _showLocationOnMap(context, widget.location);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.locateUsTheme,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'View on Map',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: AppFonts.gilroy,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLocationOnMap(BuildContext context, Location location) async {
    if (location.latitude == null || location.longitude == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Location coordinates not available',
              style: TextStyle(fontFamily: AppFonts.gilroy),
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    // Try multiple URL formats for maximum compatibility
    final List<String> urlsToTry = [
      // Format 1: Direct coordinates with query (works best on most devices)
      'geo:${location.latitude},${location.longitude}?q=${location.latitude},${location.longitude}(${Uri.encodeComponent(location.name ?? 'Location')})',

      // Format 2: Google Maps with coordinates
      'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}',

      // Format 3: Comgooglemaps scheme (for Google Maps app)
      'comgooglemaps://?q=${location.latitude},${location.longitude}&center=${location.latitude},${location.longitude}',

      // Format 4: Standard geo URI
      'geo:${location.latitude},${location.longitude}',
    ];

    bool launched = false;

    for (String url in urlsToTry) {
      try {
        final Uri uri = Uri.parse(url);

        // Check if URL can be launched
        if (await canLaunchUrl(uri)) {
          launched = await launchUrl(uri, mode: LaunchMode.externalApplication);

          if (launched) {
            print('Successfully launched with URL: $url');
            break;
          }
        }
      } catch (e) {
        print('Failed to launch URL: $url - Error: $e');
        continue;
      }
    }

    if (!launched && context.mounted) {
      // Fallback: Try opening in browser
      try {
        final browserUrl =
            'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}';
        final Uri uri = Uri.parse(browserUrl);

        launched = await launchUrl(uri, mode: LaunchMode.platformDefault);
      } catch (e) {
        print('Browser fallback failed: $e');
      }
    }

    if (!launched && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Could not open maps. Please ensure Google Maps is installed.',
            style: TextStyle(fontFamily: AppFonts.gilroy),
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 4),
        ),
      );
    }
  }
}
