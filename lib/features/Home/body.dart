import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../slider_screen.dart';

List imagelist = [
  {"id": 1, "image_path": 'assets/banner.png'},
  {"id": 2, "image_path": 'assets/ff2082f2112ca7bebb4077ca029fd53c.png'}
];

class body extends StatelessWidget {
  final kpadding = 22.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hello 👋🏻,',
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: const Color(0xFFf5f6f8),
                filled: true,
                hintStyle: GoogleFonts.roboto(
                  color: const Color(0xFF72809d),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: const Icon(Icons.search_rounded),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SliderScreen(),
          ],
        ),
      ),
    );
  }
}
