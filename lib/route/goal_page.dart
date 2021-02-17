import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:myfin/controller/goal_controller.dart';
import 'package:myfin/controller/user_controller.dart';
import 'package:myfin/model/pie_data.dart';
import 'package:myfin/widget/circulat_bar.dart';
import 'package:myfin/widget/graph_footer.dart';
import 'package:myfin/widget/heading_app.dart';
import 'package:myfin/widget/income_card.dart';
import 'package:myfin/widget/last_record.dart';
import 'package:myfin/widget/main_box.dart';
import 'package:myfin/widget/second_box.dart';

class GoalPage extends StatelessWidget {
  final UserController user = Get.find();
  final GoalController goal = Get.find();
  var pieDataTabungan = [
    PieData('Kekurang', 80, 'Rp. 80.000.000'),
    PieData('tabungan', 40, 'Rp. 40.000.000'),
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

  List<Map<String, dynamic>> listIncome = [
    {"nominal": "IDR 2.200.000", "keterangan": "Gaji", "category": "Sallary"},
    {
      "nominal": "IDR 1.500.000",
      "keterangan": "Jual Apps",
      "category": "Business"
    },
    {
      "nominal": "IDR 8.000.000",
      "keterangan": "Coffee Shop",
      "category": "Shops"
    },
  ];

  Widget footerLastRecord() {
    return TextButton(
      child: Text("See Detail"),
      onPressed: () {},
    );
  }

  Widget plusMinus(BuildContext context) {
    return Padding(
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
                    onTap: () {
                      alertIncome(context,
                          title: "Keluar", color: Colors.red, id: 1
                          // save: goal.saveOutcome()
                          );
                    },
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
                      alertIncome(context,
                          title: "Masuk", color: Colors.green, id: 0);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _bodyFooter(String boxTitle, BuildContext context) {
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
        Row(
          children: [
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.blue,
            ),
            Obx(
              () => Text(
                "${goal.goalname}",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.blue[400],
                ),
                onPressed: () {
                  editGoal(context, title: "Goal");
                  goal.calculate();
                },
              ),
            )
          ],
        ),
        Divider(
          height: 6,
          color: Colors.grey.withOpacity(0.5),
          indent: 12,
          endIndent: 8,
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text("Goal cost",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 17)),
              ),
              Expanded(
                flex: 1,
                child: Text(":"),
              ),
              Expanded(
                  flex: 3,
                  child: Obx(
                    () => Text(
                      "IDR ${goal.goalcost}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.orange),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text("My Deposite",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 17)),
              ),
              Expanded(
                flex: 1,
                child: Text(":"),
              ),
              Expanded(
                  flex: 3,
                  child: Obx(
                    () => Text(
                      "IDR ${goal.deposite}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.green),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          height: 6,
          color: Colors.grey.withOpacity(0.5),
          indent: 12,
          endIndent: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Text("",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 17)),
              ),
              Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.remove,
                    color: Colors.red,
                  )),
              Expanded(
                  flex: 3,
                  child: Obx(
                    () => Text(
                      "IDR ${goal.gab}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.red),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  alertIncome(BuildContext context, {String title, Color color, save, int id}) {
    return Alert(
        context: context,
        title: title,
        content: Form(
          key: goal.formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Nominal',
                    // hintText: "10000000",
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    goal.nominal = num.parse(value);
                  }),
            ],
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              Navigator.pop(context);
              GoalPage().goal.formkey.currentState.save();
              goal.saveData(id);
            },
            child: Text(
              "SUBMITE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: color,
          )
        ]).show();
  }

  editGoal(
    BuildContext context, {
    String title,
  }) {
    return Alert(
        context: context,
        title: title,
        content: Form(
          key: goal.formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Goal',
                    // hintText: "10000000",
                  ),
                  onSaved: (value) {
                    goal.goalname.value = value;
                  }),
              TextFormField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Nominal',
                    hintText: "10000000",
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (value) {
                    goal.goalcost.value = num.parse(value);
                  }),
            ],
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              Navigator.pop(context);
              GoalPage().goal.formkey.currentState.save();
            },
            child: Text(
              "SUBMITE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.blue,
          )
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          heading(user.image, user.username),
          mainBox(320, graphBar(pieDataTabungan, "tabungan"), "Financial Goal",
              plusMinus(context)),
          footerGraph(_bodyFooter("Goals", context)),
          secondBox(
              230,
              lastRecord(listTabungan,
                  listTabungan.length >= 4 ? 3 : listTabungan.length),
              "Last Record",
              footerLastRecord()),
          secondBox(320, incomeCard(listIncome, listIncome), "Income / Outcome",
              SizedBox()),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
