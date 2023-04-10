// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/add_pic.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import '../pages/search.dart';
import '../widgets/colors.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final PageController _pageController = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        actions: [
          IconButton(
              onPressed: () {
                _pageController.jumpToPage(0);
                setState(() {
                  page = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: page == 0 ? primaryColor : secondaryColor,
              )),
          IconButton(
              onPressed: () {
                _pageController.jumpToPage(1);
                setState(() {
                  page = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: page == 1 ? primaryColor : secondaryColor,
              )),
          IconButton(
              onPressed: () {
                _pageController.jumpToPage(2);
                setState(() {
                  page = 2;
                });
              },
              icon: Icon(
                Icons.add_circle,
                color: page == 2 ? primaryColor : secondaryColor,
              )),
          IconButton(
              onPressed: () {
                _pageController.jumpToPage(3);
                setState(() {
                  page = 3;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: page == 3 ? primaryColor : secondaryColor,
              )),
          IconButton(
              onPressed: () {
                _pageController.jumpToPage(4);
                setState(() {
                  page = 4;
                });
              },
              icon: Icon(
                Icons.person,
                color: page == 4 ? primaryColor : secondaryColor,
              ))
        ],
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: primaryColor,
          height: 35,
          width: 200,
        ),
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          Home(),
          Search(),
          Addpost(),
          Center(child: Text("Hatoom",)),
          Profile(),
        ],
      ),
    );
  }
}
