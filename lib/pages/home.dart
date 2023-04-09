import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_app/widgets/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.messenger_outline_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined))
        ],
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: primaryColor,
          height: 35,
          width: 200,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage("assets/img/insta.jpg"),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "username",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          Image.network(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_add_outlined),
                  ),
                ]),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(15, 0, 20, 10),
            child: const Text("10 likes",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 169, 196, 199)),)),
          Row(
            children: const [
              SizedBox(width: 15,),
              Text("USERNAME",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 169, 196, 199)),),
              SizedBox(width: 8,),
              Text("describtion",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 169, 196, 199)),),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(15, 9, 9, 10),
                child: const Text("view all 100 comment",
                style: TextStyle(fontSize: 18,
                color: Color.fromARGB(255, 38, 29, 139),
                ),
                textAlign: TextAlign.start,
                ),),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(15, 0, 9, 10),
                child: const Text("10 june 2022",
                style: TextStyle(fontSize: 18,
                color: Color.fromARGB(255, 38, 29, 139),
                ),
                textAlign: TextAlign.start,
                ),),
        ],
      ),
    );
  }
}
