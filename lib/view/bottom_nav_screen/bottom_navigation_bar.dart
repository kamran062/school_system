import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../dashbord_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final int _page = 1;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:FloatingActionButton(
          onPressed: (){
          },
          child: Icon(Icons.qr_code_2,size: 40,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color:Colors.white,
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.08,
                width: 100,
                color: Colors.white10,
                child: IconButton(icon: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person, color: Colors.black54),
                    SizedBox(height: 5,),
                    Text('Students',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                  ],
                ), onPressed: () {},),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.08,
                width: 100,
                color: Colors.white10,
                child: IconButton(icon: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.more_horiz,size: 25, color: Colors.black54),
                    SizedBox(height: 5,),
                    Text('More',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                  ],
                ), onPressed: () {},),
              ),
            ],
          ),
        ),
        body:const DashBoard()
      ),
    );
  }
}
