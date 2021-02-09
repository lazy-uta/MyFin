import 'package:flutter/material.dart';

Widget footerGraph(Widget body) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
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
            borderRadius: BorderRadius.circular(6.0)),
        child: body),
  );
}
