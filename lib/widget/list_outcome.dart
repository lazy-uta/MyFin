import 'package:flutter/material.dart';

Widget listOutcome(List<Map<String, dynamic>> dataOutcome) {
  return Container(
    child: ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataOutcome.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 8,
        color: Colors.grey.withOpacity(0.5),
        indent: 12,
        endIndent: 12,
      ),
      itemBuilder: (BuildContext context, int index) {
        _iconIncome() {
          if ("${dataOutcome[index]["category"]}" == "Shops") {
            return Icon(Icons.business);
          } else if ("${dataOutcome[index]["category"]}" == "Business") {
            return Icon(Icons.work);
          } else {
            return Icon(Icons.money);
          }
        }

        return Container(
          height: 50,
          margin: EdgeInsets.only(left: 18, right: 18),
          child: Row(
            children: [
              Expanded(flex: 2, child: _iconIncome()),
              Expanded(
                flex: 4,
                child: Text(
                  "${dataOutcome[index]["keterangan"]}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Icon(Icons.remove, color: Colors.red),
                    Text(
                      "${dataOutcome[index]["nominal"]}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.blue[400],
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}
