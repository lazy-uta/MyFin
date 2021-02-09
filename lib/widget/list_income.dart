import 'package:flutter/material.dart';

Widget listIncome(List<Map<String, dynamic>> dataIncome) {
  return Container(
    child: ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dataIncome.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 8,
        color: Colors.grey.withOpacity(0.5),
        indent: 12,
        endIndent: 12,
      ),
      itemBuilder: (BuildContext context, int index) {
        _iconIncome() {
          if ("${dataIncome[index]["category"]}" == "Shops") {
            return Icon(
              Icons.business_center_rounded,
              color: Colors.blue,
            );
          } else if ("${dataIncome[index]["category"]}" == "Business") {
            return Icon(Icons.work);
          } else {
            return Icon(Icons.money);
          }
        }

        return Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.only(left: 18, right: 18),
          child: Row(
            children: [
              Expanded(flex: 2, child: _iconIncome()),
              Expanded(
                flex: 4,
                child: Text(
                  "${dataIncome[index]["keterangan"]}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.blue),
                    Text(
                      "${dataIncome[index]["nominal"]}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.green),
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
