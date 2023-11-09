// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class StackCard extends StatefulWidget {
  final List<Color> gradientColors;
  final String name;
  final String imageUrl;
  final String actionText;
  final Color actionColor;
  final VoidCallback onPressed; // Declare onPressed as a required argument

  const StackCard({super.key, 
    required this.gradientColors,
    required this.name,
    required this.imageUrl,
    required this.actionText,
    required this.actionColor,
    required this.onPressed, // Add onPressed as a required argument
  });

  @override
  _StackCardState createState() => _StackCardState();
}

class _StackCardState extends State<StackCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: double.infinity,
            height: 35.h,
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(2.5.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: widget.gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Hero(
                    tag: 'cardHero${widget.imageUrl}',
                    child: Container(
                      height: 20.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              isLiked ? Icons.favorite : Icons.favorite_border,
                              size: 4.h,
                              color: isLiked ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                          ElevatedButton(
                            onPressed: widget.onPressed, // Use onPressed function
                            style: ElevatedButton.styleFrom(
                              backgroundColor: widget.actionColor,
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              side: const BorderSide(
                                width: 2.0,
                                color: Colors.white,
                              ),
                            ),
                            child: Text(
                              widget.actionText,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class AnimatedCardDetail extends StatelessWidget {
  final List<Color> gradientColors;
  final String name;
  final String imageUrl;
  final String actionText;
  final Color actionColor;
  final VoidCallback onPressed; // Declare onPressed as a required argument

  const AnimatedCardDetail({super.key, 
    required this.gradientColors,
    required this.name,
    required this.imageUrl,
    required this.actionText,
    required this.actionColor,
    required this.onPressed, // Add onPressed as a required argument
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'cardHero$imageUrl',
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: double.infinity,
            height: 100.h, // Increase height for a zoom-in effect
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0.h), // Increase padding for a zoom-in effect
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: onPressed, // Use onPressed function
                        style: ElevatedButton.styleFrom(
                          backgroundColor: actionColor,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          side: const BorderSide(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Text(
                          actionText,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
            )],
              ),
            ),
          ),
        ),
      );
  }
}
