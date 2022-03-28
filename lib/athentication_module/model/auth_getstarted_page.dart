import 'package:flutter/material.dart';
import 'package:flutter_application_9/athentication_module/model/auth_signin_page.dart';
import 'package:flutter_application_9/athentication_module/view/auth_primary_btn.dart';

class auth_getstarted extends StatefulWidget {
  const auth_getstarted({Key? key}) : super(key: key);

  @override
  State<auth_getstarted> createState() => _auth_getstartedState();
}

class _auth_getstartedState extends State<auth_getstarted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Image(
                  image: AssetImage(
                    "assets/started_logo.png",
                  ),
                  width: 116,
                  height: 45,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Container(
                child: const Text(
                  "Enjoy Free Leads,Bid & Win More Jobs",
                  style: TextStyle(fontSize: 27, fontStyle: FontStyle.normal),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 414,
                      child: Image(
                        image: AssetImage("assets/started_img2.png"),
                        width: MediaQuery.of(context).size.width,
                        height: 414,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/started_img3.png"),
                        width: 320,
                        height: 300,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 250, left: 120, right: 120),
                    child: Center(
                      child: auth_primary_btn(
                          auth_primary_btn_lbl: "Get Started",
                          auth_primary_btn_color:
                              Color.fromRGBO(214, 100, 190, 1),
                          auth_primary_btn_function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const auth_signin_page()),
                            );
                          },
                          auth_primary_btn_font_color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
