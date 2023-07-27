import 'package:flutter/material.dart';

class OnbordingContent {
  String title;
  String discription;

  OnbordingContent({required this.title, required this.discription});
}

class help extends StatefulWidget{
  @override
  State<help> createState() => _help();
}

class _help extends State<help> {

  int currentIndex = 0;

  List<OnbordingContent> contents = [
    OnbordingContent(
        title: 'How to use this app?',
        discription: "This program depends entirely on entering the correct information, it analyzes that information "
            "and based on it identifies the type of disease and gives you a brief overview of it.\n\n"
            "1- After creating an account, you must go to the user profile to complete your data.\n\n"
            "2- Then from the main page, you choose the category based on the nature or type of data you will enter (images, analysis ratios, or specific symptoms).\n\n"
            "3- Upon confirmation, the result will appear to you and you can save it in the history page through the download button.\n\n"
    ),
    OnbordingContent(
        title: 'Does it replace doctors?',
        discription: "No, absolutely not!\n"
            "On the contrary, it only helps you to know what you have "
            "in order to determine the medical specialty that you should book"
    ),
    OnbordingContent(
        title: 'Can it help detect cancer diseases?',
        discription: "Till now it can only predict more common diseases "
            "that isn't much deep like cancer as it needs more detailed patient medical information "
    ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(40, 250, 40, 0),
                  child: Column(
                    children: [
                      Text(
                        contents[i].title,
                        style: const TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
                  (index) => buildDot(index, context),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}