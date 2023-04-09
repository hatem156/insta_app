import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/pages/add_pic.dart';
import 'package:insta_app/pages/home.dart';
import 'package:insta_app/pages/profile.dart';
import 'package:insta_app/pages/search.dart';
import 'package:insta_app/widgets/colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();

int currentpage=0;
@override
void dispose() {
_pageController.dispose();
super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text("mobile screen"),
      //),
      bottomNavigationBar: CupertinoTabBar(
        onTap:(index) {
          _pageController.jumpToPage(index);
          setState(() {
            currentpage=index;
          });
        },
        backgroundColor: mobileBackgroundColor,
        items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home,color : currentpage ==0 ? primaryColor:secondaryColor,),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,color:currentpage ==1 ? primaryColor:secondaryColor,),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle,color: currentpage ==2 ? primaryColor:secondaryColor),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,color: currentpage ==3 ? primaryColor:secondaryColor,),label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: currentpage ==4 ? primaryColor:secondaryColor,),label: "profile"),
      ]),
      body: PageView(
        onPageChanged: (index){},
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          Home(),
          Search(),
          Addpost(),
          Center(child: Text("Hatoom")),
          Profile(),
        ],
      ),
    );
  }
}