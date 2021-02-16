import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myfin/route/form_input_page.dart';

Widget mainBox(double height, body, String boxTitle) {
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.red[200], //button color
                            child: InkWell(
                              splashColor: Colors.red, //inkwell color
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(Icons.remove),
                              ),
                              onTap: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.green[200], //button color
                            child: InkWell(
                              splashColor: Colors.green, //inkwell color
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(Icons.add),
                              ),
                              onTap: () {
                                Get.to(InputForm());
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text(
                        'See Detail',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
}
