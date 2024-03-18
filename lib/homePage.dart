import 'package:flutter/material.dart';

import 'bangla_pages/lifeStoryPage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Stack(
              fit: StackFit.expand,
              // fit: StackFit.expand, // Expand the stack to fill the entire screen
              children: [
                // Background image
                Image.asset(
                  'assets/images/background_phone.png',
                  fit: BoxFit.cover, // Cover the entire screen
                ),

                Positioned(
                  top: 100,
                  right: 50,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // Adjust the radius for desired shape
                          color: Colors.black, // Set the button color
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LifeStoryPage(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right),
                              Text(
                                "বিস্তারিত || Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Stack(
              fit: StackFit.expand,
              // fit: StackFit.expand, // Expand the stack to fill the entire screen
              children: [
                // Background image
                Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.cover, // Cover the entire screen
                ),

                Positioned(
                  top: 300,
                  right: 30,
                  child: Column(
                    children: [
                      SizedBox(
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      const Text(
                        "নীলিমা ইব্রাহিম",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "(১১ অক্টোবর ১৯২১ — ১৮ জুন ২০০২)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // Adjust the radius for desired shape
                          color: Colors.black, // Set the button color
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LifeStoryPage(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right),
                              Text(
                                "বিস্তারিত || Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
