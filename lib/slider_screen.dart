import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:untitled1/skindetect2.dart';
import 'package:untitled1/symptoms.dart';
import 'package:untitled1/test_file.dart';
import 'features/Home/widegts/bloodTest1.dart';
import 'features/Home/skin_disease/presnention/views/skindetect.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  //SliderScreen({this.imgList});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/virusC.png'},
    {"id": 2, "image_path": 'assets/Cancer.jpeg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          width: double.infinity,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            onPageChanged: (int index) {
              if (index == imageList.length - 1) {
                setState(() {});
              } else {
                setState(() {});
              }
            },
            controller: pageController,
            itemBuilder: (context, index) => Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
              child: imageListItem(imagePath: imageList[index]["image_path"]),
            ),
            itemCount: imageList.length,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            textDirection: TextDirection.ltr,
            controller: pageController,
            count: imageList.length,
            effect: const ExpandingDotsEffect(
                dotWidth: 12.0,
                dotHeight: 8.0,
                dotColor: Color(0xFFd9e4e8),
                activeDotColor: Color(0xFF002ddc),
                radius: 20.0,
                spacing: 15,
                expansionFactor: 2,
                offset: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Specializations',
          style: GoogleFonts.roboto(
              color: const Color(0xFF000000),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
               onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => skindetect()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icons8-skin-cancer-64.svg'),
                        Text(
                          'Skin Disease',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => bloodTest1()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/123516220016355716314564.svg'),
                        Text(
                          'Blood Test',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => symptoms()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                            'assets/5991423_allergy_coronavirus_covid-19_flu_illness_icon.svg'),
                        Text(
                          'Symptoms',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget imageListItem({required String imagePath}) {
    return Column(
      // fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          height: 150,
          // fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 0,
          // padding: const EdgeInsets.all(12),
          // margin: const EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start with us',
                maxLines: 2,
                style: GoogleFonts.roboto(
                    color: const Color(0xFF000000),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Discover',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF0008c1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}