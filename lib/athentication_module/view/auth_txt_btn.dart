import 'package:flutter/material.dart';

class auth_txt_btn extends StatelessWidget {
  String btn_txt;
  final btn_color;
  final auth_txt_btn_function;
  auth_txt_btn(
      {Key? key,
      required this.btn_txt,
      required this.btn_color,
      required this.auth_txt_btn_function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(
            onPressed: auth_txt_btn_function,
            child: Text(
              btn_txt,
              style: TextStyle(color: btn_color),
            )),
      ],
    );
  }
}
