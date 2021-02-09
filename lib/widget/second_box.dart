import 'package:flutter/material.dart';

Widget secondBox(double height, body, String boxTitle, footer) {
  return Container(
    width: double.infinity,
    color: Colors.transparent,
    padding: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2.5,
                blurRadius: 3,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
              child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                boxTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          )),
          Divider(
            height: 6,
            color: Colors.grey.withOpacity(0.5),
            indent: 18,
            endIndent: 18,
          ),
          Container(
            margin: EdgeInsets.only(right: 8.0, left: 8.0),
            color: Colors.white,
            child: body,
          ),
          footer
        ],
      ),
    ),
  );
}
