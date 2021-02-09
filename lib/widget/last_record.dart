import 'package:flutter/material.dart';

Widget lastRecord(List<Map<String, dynamic>> data, count) {
  return ListView.separated(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    separatorBuilder: (BuildContext context, int index) => Divider(
      height: 6,
      color: Colors.grey.withOpacity(0.5),
      endIndent: 18,
      indent: 18,
    ),
    itemCount: count,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        width: double.infinity,
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            "${data[index]["condition"]}" == "min"
                ? Icon(
                    Icons.remove_circle,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  ),
            SizedBox(
              width: 12,
            ),
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "${data[index]["nominal"]} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: "${data[index]["condition"]}" == "min"
                          ? Colors.red
                          : Colors.green),
                ),
                SizedBox(height: 8),
                Text(
                  "${data[index]["tanggal"]} ",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}
