import 'package:flutter/material.dart';
import 'package:insta_app/widgets/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text(
          "username",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(125, 78, 91, 110)),
                child: const CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage("assets/img/insta.jpg"),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "posts",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Column(
                      children: const [
                        Text(
                          "100",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "followers",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Column(
                      children: const [
                        Text(
                          "60",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "following",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 22, 0, 10),
              width: double.infinity,
              child: const Text("the best platform")),
          const SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.black,
            thickness: widthscreen > 600 ? 0.3 : 0.44,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: const Text(
                  "edit profile",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(0, 90, 103, 223)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: widthscreen > 600 ? 19 : 10, horizontal: 30)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(
                        color: Color.fromARGB(109, 255, 255, 255),
                        style: BorderStyle.solid),
                  )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 24.0,
                ),
                label: const Text(
                  "log out",
                  style: TextStyle(fontSize: 17),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(143, 255, 55, 112)),
                  padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical:widthscreen > 600? 19: 10, horizontal: 30)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(
                        color: Color.fromARGB(109, 255, 255, 255),
                        style: BorderStyle.solid),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding:widthscreen > 600? const EdgeInsets.all(50.0): const EdgeInsets.all(10.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 25),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
