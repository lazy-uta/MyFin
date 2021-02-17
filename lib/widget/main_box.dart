import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myfin/route/form_input_page.dart';

Widget mainBox(double height, body, String boxTitle, Widget buttonplus) {
  return Container(
      width: double.infinity,
      height: height,
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: Container(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          boxTitle,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    )),
                    flex: 2,
                  ),
                  Divider(
                    height: 6,
                    color: Colors.grey.withOpacity(0.5),
                    indent: 18,
                    endIndent: 18,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 8.0, left: 8.0),
                      color: Colors.white,
                      child: body,
                    ),
                    flex: 12,
                  ),
                ],
              ),
              buttonplus,
            ],
          ),
        ),
      ));
}
