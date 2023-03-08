import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../core/app_color.dart';
import '../core/appbar.dart';
import '../core/custom_button.dart';
import '../core/drawer.dart';
import '../core/home_button.dart';

class RateUsPage extends StatelessWidget {
  RateUsPage({Key? key}) : super(key: key);

  double sizedBoxHeight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        appbarTitle: "Rate Us",
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Rate Us",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Worst",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RatingBar(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    ratingWidget: RatingWidget(
                      full: Icon(
                        Icons.star,
                        color: AppColor().mainColor,
                      ),
                      half: Icon(
                        Icons.star,
                        color: AppColor().mainColor,
                      ),
                      empty: Icon(
                        Icons.star_border,
                        color: AppColor().mainColor,
                      ),
                    ),
                    onRatingUpdate: (value){},
                  ),
                  const Text(
                    "Best",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              const Text(
                "Any Donations?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Container(
                color: AppColor().mainColor,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: const Text(
                  "Any12556148578878",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              customButton(
                buttonFunction: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const HomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
