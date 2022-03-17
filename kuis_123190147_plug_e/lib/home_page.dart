import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data_hotel.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataHotel hotel = hotelList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Details(
                  hotelDetails: hotel,
                );
              }));
            },
            child: Container(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.network(hotel.imageUrl[0],fit: BoxFit.cover,
                        height: 250,
                      ),
                      Text(
                        "\n  ${hotel.name}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "\n\n  Stars : ${hotel.stars}\n"
                        "  ${hotel.roomPrice}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: hotelList.length,
      ),
    );
  }
}
