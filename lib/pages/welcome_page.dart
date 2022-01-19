import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    // "on_office.svg",
    "img_1.jpg",
    "kaneki.png",
    'img_2.png',
    'img_3.png',
    'img_4.png',
    // "podcast.svg",
    // "social_girl.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (BuildContext context, index) {
            var boxDecoration = BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.cover));
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: boxDecoration,
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: "Mountain",
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Mountain hikes give you an incredible sense of freedom along with endurance test",
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          )
                          // AppLargeText(text: ""),
                          ,
                          SizedBox(
                            height: 40,
                          ),
                          ResponsiveButton(
                            width: 120,
                          )
                        ]),
                    Column(
                        children: List.generate(5, (indexDocs) {
                      return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDocs ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDocs
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ));
                    }))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
