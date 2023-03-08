import 'package:code_for_salah/core/custom_button.dart';
import 'package:code_for_salah/core/home_button.dart';
import 'package:flutter/material.dart';

import '../core/app_color.dart';
import '../core/appbar.dart';
import '../core/drawer.dart';

class SupportPage extends StatelessWidget {
  SupportPage({Key? key}) : super(key: key);

  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        appbarTitle: "Support",
      ),
      resizeToAvoidBottomInset: false,
      drawer: const MyDrawer(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 75),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Subject",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              controller: subjectController,
              cursorColor: AppColor().mainColor,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Add a subject",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor().mainColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "Message",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              maxLines: 10,
              controller: messageController,
              cursorColor: AppColor().mainColor,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Add a massage",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor().mainColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            customButton(
              buttonFunction: () {
                subjectController.clear();
                messageController.clear();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const HomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
