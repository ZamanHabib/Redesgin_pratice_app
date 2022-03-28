import 'package:flutter/material.dart';

class auth_primary_btn extends StatelessWidget {
  String auth_primary_btn_lbl;
  final auth_primary_btn_color;
  final auth_primary_btn_function;
  final auth_primary_btn_font_color;
  auth_primary_btn(
      {Key? key,
      required this.auth_primary_btn_lbl,
      required this.auth_primary_btn_color,
      required this.auth_primary_btn_function,
      required this.auth_primary_btn_font_color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: auth_primary_btn_function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: auth_primary_btn_color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            auth_primary_btn_lbl,
            style: TextStyle(fontSize: 18, color: auth_primary_btn_font_color),
          ),
        ),
      ),
    );
  }
}
