import 'package:code_for_salah/core/app_color.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar({required String appbarTitle}) {
  return AppBar(
    title: Text(appbarTitle),
    backgroundColor: AppColor().mainColor,
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    iconTheme: const IconThemeData(
      size: 40,
      color: Colors.black,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications_none_rounded,
        ),
      )
    ],
  );
}
