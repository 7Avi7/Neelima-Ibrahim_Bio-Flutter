import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/activities.dart';
import 'package:ni_last/bangla_pages/contact.dart';
import 'package:ni_last/bangla_pages/gallery.dart';
import 'package:ni_last/bangla_pages/media.dart';
import 'package:ni_last/bangla_pages/memories.dart';
import 'package:ni_last/bangla_pages/news.dart';
import 'package:ni_last/bangla_pages/publish.dart';


import '../bangla_pages/lifeStoryPage.dart';
import 'player3.dart';

class YouTube2 extends StatefulWidget {
  const YouTube2({super.key});

  @override
  State<YouTube2> createState() => _YouTube2State();
}

class _YouTube2State extends State<YouTube2> {
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
    return Scaffold(
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
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       "মিডিয়া      ",
                  //       style: TextStyle(
                  //         color: Colors.blueAccent,
                  //         fontSize: 16,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: PlayerWidget3(),
                  ),
                  SizedBox(
                    height: 350,
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
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       "মিডিয়া      ",
                  //       style: TextStyle(
                  //         color: Colors.blueAccent,
                  //         fontSize: 16,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200.0, right: 200.0),
                    child: PlayerWidget3(),
                  ),
                  SizedBox(
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
          }
        },
      ),
    );
  }
}
