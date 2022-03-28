import 'package:flutter/material.dart';
import 'package:flutter_application_9/athentication_module/view/auth_alert_dialogbox.dart';
import 'package:flutter_application_9/athentication_module/view/auth_primary_btn.dart';
import 'package:flutter_application_9/athentication_module/view/auth_text_field.dart';

import 'auth_signin_page.dart';

class auth_forget_page extends StatelessWidget {
  const auth_forget_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => auth_signin_page()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(214, 100, 190, 1),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Image(
                      image: AssetImage("assets/started_logo.png"),
                      width: 116,
                      height: 45,
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Forget Your Password?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(214, 100, 190, 1)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Cutomtextfield(
                            authhint: "Enter Email Adress",
                            cons_icons: Icon(
                              Icons.email,
                              color: Color.fromRGBO(214, 100, 190, 1),
                            )),
                        SizedBox(
                          height: 60,
                        ),
                        auth_primary_btn(
                            auth_primary_btn_lbl: "Send",
                            auth_primary_btn_color:
                                Color.fromRGBO(214, 100, 190, 1),
                            auth_primary_btn_function: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return auth_dialog_box();
                                },
                              );
                            },
                            auth_primary_btn_font_color: Colors.white)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
