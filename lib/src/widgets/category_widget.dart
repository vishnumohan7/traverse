import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {

  String? imgUrl;
  String? title;

   CategoryWidget({Key? key,this.imgUrl,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imgUrl??""),
          SizedBox(
            height: 5,
          ),
          Text(
            title??"",
            style: GoogleFonts.kantumruy(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(132, 59, 144, 1)),
          )
        ],
      ),
    );
  }
}
