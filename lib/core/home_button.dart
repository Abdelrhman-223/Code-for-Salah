import 'package:code_for_salah/main.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },
      child: Container(
        color: AppColor().mainColor,
        height: 60,
        width: double.infinity,
        child: const Icon(
          Icons.home_outlined,
          size: 40,
        ),
      ),
    );
  }
}
