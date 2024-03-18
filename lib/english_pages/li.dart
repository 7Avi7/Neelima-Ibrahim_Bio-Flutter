import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/lifeStoryPage.dart';
import 'package:ni_last/english_pages/act.dart';
import 'package:ni_last/widgets/player.dart';


import '../homePage.dart';
import 'cont.dart';
import 'gal.dart';
import 'med.dart';
import 'mem.dart';
import 'new.dart';
import 'pub.dart';

class Li extends StatefulWidget {
  const Li({super.key});

  @override
  State<Li> createState() => _Li();
}

class _Li extends State<Li> {
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
                    builder: (context) => const LifeStoryPage(),
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
                        "Life Story      ",
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
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      child: SlideInLeft(
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 50.0, right: 50),
                          child: Text(
                              " Neelima Ibrahim (11 October 1921 – 18 June 2002) was a Bangladeshi educationist, littérateur and social worker. She is well known for her scholarship on Bengali literature but even more so for her depiction of raped and tortured women in the 1971 Bangladesh Liberation War in her book Ami Birangana Bolchi. She was awarded Bangla Academy Literary Award in 1969, Begum Rokeya Padak in 1996 and Ekushey Padak in 2000 by the Government of Bangladesh for her contributions to Bangla literature."),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: PlayerWidget(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "EARLY LIFE AND EDUCATION",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50),
                    child: Text(
                        "Neelima was born on 11 October 1921 in Bagerhat, Khulna to Zamindar Prafulla Roy Chowdhury and Kusum Kumari Devi. Ibrahim passed her school leaving examination and entrance level examinations from the Khulna Coronation Girls’ School in 1937 and from the Victoria Institution in Calcutta in 1939. Later she earned bachelor’s degrees in arts and teaching from the Scottish Church College, which was followed by an MA in Bengali literature from the University of Calcutta in 1943. She would also earn a doctorate in Bengali literature from the University of Dhaka in 1959."),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "CAREER",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50),
                    child: Text(
                        "Neelima was a career academic. She taught in respectively the Khulna Coronation Girls’ School, Loreto House, the Victoria Institution, and finally at the University of Dhaka, where she was appointed as a lecturer in 1956, and as a professor of Bengali in 1972. She also served as the chairperson of the Bangla Academy, and as the Vice Chairperson of the World Women’s Federation’s South Asian Zone.In 1972, after the Bangladesh Liberation War, Ibrahim worked at centers set up to rehabilitate women who had been raped during the conflict. Such women were accorded the title Birangona (war heroine) by the Government of Bangladesh, but this did not prevent them from being stigmatized. Appalled by newspaper accounts that some victims of sexual violence preferred to be sent to prisoner of war camps in India with their Pakistani rapists, rather than endure familial rejection and social scorn in Bangladesh, Ibrahim was moved to interview them.She published a collection of seven of these first-person narratives in her two-volume Ami Birangona Bolchi (The Voices of War Heroines) in 1994 and 1995. Social anthropologist Nayanika Mookherjee writes that, “The text suggests that … ‘traditional, backward Islamic norms’ cause the rejection of raped women and contribute to their trauma. “Bangladeshi academic Firdous Azim describes the book as “path-breaking” and “an integral part of a feminist historicizing of the war of liberation in Bangladesh."),
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
                        "Life Story      ",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SizedBox(
                          child: SlideInLeft(
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.contain,
                              width: 300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Flexible(
                        child: Text(
                            " Neelima Ibrahim (11 October 1921 – 18 June 2002) was a Bangladeshi educationist, littérateur and social worker. She is well known for her scholarship on Bengali literature but even more so for her depiction of raped and tortured women in the 1971 Bangladesh Liberation War in her book Ami Birangana Bolchi. She was awarded Bangla Academy Literary Award in 1969, Begum Rokeya Padak in 1996 and Ekushey Padak in 2000 by the Government of Bangladesh for her contributions to Bangla literature."),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 200.0, right: 200.0),
                    child: PlayerWidget(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "EARLY LIFE AND EDUCATION",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50),
                    child: Text(
                        "Neelima was born on 11 October 1921 in Bagerhat, Khulna to Zamindar Prafulla Roy Chowdhury and Kusum Kumari Devi. Ibrahim passed her school leaving examination and entrance level examinations from the Khulna Coronation Girls’ School in 1937 and from the Victoria Institution in Calcutta in 1939. Later she earned bachelor’s degrees in arts and teaching from the Scottish Church College, which was followed by an MA in Bengali literature from the University of Calcutta in 1943. She would also earn a doctorate in Bengali literature from the University of Dhaka in 1959."),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "CAREER",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50),
                    child: Text(
                        "Neelima was a career academic. She taught in respectively the Khulna Coronation Girls’ School, Loreto House, the Victoria Institution, and finally at the University of Dhaka, where she was appointed as a lecturer in 1956, and as a professor of Bengali in 1972. She also served as the chairperson of the Bangla Academy, and as the Vice Chairperson of the World Women’s Federation’s South Asian Zone.In 1972, after the Bangladesh Liberation War, Ibrahim worked at centers set up to rehabilitate women who had been raped during the conflict. Such women were accorded the title Birangona (war heroine) by the Government of Bangladesh, but this did not prevent them from being stigmatized. Appalled by newspaper accounts that some victims of sexual violence preferred to be sent to prisoner of war camps in India with their Pakistani rapists, rather than endure familial rejection and social scorn in Bangladesh, Ibrahim was moved to interview them.She published a collection of seven of these first-person narratives in her two-volume Ami Birangona Bolchi (The Voices of War Heroines) in 1994 and 1995. Social anthropologist Nayanika Mookherjee writes that, “The text suggests that … ‘traditional, backward Islamic norms’ cause the rejection of raped women and contribute to their trauma. “Bangladeshi academic Firdous Azim describes the book as “path-breaking” and “an integral part of a feminist historicizing of the war of liberation in Bangladesh."),
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
          }
        },
      ),
    );
  }
}
