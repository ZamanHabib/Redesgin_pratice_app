import 'package:flutter/material.dart';
import 'package:flutter_application_9/athentication_module/model/auth_profile_page.dart';
import 'package:flutter_application_9/athentication_module/view/auth_primary_btn.dart';
import 'package:flutter_application_9/athentication_module/view/auth_secoundary_btn.dart';
import 'package:flutter_application_9/athentication_module/view/auth_txt_btn.dart';

import '../view/auth_text_field.dart';
import 'auth_forgetpassword_page.dart';

class auth_signin_page extends StatelessWidget {
  const auth_signin_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromRGBO(214, 100, 190, 1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [Text("Sign in to continue")],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Cutomtextfield(
                            authhint: "Email",
                            cons_icons: Icon(
                              Icons.email,
                              color: Color.fromRGBO(214, 100, 190, 1),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cutomtextfield(
                            authhint: "Password",
                            cons_icons: Icon(
                              Icons.lock_outlined,
                              color: Color.fromRGBO(214, 100, 190, 1),
                            ),
                          ),
                          auth_txt_btn(
                              btn_txt: "Forget Password?",
                              btn_color: Colors.grey,
                              auth_txt_btn_function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => auth_forget_page()),
                                );
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          auth_primary_btn(
                              auth_primary_btn_lbl: "Sign In",
                              auth_primary_btn_color:
                                  Color.fromRGBO(214, 100, 190, 1),
                              auth_primary_btn_function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          auth_profile_Page()),
                                );
                              },
                              auth_primary_btn_font_color: Colors.white),
                          const SizedBox(
                            height: 20,
                          ),
                          auth_secoundary_btn(
                              auth_secoundary_btn_lbl: "Sign Up",
                              auth_secoundary_btn_color:
                                  Color.fromRGBO(214, 100, 190, 1),
                              auth_secoundary_btn_function: () {},
                              auth_secoundary_btn_font_color:
                                  Color.fromRGBO(214, 100, 190, 1)),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
