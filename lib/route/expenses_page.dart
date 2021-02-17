import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/expenses_controller.dart';
import 'package:myfin/model/pie_data.dart';
import 'package:myfin/route/form_input_page.dart';
import 'package:myfin/widget/circulat_bar.dart';
import 'package:myfin/widget/graph_footer.dart';
import 'package:myfin/widget/last_record.dart';
import 'package:myfin/widget/main_box.dart';
import 'package:myfin/widget/second_box.dart';

class ExpensePage extends StatelessWidget {
  ExpensesController expenses = Get.put(ExpensesController());
  var pieDataPengeluaran = [
    PieData('Transport', 20, 'rp 20.000'),
    PieData('Transportaion', 40, 'Rp 40.000'),
    PieData('School', 120, 'Rp 120.000'),
    PieData('drink', 100, 'Rp 100.000'),
    PieData('food', 10, 'Rp 10.000'),
  ];

  List<Map<String, dynamic>> listTabungan = [
    {
      "nominal": "IDR 200.000",
      "tanggal": "5 Februari 2021",
      "condition": "min"
    },
    {
      "nominal": "IDR 400.000",
      "tanggal": "3 Februari 2021",
      "condition": "plus"
    },
    {
      "nominal": "IDR 200.000",
      "tanggal": "9 Februari 2021",
      "condition": "plus"
    },
    {
      "nominal": "IDR 400.000",
      "tanggal": "3 Februari 2021",
      "condition": "min"
    },
    {
      "nominal": "IDR 200.000",
      "tanggal": "9 Februari 2021",
      "condition": "min"
    },
  ];

  Widget footerLastRecord() {
    return TextButton(
      child: Text("See Detail"),
      onPressed: () {},
    );
  }

  Widget _bodyFooter(String boxTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            boxTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Divider(
          height: 6,
          color: Colors.grey.withOpacity(0.5),
          indent: 12,
          endIndent: 120,
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              Text("Your expenses : "),
              Text(
                "IDR ${expenses.total}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    color: Colors.red),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(InputForm());
        },
        child: Text("INPUT"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // heading(),
            mainBox(320, graphBar(pieDataPengeluaran, "Pengeluaran"), "Expense",
                SizedBox()),
            footerGraph(_bodyFooter("Total")),

            secondBox(
                230,
                lastRecord(listTabungan,
                    listTabungan.length >= 5 ? 4 : listTabungan.length),
                "Last Record",
                footerLastRecord()),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
