import 'package:flutter/material.dart';
import 'package:latihan_2/theme.dart';

class CoursTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double value;
  final bool isLocked;

  CoursTile({this.imageUrl, this.title, this.value, this.isLocked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        title: Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 18),
        ),
        subtitle: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: LinearProgressIndicator(
            backgroundColor: Color(0xffECEEF5),
            valueColor: AlwaysStoppedAnimation(Color(0xffF35D22)),
            value: value,
            minHeight: 6,
          ),
        ),
        trailing: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(isLocked
                      ? 'assets/btn_play.png'
                      : 'assets/btn_play1.png'))),
        ));
  }
}
