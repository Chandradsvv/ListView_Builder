import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'highest_rated_data.dart';
import 'package:google_fonts/google_fonts.dart';

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  Widget servicesListView() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: highestRatedData.length,
        itemBuilder: (context, index) {
          String salonIcon = highestRatedData[index]['icon'].toString();
          String salonName = highestRatedData[index]['name'].toString();
          String salonDistance = highestRatedData[index]['distance'].toString();
          String salonLocation = highestRatedData[index]['location'].toString();
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.5,
                color: Colors.black,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Salon Image
                Container(
                  width: 201.0,
                  height: 108.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(17.0),
                    image: DecorationImage(
                      image: AssetImage(salonIcon),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 7.0),
                // Salon Name
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    salonName,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: const Color.fromRGBO(68, 66, 66, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2.0),
                // Salon Location
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    salonLocation,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: const Color.fromRGBO(147, 147, 147, 1),
                      ),
                    ),
                  ),
                ),
                // Salon Star + Distance
                Container(
                  width: 201,
                  child: Row(
                    // Distance Line
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Star Icon
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            salonLocation,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 10.0,
                                color: const Color.fromRGBO(147, 147, 147, 1),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView_Builder"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: servicesListView(),
      ),
    );
  }
}
