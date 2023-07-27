import 'package:flutter/material.dart';

import '../../../../../../util/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: kBlack,
              size: 28,
            ),
          ),
          Text(title, style: TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 26)),
          trailing ?? const SizedBox(width: 28),
        ],
      ),
    );
  }
}
