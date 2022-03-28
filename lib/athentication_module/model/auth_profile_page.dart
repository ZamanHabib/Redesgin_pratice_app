import 'package:flutter/material.dart';
import 'package:flutter_application_9/athentication_module/model/auth_signin_page.dart';

class auth_profile_Page extends StatelessWidget {
  const auth_profile_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const auth_signin_page()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(214, 100, 190, 1),
              ),
            ),
            centerTitle: true,
            title: const Text(
              "Big Details",
              style: TextStyle(
                  fontSize: 22, color: const Color.fromRGBO(214, 100, 190, 1)),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 68,
                        backgroundImage: AssetImage("assets/circle.png"),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        "Steven Smith",
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromRGBO(214, 100, 190, 1)),
                      ),
                      Text("userhomer1@gmail.com",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Text(
                        "Job Title: ",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        " AC ASSISTANCE",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromRGBO(214, 100, 190, 1)),
                      ),
                      const Spacer(),
                      Container(
                        width: 73,
                        height: 32,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(214, 100, 190, 1))),
                        child: const Center(
                          child: const Text(
                            "420",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(214, 100, 190, 1)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Center(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Bid Status",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Text(
                            "Bid Status",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(42, 193, 66, 1)),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Created Time",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Text(
                            "1/22/2022",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(164, 161, 159, 1)),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Delivery Time",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Text(
                            "1/24/2022",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(164, 161, 159, 1)),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Description:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(164, 161, 159, 1)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("assets/map.jpg")),
                      )),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(image: AssetImage("assets/map.jpg")),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            const Image(
                              image: const AssetImage("assets/map.jpg"),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              color: const Color.fromRGBO(164, 161, 159, 1)
                                  .withOpacity(0.5),
                              child: const Center(
                                child: Text(
                                  "+2",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 29),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
