import 'package:flutter/material.dart';
import 'package:ni_last/bangla_pages/media.dart';
import 'package:ni_last/bangla_pages/publish.dart';
import 'package:ni_last/english_pages/cont.dart';


import '../homePage.dart';
import 'activities.dart';
import 'gallery.dart';
import 'lifeStoryPage.dart';
import 'memories.dart';
import 'news.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _Contact();
}

class _Contact extends State<Contact> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  bool isChecked_one = false;
  bool isChecked_two = false;

  String? validate_Email(value) {
    if (value!.isEmpty) {
      return 'Please Enter an Email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid Email';
    }
    return null;
  }

  String? validate_text(value) {
    if (value!.isEmpty) {
      return 'Please Complete Field';
    }

    return null;
  }

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
                    builder: (context) => const Cont(),
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
                        "যোগাযোগ      ",
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
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Name*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Your Name*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: nameController,
                                  validator: (value) => validate_text(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Email*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Your Email*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: emailController,
                                  validator: (value) => validate_Email(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 500,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Subject*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Subject*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: subjectController,
                                  validator: (value) => validate_text(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 700,
                                child: TextFormField(
                                  // cursorOpacityAnimates: true,
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Message*',
                                          // "Name",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Message*',
                                    isDense: true,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 300),
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: messageController,
                                  validator: (value) => validate_text(value),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("  Privacy Note *"),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked_one,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked_one = value!;
                                      });
                                    },
                                  ),
                                  const Flexible(
                                    child: Text(
                                        '\nBy submitting this form you agree to the Privacy Policy of this website and the storing of the submitted information.'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Checkbox(
                                      value: isChecked_two,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_two = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Flexible(
                                      child: const Text(
                                          'Send a copy to yourself')),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.red,
                                  side: const BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                  ),
                                  elevation: 4,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blue,

                                  // minimumSize: const Size(double.infinity, 10),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () async {},
                                child: const Text(
                                  "সেন্ড",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                  const SizedBox(
                    height: 50,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "যোগাযোগ      ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Name*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Your Name*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: nameController,
                                  validator: (value) => validate_text(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Email*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Your Email*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: emailController,
                                  validator: (value) => validate_Email(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 500,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Subject*',
                                          // "Name",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    // labelText: 'Name',
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Subject*',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    // prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: subjectController,
                                  validator: (value) => validate_text(value!),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 700,
                                child: TextFormField(
                                  // cursorOpacityAnimates: true,
                                  decoration: InputDecoration(
                                    label: const Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Text(
                                          'Message*',
                                          // "Name",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    alignLabelWithHint: true,
                                    hintText: 'Please Enter Message*',
                                    isDense: true,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 300),
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    prefixIconColor: Colors.blueAccent,
                                    filled: true,
                                    fillColor: Colors.white10,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.green,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 4.5,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.indigoAccent,
                                        width: 2.0,
                                        style: BorderStyle.solid,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  controller: messageController,
                                  validator: (value) => validate_text(value),
                                  textAlignVertical: TextAlignVertical.top,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text("  Privacy Note *"),
                              const SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked_one,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked_one = value!;
                                      });
                                    },
                                  ),
                                  const Flexible(
                                    child: Text(
                                        '\nBy submitting this form you agree to the Privacy Policy of this website and the storing of the submitted information.'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Checkbox(
                                      value: isChecked_two,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked_two = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Flexible(
                                      child: const Text(
                                          'Send a copy to yourself')),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.red,
                                  side: const BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                  ),
                                  elevation: 4,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.blue,

                                  // minimumSize: const Size(double.infinity, 10),

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () async {},
                                child: const Text(
                                  "সেন্ড",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
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
