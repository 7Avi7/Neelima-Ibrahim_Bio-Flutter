import 'package:flutter/material.dart';
import 'package:ni_last/english_pages/new.dart';


import '../homePage.dart';
import 'activities.dart';
import 'contact.dart';
import 'gallery.dart';
import 'lifeStoryPage.dart';
import 'media.dart';
import 'memories.dart';
import 'publish.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _News();
}

class _News extends State<News> {
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
      appBar: AppBar(
        toolbarHeight: 100,
        // leading: mobile ? null : Row(children: appBarItem),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const New(),
                  ),
                );
              },
              child: Text("English   "))
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
                  "সমাচার      ",
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
                  'সাহিত্যকর্মের জন্য নীলিমা ইব্রাহিম রাষ্ট্রীয় স্বীকৃতিসহ অনেক পদক ও পুরস্কারে ভূষিত হন। উল্লেখযোগ্য যে-সব পদক ও পুরস্কার তিনি লাভ করেন নিচে তার তালিকা প্রদত্ত হল-'),
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
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'নীলিমা ইব্রাহিমের সাহিত্যকর্ম দু’পর্বে বিভক্ত। সৃষ্টিশীল রচনা এবং প্রবন্ধ-গবেষণা। তবে প্রবন্ধ- গবেষণাই তার সাহিত্যিক পরিচয়ের প্রধান ভিত্তি। ‘শরৎ-প্রতিভা’ নীলিমা ইব্রাহিমের প্রথম গবেষণাগ্রন্থ। এই গ্রন্থে নীলিমা ইব্রাহিম শরৎ-কথাসাহিত্যের বিষয় ও শিল্পরূপ বিবেচনা করেছেন। শরৎসাহিত্য নীলিমা ইব্রাহিমের কাছে ছিল আবেগের উপকরণ। ব্যক্তিগত অভিজ্ঞতা ও শরৎসাহিত্যের মাঝে তিনি খুঁজে পেয়েছেন নিবিড় এক আন্তঃসম্পর্ক। প্রসঙ্গত সারণীয় তাঁর অভিমত— “বাড়ির বড় বৌ অর্থাৎ বড় মা শরৎচন্দ্রের উপন্যাস পড়তেন সন্ধ্যার পর তার সরকর্মের অবসরের ফাঁকে। কাকীমারা এবং পিসিমা একান্ত মনোযোগ দিয়ে শুনতেন আর মাঝে মাঝে আঁচলে চোখ মুছতেন। সেই সাহিত্যের আসরে আমার না-বোঝা মনে শরৎ-সাহিত্য কী যে এক অভিনব ছাপ এঁকে দিল, বাকি জীবন সেই সাহিত্য- রস গ্রহণের চেষ্টাতেই কেটে গেল। তাছাড়া শরৎ সাহিত্যকে ভাল লাগার আরো বড় কারণ ছিল এই যে, জ্যাঠাইমা সিদ্ধেশ্বরী, সেজদি মৃণাল এদের সংস্পর্শ আমার জীবনে সার্থক বাস্তব চরিত্রের মধ্য দিয়েই আমি পেয়েছি। তাই শরৎচন্দ্র আমার কাছে অনেকাংশে বাস্তব স্রষ্টা । “'),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  '‘বাংলার কবি মধুসূদন’ গ্রন্থে নীলিমা ইব্রাহিম মাইকেল মধুসূদন দত্তের কবিমানসের বাঙালি-সত্তা বিশ্লেষণ করেছেন এবং ওই দৃষ্টিকোণে বিবেচনা করেছেন মধুসূদনের কাব্যসমূহ। ‘বেগম রোকেয়া’ গ্রন্থে বেগম রোকেয়ার সমাজসংস্কারধর্মী কর্মকাণ্ড এবং তার সাহিত্যকর্ম সংক্ষিপ্ত পরিসরে আলোচিত হয়েছে। বেগম রোকেয়ার নারী-উন্নয়ন কর্মকাণ্ড দ্বারা নীলিমা ইব্রাহিম গভীরভাবে প্রভাবিত হয়েছেন। উত্তরকালে তিনিও বেগম রোকেয়ার আদর্শ অনুসরণ করে নারী- উন্নয়ন কর্মকাণ্ডে নিজের সকল শক্তি নিয়োজিত করেন। নীলিমা ইব্রাহিমের সৃষ্টিশীল রচনার মধ্যে তাঁর এই নারীবাদী চিন্তার পরিচয় বিধৃত।'),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'বাংলা নাটক নিয়ে গবেষণা করে নীলিমা ইব্রাহিম বিশেষ কৃতিত্বের পরিচয় দিয়েছেন। পূবেই বলা হয়েছে ১৯৫৯ সালে ঢাকা বিশ্ববিদ্যালয় থেকে “সামাজিক ও রাজনৈতিক পটভূমিকায় ঊনবিংশ শতাব্দীর বাংলা নাটক বিষয়ে গবেষণা করে তিনি পিএইচ. ডি. ডিগ্রী অর্জন করেন। ড. নীলিমা ইব্রাহিমের এই পিএইচ. ডি. অভিসন্দর্ভেরই গ্রন্থরূপ *ঊনবিংশ শতাব্দীর বাঙালী সমাজ ও বাংলা নাটক’। এ গ্রন্থে প্রথমত ব্যাখ্যা করা হয়েছে উনিশ শতকের বাঙালী সমাজের নানামাত্রিক প্রবণতা—অতঃপর বিশ্লেষিত হয়েছে নাটক রচনার সামাজিক পটভূমি এবং নাটকে প্রতিফলিত উনিশ শতকের সমাজচিত্র। উনিশ শতকের নাটকসমূহকে গবেষক যে ভাবে শ্রেণীবদ্ধ করেছেন, তা থেকে আলোচ্য গ্রন্থের মৌলচরিত্র সম্পর্কে ধারণা লাভ সম্ভব। তার শ্রেণীকরণ নিম্নরূপ- ‘কৌলিন্য প্রথা ও বহুবিবাহ, সম্বন্ধীয় নাটক’, ‘ইংরেজী শিক্ষার ব্যাপারে মদ্যপানাসক্তি ও তার প্রতিকারকল্পে রচিত নাটক” “জাতীয়তাবাদ প্রচারমূলক নাটক’, “নারীকল্যাণ কামনায় রচিত নাটক’, ‘ধর্মমূলক নাটক’ এবং “বিভিন্ন সমস্যা সম্পর্কে রচিত নাটক’।'),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'বাংলা নাটক সম্পর্কে নীলিমা ইব্রাহিমের দ্বিতীয় গ্রন্থ ‘বাংলা নাটক: উৎস ও ধারা’। এ গ্রন্থে নীলিমা ইব্রাহিম বাংলা নাটকের পূর্ণাঙ্গ ইতিহাস রচনার প্রয়াস পেয়েছেন। সামাজিক দৃষ্টিভঙ্গিই নীলিমা ইব্রাহিমের নাটক বিশ্লেষণের প্রধান বৈশিষ্ট্য।'),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'নীলিমা ইব্রাহিমের প্রবন্ধ গ্রন্থের সংখ্যা  দুই—’বাঙালীমানস বাংলা সাহিত্য’ এবং সাহিত্য-সংস্কৃতির নানা প্রসঙ্গ’। উভয় গ্রন্থে বাংলা সাহিত্যের কতিপয় উল্লেখযোগ্য বিষয় নিয়ে আলোচনা সন্নিবেশিত হয়েছে। প্রথম গ্রন্থে অন্তর্ভুক্ত প্রবন্ধসমূহ হচ্ছে‘চতুৰ্দ্দশপদী কবিতাবলী’, ‘রবীন্দ্রনাথের “জাতীয়তাবোধ’, ‘তিন নারী বিনোদিনী, নন্দিনী ও কুমুদিনী’, ‘শরৎ-সাহিত্য পাঠের ভূমিকা’, ‘নজরুলের উপন্যাস’, ‘রোহিণী, বিনোদিনী ও কিরণময়ী”, “ওমর খৈয়ামের জীবনদর্শন ও নজরুল-মানস’ এবং “জাতীয়তাবাদ প্রচারমূলক নাটক; আর দ্বিতীয় গ্রন্থে আছে— ‘বাঙালী সংস্কৃতি’, ‘প্রাচীন মধ্যযুগের সাহিত্য পাঠের ‘ভূমিকা’, ‘উত্তরকাব্যে ও আদি বৌদ্ধগান ও দোহার প্রভাব’, ‘শ্রীকৃষ্ণ কীর্তন কাব্যের সাহিত্যমূল্য’, ‘রাধাচন্দ্রাবলী থেকে শ্রীরাধিকা”, *মুকন্দরামের কাব্যে শ্রেণীচরিত্র’ ‘স্বাধীকার-প্রমত্ত নারী ও বাংলা সাহিত্যের একটি অধ্যায়’, ‘বস্তি উপন্যাসে রঙ্গরস’ এবং ‘চিত্ত-সত্তার বুদ্ধদেব বসু। নামকরণ থেকেই প্রবন্ধগুচ্ছের মৌলবিষয় সম্পর্কে ধারণা পাওয়া যায়। ভাষার নীলিমা ইব্রাহিমের প্রবন্ধসাহিত্যের বিশিষ্ট লক্ষণ। কোন কোন প্রবন্ধে বর্তমান। তুলনামূলক সাহিত্য বিবেচনার স্বাক্ষর নীলিমা ইব্রাহিমের সৃষ্টিশীল রচনার মধ্যে আছে ছোটগল্প, উপন্যাস, কথানাট্য, ভ্রমণকাহিনী, আত্মজীবনী ইত্যাদি। তাঁর কথাসাহিত্য ও নাটকে নারীজীবনের বহুমাত্রিক চিত্র-রূপায়ণই প্রাধান্য বিস্তার করেছে। ‘আমি বীরাঙ্গনা বলছি’ শীর্ষক কথানাট্যটি নীলিমা ইব্রাহিমের অসামান্য নির্মাণ। এ-গ্রন্থে উনিশশ’ একাত্তর সালে পাকিস্তানি হানদার বাহিনীর ক্যাম্পে বন্দিনী নারীদের জীবনযন্ত্রণার কথা মর্মস্পর্শী ভাষায় শিল্পরূপ লাভ করেছে।'),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                  'সম্পাদক হিসেবেও নীলিমা ইব্রাহিম বিশেষ কৃতিত্বের পরিচয় দিয়েছেন। ঢাকা বিশ্ববিদ্যালয় প্রকাশিত ‘সাহিত্য পত্রিকার তিনটি সংখ্যার সম্পাদকের দায়িত্ব তিনি পালন করেছেন। বস্তু চণ্ডীদাসের শ্রীকৃষ কীর্তন কাব্য’ তিনি সম্পাদনা করেছে, সম্পাদনা করেছেন রবীন্দ্রনাথের ‘কিশোর রচনাসমগ্র’। কেবল সাহিত্য নয়, রাজনীতি বিষয়েও তিনি রচনা করেছেন একাধিক গ্রন্থ। এ ক্ষেত্রে তাঁর উল্লেখযোগ্য গ্রন্থগুলো হচ্ছে—’সূর্যোদয় থেকে সূর্যাস্ত অতঃপর অমানিশার অন্ধকার’ (১৯৯৫), ‘অগ্নিস্নাত বঙ্গবন্ধুর ভস্মাচ্ছাদিত কন্যা আমি’ (১৯৯৫), ‘বেগম ফজিলাতুন্নেসা মুজিব’ (১৯৯৬) ইত্যাদি । উল্লিখিত গ্রন্থ ছাড়াও তার আরো অনেক রচনা অগ্রন্থিত অবস্থায় বিভিন্ন পত্রিকায় ছড়িয়ে আছে।'),
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
