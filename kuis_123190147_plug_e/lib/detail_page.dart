import 'dart:ui';

import 'package:flutter/material.dart';
import 'data_hotel.dart';

class Details extends StatefulWidget {
  final DataHotel hotelDetails;

  const Details({Key? key, required this.hotelDetails}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.hotelDetails.name}"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            color: _pressed ? Colors.red : Colors.white,
            padding: EdgeInsets.only(right: 20),
            onPressed: () {
              setState(() {
                _pressed = !_pressed;
              });
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  Image.network(
                    widget.hotelDetails.imageUrl[0],
                    height: 300,
                  ),
                  Image.network(
                    widget.hotelDetails.imageUrl[1],
                    height: 300,
                  ),
                  Image.network(
                    widget.hotelDetails.imageUrl[2],
                    height: 300,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  "${widget.hotelDetails.name}\n",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text("Location   : ${widget.hotelDetails.location}\n"
                    "Stars  : ${widget.hotelDetails.stars}\n"
                    "Room Price   : ${widget.hotelDetails.roomPrice}\n"
                    "Facility : ${widget.hotelDetails.facility}\n"
                    "Website Link : ${widget.hotelDetails.websiteLink}\n"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Text("${widget.hotelDetails.iconFacility}"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Website"),
            ),
          )
        ],
      ),
    );
  }
}
