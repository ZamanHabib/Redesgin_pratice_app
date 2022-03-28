import 'package:flutter/material.dart';
import 'package:flutter_application_9/athentication_module/view/auth_primary_btn.dart';

import '../model/auth_signin_page.dart';

class auth_dialog_box extends StatelessWidget {
  const auth_dialog_box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 60.0,
            child: Text(
              'Your Email Has Send Successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            child: auth_primary_btn(
                auth_primary_btn_lbl: "Ok",
                auth_primary_btn_color: Color.fromRGBO(214, 100, 190, 1),
                auth_primary_btn_function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => auth_signin_page()),
                  );
                },
                auth_primary_btn_font_color: Colors.white),
          ),
        ],
      ),
    );
  }
}
