import 'package:flutter/material.dart';

class Cutomtextfield extends StatelessWidget {
  String authhint;
  final cons_icons;
  Cutomtextfield({Key? key, required this.authhint, required this.cons_icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: authhint,
                hintStyle: TextStyle(color: Color.fromRGBO(214, 100, 190, 1)),
                prefixIcon: cons_icons),
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
