import 'package:flutter/material.dart';
import 'package:latihan_2/theme.dart';
import 'package:latihan_2/widgets/course_tile.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/video.png'))),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 225,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: backgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Brand Marketing Design',
                      style: blackTextStyle.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'How to build strong company with passion',
                      style: greyTextColor.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '# preparing',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon.png',
                      title: 'Ideation',
                      value: 0.7,
                      isLocked: true,
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon1.png',
                      title: 'Validate Idea',
                      value: 0.2,
                      isLocked: false,
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon2.png',
                      title: 'Strong Promotion',
                      value: 0.0,
                      isLocked: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '# Targeting Customer',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon3.png',
                      title: 'App Survey',
                      value: 0.0,
                      isLocked: false,
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon4.png',
                      title: 'Ship to Investor',
                      value: 0.0,
                      isLocked: false,
                    ),
                    CoursTile(
                      imageUrl: 'assets/icon5.png',
                      title: 'Get Funding',
                      value: 0.0,
                      isLocked: false,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Finish and Take Quiz',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            primary: blueColor,
                            elevation: 0.0,
                            onPrimary: whiteColor,
                            shadowColor: null),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width -
                            (2 * defaultMargin),
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Finish and Take Quiz',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            primary: Color(0xffC3C8DA),
                            elevation: 0.0,
                            onPrimary: whiteColor,
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
