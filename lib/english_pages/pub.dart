import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/publish.dart';
import 'package:ni_last/english_pages/act.dart';
import 'package:ni_last/english_pages/cont.dart';
import 'package:ni_last/english_pages/gal.dart';
import 'package:ni_last/english_pages/li.dart';
import 'package:ni_last/english_pages/med.dart';
import 'package:ni_last/english_pages/mem.dart';
import 'package:ni_last/english_pages/new.dart';


import '../homePage.dart';

class Pub extends StatefulWidget {
  const Pub({super.key});

  @override
  State<Pub> createState() => _Pub();
}

class _Pub extends State<Pub> {
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
                builder: (context) => const Li(),
              ),
            );
          },
          child: const Text(
            "LIFE STORY",
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
                builder: (context) => const Act(),
              ),
            );
          },
          child: const Text(
            "ACTIVITIES",
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
                builder: (context) => const Pub(),
              ),
            );
          },
          child: const Text(
            "PUBLISHER",
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
                builder: (context) => const Mem(),
              ),
            );
          },
          child: const Text(
            "REMEMBRANCE",
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
                builder: (context) => const Med(),
              ),
            );
          },
          child: const Text(
            "MEDIA",
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
                builder: (context) => const Gal(),
              ),
            );
          },
          child: const Text(
            "GALLERY",
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
                builder: (context) => const New(),
              ),
            );
          },
          child: const Text(
            "NEWS",
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
                builder: (context) => const Cont(),
              ),
            );
          },
          child: const Text(
            "CONTACT",
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
                    builder: (context) => const Publish(),
                  ),
                );
              },
              child: Text("বাংলা   "))
        ],
        title: Column(
          children: [
            SizedBox(
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
                "Neelima Ibrahim",
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "PUBLISHER      ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset('assets/images/1.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "আমি বীরাঙ্গনা বলছি",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("জাগৃতি প্রকাশনী"),
                  SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset('assets/images/2.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভূমিকা",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("সময় প্রকাশন"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/3.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "বেগম শেখ ফজিলাতুন্নেছা মুজিব",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("জাগৃতি প্রকাশনী"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/4.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "বিন্দু-বিসর্গ",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("জাগৃতি প্রকাশনী"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/5.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "উপন্যাসসমগ্র",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("জাগৃতি প্রকাশনী"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/6.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "গল্পসমগ্র",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("সময় প্রকাশন"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/7.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "বস্টনের পথে",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("নালন্দা"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/8.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "শাহী এলাকার পথে পথে",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("নালন্দা"),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Image.asset('assets/images/9.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "শরৎ প্রতিভা",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/10.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "অগ্নিস্নাত বঙ্গবন্ধুর"
                    "\nভস্মাচ্ছাদিত কন্যা"
                    "\nআমি",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("সময় প্রকাশন"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/11.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "সূর্যোদয় থেকে সূর্যাস্ত:"
                    "\nঅতপর কৃষ্ণান্ধকারসূর্যোদয়"
                    "\nথেকে সূর্যাস্ত:"
                    "\nঅতপর কৃষ্ণান্ধকার",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("আগামী প্রকাশনী"),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/12.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "রচনা সমগ্র-১",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("সময় প্রকাশন"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/13.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "বাংলার কবি মধুসুদন",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/14.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "বাংলার নাটক উৎসওধার",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/15.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "শতাব্দীর অন্ধকারে",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/16.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভুমিকা",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Image.asset('assets/images/17.png'),
                  // const SizedBox(height: 30),
                  const Text(
                    "শাহী এলাকার পথে পথে",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text("জাগৃতি প্রকাশনী"),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/18.png'),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: const Text(
                      "উনবিংশ শতাব্দীর বাঙ্গালী সমাজ ও বাংলা নাটক",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
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
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "PUBLISHER      ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/1.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "আমি বীরাঙ্গনা বলছি",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("জাগৃতি প্রকাশনী"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/2.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভূমিকা",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("সময় প্রকাশন"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/3.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "বেগম শেখ ফজিলাতুন্নেছা মুজিব",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("জাগৃতি প্রকাশনী"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/4.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "বিন্দু-বিসর্গ",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("জাগৃতি প্রকাশনী"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/5.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "উপন্যাসসমগ্র",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("জাগৃতি প্রকাশনী"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/6.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "গল্পসমগ্র",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("সময় প্রকাশন"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/7.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "বস্টনের পথে",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("নালন্দা"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/8.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "শাহী এলাকার পথে পথে",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("নালন্দা"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/9.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "শরৎ প্রতিভা",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/10.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "অগ্নিস্নাত বঙ্গবন্ধুর"
                              "\nভস্মাচ্ছাদিত কন্যা"
                              "\nআমি",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("সময় প্রকাশন"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/11.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "সূর্যোদয় থেকে সূর্যাস্ত:"
                              "\nঅতপর কৃষ্ণান্ধকারসূর্যোদয়"
                              "\nথেকে সূর্যাস্ত:"
                              "\nঅতপর কৃষ্ণান্ধকার",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("আগামী প্রকাশনী"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/12.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "রচনা সমগ্র-১",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text("সময় প্রকাশন"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/13.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "বাংলার কবি মধুসুদন",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/14.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "বাংলার নাটক উৎসওধার",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/15.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "শতাব্দীর অন্ধকারে",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/16.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভুমিকা",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/17.png'),
                            // const SizedBox(height: 30),
                            const Text(
                              "শাহী এলাকার পথে পথে",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Text("জাগৃতি প্রকাশনী"),
                          ],
                        ),
                      ),
                      // const SizedBox(width: 50),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('assets/images/18.png'),
                            const SizedBox(height: 30),
                            const Text(
                              "উনবিংশ শতাব্দীর বাঙ্গালী সমাজ ও বাংলা নাটক",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
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
            );
          }
        },
      ),
    );
  }
}
