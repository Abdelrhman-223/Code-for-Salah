import 'package:flutter/material.dart';

import 'app_color.dart';

Widget customButton({
  required dynamic buttonFunction,
}) {
  return Align(
    alignment: Alignment.center,
    child: MaterialButton(
      onPressed: buttonFunction,
      color: AppColor().mainColor,
      height: 50,
      minWidth: 150,
      child: const Text(
        "Send",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}