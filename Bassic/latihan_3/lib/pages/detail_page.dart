import 'package:flutter/material.dart';
import 'package:latihan_3/items/tourism_place.dart';
import 'package:latihan_3/pages/favoritebtn_page.dart';

class DetailPage extends StatelessWidget {
  final TourismPlace place;

  DetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(place.imageAsset),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.grey.shade700,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          )),
                      CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          child: FavoriteButton())
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(place.openDays)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(place.openTime)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(place.ticketPrice)
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Text(
              place.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: place.imageUrl
                  .map((url) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    ));
  }
}
