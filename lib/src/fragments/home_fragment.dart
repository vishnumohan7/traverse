import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traverse/src/widgets/category_widget.dart';
import 'package:traverse/src/widgets/trip_widget.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(246, 243, 243, 1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 0.2),
                                blurRadius: 0.6)
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Image.asset(
                            "assets/images/hbg.jpeg",
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 35),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/home.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 20,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 15),
                  child: Column(
                    children: [
                      Text(
                        "Let's go trip \nto Indonesia",
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 190.0, left: 25, right: 25),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, top: 10, bottom: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/icons/filter.png"),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromRGBO(252, 146, 164, 1),
                            ),
                            fillColor: Colors.grey[250],
                            hintText: "Find your trip",
                            hintStyle: GoogleFonts.kantumruy(fontSize: 14),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                BorderSide(color: Colors.transparent))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: Color.fromRGBO(132, 59, 134, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.kantumruy(
                        fontSize: 12, color: Color.fromRGBO(191, 191, 191, 1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/plane.png",
                    title: "Flights",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/train.png",
                    title: "Train",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/bus.png",
                    title: "Bus",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/hotel.png",
                    title: "Hotel",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/pack.png",
                    title: "Package",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/car.png",
                    title: "Taxi",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/motor.png",
                    title: "Taxi Bike",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryWidget(
                    imgUrl: "assets/icons/bag.png",
                    title: "Agency",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Row(
                children: [
                  Text(
                    "Popular Trip",
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: Color.fromRGBO(132, 59, 134, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.kantumruy(
                        fontSize: 12, color: Color.fromRGBO(191, 191, 191, 1)),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TripWidget(
                        imgUrl:
                        "https://7.holiday/public/user_files/TheSevenTravelBlog/bali_honeymoon_hotels/image11.jpg",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TripWidget(
                        imgUrl:
                        "https://i.pinimg.com/originals/3c/22/0c/3c220c0d83f375686676dcee46f328c2.jpg",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TripWidget(
                        imgUrl:
                        "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/17455811.jpg?k=faedbe2012a8f825e67c0a9248ee6316296e6399b3c9e38a08aaba672d69d65e&o=",
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
