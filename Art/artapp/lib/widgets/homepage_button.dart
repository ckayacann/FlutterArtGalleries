import 'package:artapp/screens/explore.dart';
import 'package:flutter/material.dart';

import '../constans/fonts.dart';

class HomepageButton extends StatelessWidget {
  final String title;
  const HomepageButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: OutlinedButton.icon(
        style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 191, 133, 52)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Explore(),
              ));
        },
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Text(
            title,
            style: homepageButton,
          ),
        ),
        icon: const Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
