import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/memories.dart';
import 'package:ni_last/english_pages/act.dart';
import 'package:ni_last/english_pages/cont.dart';
import 'package:ni_last/english_pages/gal.dart';
import 'package:ni_last/english_pages/li.dart';
import 'package:ni_last/english_pages/med.dart';


import '../homePage.dart';
import 'new.dart';
import 'pub.dart';

class Mem extends StatefulWidget {
  const Mem({super.key});

  @override
  State<Mem> createState() => _Mem();
}

class _Mem extends State<Mem> {
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
                    builder: (context) => const Memories(),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "REMEMBRANCE      ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "MY GRANDMOTHER",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text("ELORA KABIR"),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                  "My grandmother Neelima Ibrahim, has achieved things that are difficult for women, even today. It is probably greatly due to her that the children of this family, especially the women, grew up with an innate sense of their own abilities and talents. It was a remarkable achievement for her to accomplish all that she did. Having been born to a family who encouraged her to explore her talents was an advantage, but the constraints of Indian society must have still posed quite a challenge for her. To obtain a Ph.D, teach, raise a family and conduct a successful marriage at the same time seems an impossible achievement even to someone of my generation, especially given that of my generation do not live with the same social restrictions and are encouraged to achieve as much as they desire professionally. My grandmother has a tremendous hunger for travel and new challenges which astounded us all. From an early age I was very aware of her wide circle of friends from varied backgrounds and countries of her involvement in charitable concerns, her extensive work as playwright, author and teacher of the respect and admiration borne her by all around her. However, as her grandchild, to me, one thing outweighed all her professional achievements, that was her ability to make a ‘mosquito net for my dolls. My enduring memory of her will always be the attention she paid me, the times she took to explain anything I was curious about and most of all, how she would take the time and trouble to do something as simple as a mosquito net for my doll’s cot. Needless to say she did it perfectly.The world is fully capable of paying homage to her professional achievements. To those of us who were part of her personal life, it is her charm, warmth, brightness, intelligence and most of all love that endures."),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "MY GRANDMOTHER",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text("RESHAD NAZIR AHSAN"),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                  "Writing words to celebrate the life of a great person is always a difficult task. It is especially difficult to pick out and concentrate on one or two facets of a person who has had so many accomplishments. As I sit down now to write a few words on my grandmother, I am faced with the arduous task of trying to describe her achievements and her impact on me as a grandmother while at the same time keeping in mind the need for some form of brevity.Amongst all her incredible achievements, what amazed me the most about my Nanu was the awe-inspiring respect that she commanded from a wide variety of people. Starting from my school principal to my teachers and to random people at functions and dinner invitations, I have yet to hear of anyone whose words towards my Nanu weren’t laced with respect, admiration and reverence. I have always wondered what a great feeling it must have been for Nanu to receive such sincere adoration and respect wherevershe went. The most inspiring aspect of my Nanu’s life is the fact that it was not spent pursuing individual wealth and fame, but was devoted to a lifetime of public service and civic engagement. In a day and age where money and wealth can buy a person respect, where fame and fortune is more highly regarded than modesty and public service, Nanu’s renown is that much more astonishing. This is a woman who spent her entire life fighting for causes that she believed in. She was an active advocate of female rights in a patriarchal society. which even to this day remains somewhat hostile to that concept. She was a successful and respected columnist who dared to speak her mind and express opinions that contradicted the state’s position. Her professional successes are even more amazing given the fact that she lived during a time when it was commonly considered that a woman’s primary (and some would argue only) responsibility was to raise her family.For someone with 50 many professional accomplishments (teacher, author, columnist, social activist) Nanu will undoubtedly consider the job she has done in raising her five daughters as her greatest and proudest achievement. Despite the time consuming nature of her professional responsibilities she still had the time to raise a family. An example of long you believe in what you do, age needs her commitment to her family was displayed during every Eid, when irrespective of her health and age, she always managed to cook lunch by herself for the family. It is fitting that such a fiercely independent woman always refused to hire a servant and insisted instead to do the housework herself.In a life filled with achievements and accomplishments, Nanu has provided inspiration for a wide variety of people. As one of her grandchildren, I have also been touched by the star that is Neelima Ibrahim. She has shown me the importance of modesty, hard work and dedication. She has also displayed that as not be a barrier. She wrote columns even when she was physically unable to write in a straight line. She attended meetings and processions against the advice of her doctors and against the wishes of her family. Till her death she lived life to the fullest, did all that she wanted to do and never let age or physical weakness slow her down. Spending the formative years of my childhood in the company of this great woman has had an unimaginable impact on me. And although she has passed away. Nanu will continue to be a part of my life. and inspire what I do from this point on."),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "NANU",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text("ROWENA AHSAN"),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                  "As a child my grandmother was only Nanu, the one who made polao with kishmish and took me to awards ceremonies. I never could understand why everyone made such a big deal out of me at those programs. As I grew older, I realized it was because I was Dr. Neelima Ibrahim’s granddaughter. The Dr. Neelima Ibrahim. Gradually I learned more about her past and present achievements, and the more I learned, the more I realized that she was a woman who could do anything. The woman who I heard stories about, the one who has such an incredible history that we all know of, was the same woman who cooked for her grandchildren and took me to her house to spend the day every other Saturday. From her small apartment on Pioneer Road, she managed to operate more important tasks in a short time than a person can imagine achieving in their entire lives. She had what I call the superwoman tendency, the ability to lead an amazing professional life and care for her family at the same time. I see the same quality in my mother, and in all my aunts, and I hope someday I will inherit the trait.Amongst all her incredible achievements, what amazed me the most about my Nanu was the awe-inspiring respect that she commanded from a wide variety of people. Starting from my school principal to my teachers and to random people at functions and dinner invitations, I have yet to hear of anyone whose words towards my Nanu weren’t laced with respect, admiration and reverence. I have always wondered what a great feeling it must have been for Nanu to receive such sincere adoration and respect wherevershe went. The most inspiring aspect of my Nanu’s life is the fact that it was not spent pursuing individual wealth and fame, but was devoted to a lifetime of public service and civic engagement. In a day and age where money and wealth can buy a person respect, where fame and fortune is more highly regarded than modesty and public service, Nanu’s renown is that much more astonishing. This is a woman who spent her entire life fighting for causes that she believed in. She was an active advocate of female rights in a patriarchal society. which even to this day remains somewhat hostile to that concept. She was a successful and respected columnist who dared to speak her mind and express opinions that contradicted the state’s position. Her professional successes are even more amazing given the fact that she lived during a time when it was commonly considered that a woman’s primary (and some would argue only) responsibility was to raise her family.For someone with 50 many professional accomplishments (teacher, author, columnist, social activist) Nanu will undoubtedly consider the job she has done in raising her five daughters as her greatest and proudest achievement. Despite the time consuming nature of her professional responsibilities she still had the time to raise a family. An example of long you believe in what you do, age needs her commitment to her family was displayed during every Eid, when irrespective of her health and age, she always managed to cook lunch by herself for the family. It is fitting that such a fiercely independent woman always refused to hire a servant and insisted instead to do the housework herself.In a life filled with achievements and accomplishments, Nanu has provided inspiration for a wide variety of people. As one of her grandchildren, I have also been touched by the star that is Neelima Ibrahim. She has shown me the importance of modesty, hard work and dedication. She has also displayed that as not be a barrier. She wrote columns even when she was physically unable to write in a straight line. She attended meetings and processions against the advice of her doctors and against the wishes of her family. Till her death she lived life to the fullest, did all that she wanted to do and never let age or physical weakness slow her down. Spending the formative years of my childhood in the company of this great woman has had an unimaginable impact on me. And although she has passed away. Nanu will continue to be a part of my life. and inspire what I do from this point on."),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "NANU",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text("AHMED RAIHAN"),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50),
              child: Text(
                  "The name Dr. Neelima Ibrahim signifies a lot to me. Not only is she a wonderful and adorable grandparent but also an outstanding achiever and an enchanting personality. Being one of the leading educationists in the country for over decades, she was regarded by all as a very well accomplished lady with an exceptional personality.Nanu would always love to keep herself occupied with her work like a typical workaholic and therefore continued on with all her work long after her retirement. She represented several leading ‘Women Development organizations in the country and she also assisted innumerable other women development causes.My grandfather, Nanabhai, another wonderful and enchanting personality, had always taken excellent care of Nanu all throughout her married life. Not only is he very affectionate but also a man of principles. Had it not been for both my grandparents, valuable advice and suggestions most of us in the family would have been able to take such successful decisions and become established in life. Nanabhai provided Nanu with all the care and attention she required during her old age and for that we all are extremely grateful to him.It’s been one entire year since we have all lost Nanu from amongst us, but to tell the truth she has always been with us in our hearts. We have only been missing her physical appearance, but she still lives amongst us.At this point in time, I only hope that the Almighty grants her eternal peace and sends her to heaven. For such a kind and wonderful personality as she was, she certainly does deserve to go to heaven. Nanu has always been a tremendous help to innumerable people and I believe that with all their well wishes and blessings she will certainly rest in peace.However, as family members, I only wish that her blessings are always with us and although she can never again grace us with her presence, she will always live in our hearts forever.Amongst all her incredible achievements, what amazed me the most about my Nanu was the awe-inspiring respect that she commanded from a wide variety of people. Starting from my school principal to my teachers and to random people at functions and dinner invitations, I have yet to hear of anyone whose words towards my Nanu weren’t laced with respect, admiration and reverence. I have always wondered what a great feeling it must have been for Nanu to receive such sincere adoration and respect wherevershe went. The most inspiring aspect of my Nanu’s life is the fact that it was not spent pursuing individual wealth and fame, but was devoted to a lifetime of public service and civic engagement. In a day and age where money and wealth can buy a person respect, where fame and fortune is more highly regarded than modesty and public service, Nanu’s renown is that much more astonishing. This is a woman who spent her entire life fighting for causes that she believed in. She was an active advocate of female rights in a patriarchal society. which even to this day remains somewhat hostile to that concept. She was a successful and respected columnist who dared to speak her mind and express opinions that contradicted the state’s position. Her professional successes are even more amazing given the fact that she lived during a time when it was commonly considered that a woman’s primary (and some would argue only) responsibility was to raise her family.For someone with 50 many professional accomplishments (teacher, author, columnist, social activist) Nanu will undoubtedly consider the job she has done in raising her five daughters as her greatest and proudest achievement. Despite the time consuming nature of her professional responsibilities she still had the time to raise a family. An example of long you believe in what you do, age needs her commitment to her family was displayed during every Eid, when irrespective of her health and age, she always managed to cook lunch by herself for the family. It is fitting that such a fiercely independent woman always refused to hire a servant and insisted instead to do the housework herself.In a life filled with achievements and accomplishments, Nanu has provided inspiration for a wide variety of people. As one of her grandchildren, I have also been touched by the star that is Neelima Ibrahim. She has shown me the importance of modesty, hard work and dedication. She has also displayed that as not be a barrier. She wrote columns even when she was physically unable to write in a straight line. She attended meetings and processions against the advice of her doctors and against the wishes of her family. Till her death she lived life to the fullest, did all that she wanted to do and never let age or physical weakness slow her down. Spending the formative years of my childhood in the company of this great woman has had an unimaginable impact on me. And although she has passed away. Nanu will continue to be a part of my life. and inspire what I do from this point on."),
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
