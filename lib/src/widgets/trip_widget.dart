import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripWidget extends StatelessWidget {
  String? imgUrl;

   TripWidget({Key? key,this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: 150,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(imgUrl??""),fit: BoxFit.fill
                  )
              ),

            ),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("Kuta, Bali",style: GoogleFonts.kantumruy(fontSize: 12,color: Color.fromRGBO(132, 59, 144, 1),fontWeight: FontWeight.bold),)
              ],
            ),
            Row(
              children: [
                SizedBox(width: 15,),
                Row(
                  children: [
                    Image.asset("assets/icons/shape1.png"),
                    Text("600",style: GoogleFonts.kantumruy(color: Color.fromRGBO(108, 108, 108, 1),fontSize: 12),)
                  ],
                ),
                SizedBox(width: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/icons/shape2.png"),
                    Text("18 Aug - 21 Sep",style: GoogleFonts.kantumruy(color: Color.fromRGBO(108, 108, 108, 1),fontSize: 12),)
                  ],
                )
              ],
            )

          ],
        )
    );
  }
}
