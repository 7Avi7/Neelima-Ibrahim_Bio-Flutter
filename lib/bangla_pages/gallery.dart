import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/publish.dart';
import 'package:ni_last/english_pages/gal.dart';


import '../homePage.dart';
import 'activities.dart';
import 'contact.dart';
import 'lifeStoryPage.dart';
import 'media.dart';
import 'memories.dart';
import 'news.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List imageList = [
    {'id': 1, 'image_path': 'assets/images/11.png'},
    {'id': 2, 'image_path': 'assets/images/22.png'},
    {'id': 3, 'image_path': 'assets/images/33.png'},
    {'id': 4, 'image_path': 'assets/images/44.png'},
    {'id': 5, 'image_path': 'assets/images/55.png'},
    {'id': 6, 'image_path': 'assets/images/66.png'},
    {'id': 7, 'image_path': 'assets/images/77.png'},
    {'id': 8, 'image_path': 'assets/images/88.png'},
    {'id': 9, 'image_path': 'assets/images/99.png'},
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;
  late List<Widget> appBarItem;

  @override
  void initState() {
    super.initState();

    appBarItem = [
      const SizedBox(
        height: 100,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LifeStoryPage(),
              ),
            );
          },
          child: const Text(
            "জীবনের গল্প",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Activities(),
              ),
            );
          },
          child: const Text(
            "কার্যক্রম",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Publish(),
              ),
            );
          },
          child: const Text(
            "প্রকাশনা",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Memories(),
              ),
            );
          },
          child: const Text(
            "স্মৃতিচারন",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Media(),
              ),
            );
          },
          child: const Text(
            "মিডিয়া",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Gallery(),
              ),
            );
          },
          child: const Text(
            "গ্যালারি",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const News(),
              ),
            );
          },
          child: const Text(
            "সমাচার",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Contact(),
              ),
            );
          },
          child: const Text(
            "যোগাযোগ",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ];
  }

  bool mobile = false;

  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 1000 ? false : true;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              // leading: mobile ? null : Row(children: appBarItem),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Gal(),
                        ),
                      );
                    },
                    child: Text("English   "))
              ],
              title: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homepage(),
                        ),
                      );
                    },
                    child: const Text(
                      "নীলিমা ইব্রাহিম",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: mobile ? [] : appBarItem,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            drawer: mobile
                ? Drawer(
                    child: ListView(
                      children: appBarItem,
                    ),
                  )
                : null,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex);
                        },
                        child: CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  // fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 1,
                            viewportFraction: 4,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () =>
                                  carouselController.animateToPage(entry.key),
                              child: Container(
                                width: currentIndex == entry.key ? 17 : 7,
                                height: 7.0,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentIndex == entry.key
                                        ? Colors.red
                                        : Colors.teal),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 280,
                  ),
                  Container(
                    height: 60,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Copyright 2024, All Rights Reserved",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              // leading: mobile ? null : Row(children: appBarItem),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Gal(),
                        ),
                      );
                    },
                    child: Text("English   "))
              ],
              title: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homepage(),
                        ),
                      );
                    },
                    child: const Text(
                      "নীলিমা ইব্রাহিম",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: mobile ? [] : appBarItem,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            drawer: mobile
                ? Drawer(
                    child: ListView(
                      children: appBarItem,
                    ),
                  )
                : null,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex);
                        },
                        child: CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  // fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageList.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () =>
                                  carouselController.animateToPage(entry.key),
                              child: Container(
                                width: currentIndex == entry.key ? 17 : 7,
                                height: 7.0,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 3.0,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: currentIndex == entry.key
                                        ? Colors.red
                                        : Colors.teal),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 60,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Copyright 2024, All Rights Reserved",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
