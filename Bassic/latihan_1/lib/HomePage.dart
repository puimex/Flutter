import 'package:flutter/material.dart';
import 'package:latihan_1/Theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Profile Picture',
              style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/primary.png',
              width: 140,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Yudha Irmawan',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Flutter Associate',
              style: TextStyle(fontSize: 16, color: greyColor),
            ),
            SizedBox(
              height: 70,
            ),
            Wrap(
              spacing: 38,
              runSpacing: 38,
              children: [
                Image.asset(
                  'images/item.png',
                  width: 80,
                ),
                Image.asset(
                  'images/item-1.png',
                  width: 80,
                ),
                Image.asset(
                  'images/item-2.png',
                  width: 80,
                ),
                Image.asset(
                  'images/item-3.png',
                  width: 80,
                ),
                Image.asset(
                  'images/item-4.png',
                  width: 80,
                ),
                Image.asset(
                  'images/item-5.png',
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 224,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: whiteColor,
                      onPrimary: Colors.black54,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 50),
                            height: 280,
                            color: whiteColor,
                            child: Column(
                              children: [
                                Text(
                                  'Update Foto',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'You are only able to change the picture profile once',
                                  style:
                                      TextStyle(color: greyColor, fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 224,
                                  height: 55,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: orangeColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      onPressed: () {},
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: whiteColor,
                                            fontWeight: FontWeight.w500),
                                      )),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Update Profile',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
