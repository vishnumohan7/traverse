import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traverse/src/fragments/account_fragment.dart';
import 'package:traverse/src/fragments/home_fragment.dart';
import 'package:traverse/src/fragments/notification_fragment.dart';
import 'package:traverse/src/fragments/wishlist_fragment.dart';
import 'package:traverse/src/widgets/category_widget.dart';
import 'package:traverse/src/widgets/trip_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> fragments = [HomeFragment(),WishListFragment(),NotificationFragment(),AccountFragment()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fragments[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Color.fromRGBO(132, 59, 144, 1),),label: "Home"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/wish.png",color: Color.fromRGBO(132, 59, 144, 1),),label: "Wishlist"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/noti.png",color: Color.fromRGBO(132, 59, 144, 1),),label: "Notifications"),
          BottomNavigationBarItem(icon: Image.asset("assets/icons/account.png",color: Color.fromRGBO(132, 59, 144, 1),),label: "Account"),

        ],
      ),
    );
  }
}
