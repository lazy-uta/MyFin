import 'package:flutter/material.dart';
import 'package:myfin/widget/list_income.dart';
import 'package:myfin/widget/list_outcome.dart';

Widget incomeCard(List<Map<String, dynamic>> dataIncome,
    List<Map<String, dynamic>> dataOutcome) {
  return Column(
    children: [
      SizedBox(
        height: 12,
      ),
      Container(
        margin: EdgeInsets.only(left: 20),
        alignment: Alignment.topLeft,
        child: Text(
          "Income",
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      Divider(
        height: 8,
        color: Colors.grey,
        indent: 18,
        endIndent: 200,
      ),
      listIncome(dataIncome),
      GestureDetector(
        child: Container(
          padding: EdgeInsets.all(8),
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 0))
              ]),
          child: Row(children: [
            Icon(Icons.add_circle, color: Colors.grey),
            SizedBox(width: 30),
            Text("Add New")
          ]),
        ),
        onTap: () {},
      ),
      Container(
        margin: EdgeInsets.only(left: 20),
        alignment: Alignment.topLeft,
        child: Text(
          "Outcome",
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      Divider(
        height: 8,
        color: Colors.grey,
        indent: 18,
        endIndent: 200,
      ),
      listOutcome(dataOutcome),
      InkWell(
        child: Container(
          padding: EdgeInsets.all(8),
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 0))
              ]),
          child: Row(children: [
            Icon(
              Icons.add_circle,
              color: Colors.grey,
            ),
            SizedBox(width: 30),
            Text("Add New")
          ]),
        ),
        onTap: () {},
        splashColor: Colors.grey,
      ),
      SizedBox(
        height: 8,
      )
    ],
  );
}
