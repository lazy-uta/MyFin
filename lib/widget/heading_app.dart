import 'package:flutter/material.dart';

Widget heading(image, username) {
  return Container(
    width: double.infinity,
    height: 180,
    color: Colors.transparent,
    child: Container(
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2.5,
                blurRadius: 1,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2.0),
              bottomRight: Radius.circular(2.0))),
      child: Row(
        children: [
          ClipOval(
            child: Image.network("$image"),
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome to Myfin",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "$username",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
