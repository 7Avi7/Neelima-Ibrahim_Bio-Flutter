import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/activities.dart';
import 'package:ni_last/english_pages/cont.dart';
import 'package:ni_last/english_pages/gal.dart';
import 'package:ni_last/english_pages/li.dart';
import 'package:ni_last/english_pages/med.dart';
import 'package:ni_last/english_pages/mem.dart';
import 'package:ni_last/homePage.dart';


import 'new.dart';
import 'pub.dart';

class Act extends StatefulWidget {
  const Act({super.key});

  @override
  State<Act> createState() => _Act();
}

class _Act extends State<Act> {
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
                    builder: (context) => const Activities(),
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
                        "ACTIVITIES      ",
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
                  const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Works",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Non-fiction",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Sharat-Pratibha (The Creative Faculty of Sharatchanda),1960,Banglar Kavi Madhusudan (Madhushudan, the Poet of Bengal), 1961,Unabingsha Shatabdir Bangali Samaj o Bangla Natak (Bengali Society and Bengali Drama in the 19th century), 1964,Bangla Natak: Utsa o Dhara (Bengali Drama: Origin and Development), 1972,Begum Rokeya, 1974,Bangalimanas o Bangla Sahitya (Bengali Mentality and Bengali Literature), 1987,Sahitya-Sangskrtir Nana Prasanga (Various Aspects of Literature and Culture), 1991"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Fiction",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Bish Shataker Meye (Girl of the Twentieth Century), 1958,Ek Path Dui Bank (The Forked Road), 1958,Keyabana Sancharini (Traveller of Keya Forest), 1958, Banhi Balay (The Bangle of Fire), 1985"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Plays",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Due Due Char (Two and Two Make Four), 1964,Je Aranye Alo Nei (The Dark Forest), 1974,Rodjwala Bikel (The Sunburnt Afternoon), 1974, Suryaster Par (After Sunset), 1974"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Short stories",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Ramna Parke (At Ramna Park), 1964"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Translations",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Eleanor Roosevelt, 1955,Kathashilpi James Fenimor Cooper (Storyteller James Fenimore Cooper), 1968,Bostoner Pathe Pathe (On the Streets of Boston), 1969"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Travelogue",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Shahi Elakar Pathe Pathe (Along the Royal Streets), 1963"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Autobiography",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Bindu-Bisarga (Dot and Ghost), 1991"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Narratives/Ethnography",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Ami Birangana Bolchhi (I, the Heroine, Speaks), 1996'),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "AWARDS",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("1) Bangla Academy Literary Award (1969)"),
                        Text("2) Michael Madhusudan Award (1987)"),
                        Text("3) Lekhika Sangha Award (1989)"),
                        Text("4) Anannya Literature Award (1996)"),
                        Text("5) Begum Rokeya Padak (1996)"),
                        Text("6) Bangabandhu Award (1997)"),
                        Text("7) Ekushey Padak (2000)"),
                        Text("8) Independence Day Award ( 2001)")
                      ],
                    ),
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
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "ACTIVITIES      ",
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
                  const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Works",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Non-fiction",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Sharat-Pratibha (The Creative Faculty of Sharatchanda),1960,Banglar Kavi Madhusudan (Madhushudan, the Poet of Bengal), 1961,Unabingsha Shatabdir Bangali Samaj o Bangla Natak (Bengali Society and Bengali Drama in the 19th century), 1964,Bangla Natak: Utsa o Dhara (Bengali Drama: Origin and Development), 1972,Begum Rokeya, 1974,Bangalimanas o Bangla Sahitya (Bengali Mentality and Bengali Literature), 1987,Sahitya-Sangskrtir Nana Prasanga (Various Aspects of Literature and Culture), 1991"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Fiction",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Bish Shataker Meye (Girl of the Twentieth Century), 1958,Ek Path Dui Bank (The Forked Road), 1958,Keyabana Sancharini (Traveller of Keya Forest), 1958, Banhi Balay (The Bangle of Fire), 1985"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Plays",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Due Due Char (Two and Two Make Four), 1964,Je Aranye Alo Nei (The Dark Forest), 1974,Rodjwala Bikel (The Sunburnt Afternoon), 1974, Suryaster Par (After Sunset), 1974"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Short stories",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Ramna Parke (At Ramna Park), 1964"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Translations",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Eleanor Roosevelt, 1955,Kathashilpi James Fenimor Cooper (Storyteller James Fenimore Cooper), 1968,Bostoner Pathe Pathe (On the Streets of Boston), 1969"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Travelogue",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Shahi Elakar Pathe Pathe (Along the Royal Streets), 1963"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Autobiography",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Bindu-Bisarga (Dot and Ghost), 1991"),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Narratives/Ethnography",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Ami Birangana Bolchhi (I, the Heroine, Speaks), 1996'),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "AWARDS",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("1) Bangla Academy Literary Award (1969)"),
                        Text("2) Michael Madhusudan Award (1987)"),
                        Text("3) Lekhika Sangha Award (1989)"),
                        Text("4) Anannya Literature Award (1996)"),
                        Text("5) Begum Rokeya Padak (1996)"),
                        Text("6) Bangabandhu Award (1997)"),
                        Text("7) Ekushey Padak (2000)"),
                        Text("8) Independence Day Award ( 2001)")
                      ],
                    ),
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
