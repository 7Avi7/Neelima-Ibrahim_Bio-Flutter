import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/news.dart';


import '../homePage.dart';
import 'act.dart';
import 'cont.dart';
import 'gal.dart';
import 'li.dart';
import 'med.dart';
import 'mem.dart';
import 'pub.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _New();
}

class _New extends State<New> {
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
                    builder: (context) => const News(),
                  ),
                );
              },
              child: Text("বাংলা   "))
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "News      ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'Neelima Ibrahim was awarded many medals and awards including national recognition for her literary work. Below is the list of notable medals and awards she received:'),
            ),
            const Text('১.প্রবন্ধ-গবেষণার জন্য বাংলা একাডেমী পুরস্কার,(১৯৬৯)'),
            const SizedBox(
              height: 10,
            ),
            const Text('২.জয়বাংলা পুরস্কার (ভারত, ১৯৭৩),'),
            const SizedBox(
              height: 10,
            ),
            const Text('৩. মাইকেল মধুসুদন পুরস্কার (১৯৮৭),'),
            const SizedBox(
              height: 10,
            ),
            const Text('৪. লেখিকা সংঘ পুরস্কার (১৯৮১),'),
            SizedBox(
              height: 10,
            ),
            const Text('৫. বিচারপতি আবু সাঈদ চৌধুরী স্মৃতিপদক (১৯৯০),'),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                  '৬. মুহম্মদ নাসিরউদ্দিন স্বর্ণপদক (১৯৯২), অনন্যা সাহিত্য পুরস্কার (১৯৯৬),'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('৭. বেগম রোকেয়া পদক (১৯৯৬),'),
            const SizedBox(
              height: 10,
            ),
            const Text('৮. বঙ্গবন্ধু পুরস্কার (১৯৯৭),'),
            const SizedBox(
              height: 10,
            ),
            Text('৯. শের-এ বাংলা পুরস্কার (১৯৯৭),'),
            SizedBox(
              height: 10,
            ),
            Text('১০ থিয়েটার সম্মাননা পদক (১৯৯৮),'),
            SizedBox(
              height: 10,
            ),
            Text('১১. একুশে পদক (২০০০)।'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50, top: 50),
              child: Text(
                  "Neelima Ibrahim’s literary work is divided into two parts. Creative writing and research essays. But essay-research is the main basis of her literary identity. ‘Sharat-pratibha(শরৎ-প্রতিভা)’ is Neelima Ibrahim’s first dissertation. In this book Neelima Ibrahim considers the subject and art form of Sharatfiction. Sharatsahitya was an emotional tool for Neelima Ibrahim. She found a close interrelationship between personal experience and ‘Sharat’ literature. In the context of the table, her opinion – “The eldest daughter of the house, that is, the eldest mother, used to read Saratchandra’s novels in the evenings during her retirement from government work. Aunties listened with rapt attention and occasionally wiped their eyes.In that literary session, I had a novel impression of what ‘Sharat’ literature was on my mind, and the rest of my life was spent trying to absorb that literature. Moreover, the bigger reason for liking Sharat literature was that I got contact with Jathaima Siddheswari, Sejdi Mrinal through real characters that were meaningful in my life. So Saratchandra is a real creator to me. ”"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50, top: 50),
              child: Text(
                  "In ‘বাংলার কবি মধুসূদন’, Neelima Ibrahim analyzes the Bengali-essence of Michael Madhusudan Dutt’s poetries and considers Madhusudan’s poems from same perspective. Begum Rokeya’s social reform activities and her literary works are briefly discussed in the book ‘বেগম রোকেয়া’. Neelima Ibrahim was deeply impressed by Begum Rokeya’s women-development activities. Later, she also followed the ideals of Begum Rokeya and engaged all her energies in women’s development activities. Neelima Ebrahim’s creative works reflect her feminist thought."),
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
      ),
    );
  }
}
