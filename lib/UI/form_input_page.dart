import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/Input_form_controller.dart';
import 'package:myfin/widget/text_form.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var match_parent = double.infinity;

    var _tabs = [
      Tab(text: "income"),
      Tab(text: "Outcome"),
    ];

    TabController tabController;

    @override
    initState() {
      super.initState();
      tabController = TabController(length: _tabs.length, vsync: this);
      DefaultTabController.of(context).animateTo(2);
    }

    @override
    void dispose() {
      tabController.dispose();
      super.dispose();
    }

    // Widget _incomeForm() {
    //   return
    // }

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("INPUT FORM"),
            backgroundColor: Colors.green[300],
            bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(6),
              ),
              tabs: _tabs,
              controller: tabController,
            ),
          ),
          body: TabBarView(
            children: [
              IncomeForm(),
              OutcomeForm(),
            ],
          )),
    );
  }
}

class OutcomeForm extends StatefulWidget {
  @override
  _OutcomeFormState createState() => _OutcomeFormState();
}

class _OutcomeFormState extends State<OutcomeForm> {
  final formkey = GlobalKey<FormState>();
  String username = ' ';
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red[50],
        child: Form(
            key: formkey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildTextForm('Keterangan', 60, username),
                buildTextForm('Category', 60, username),
                buildTextForm('Nominal', 60, username),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.red[200]),
                      child: Center(child: Text("Submit")),
                    ),
                  ),
                )
              ],
            )));
  }
}

class IncomeForm extends StatefulWidget {
  @override
  _IncomeFormState createState() => _IncomeFormState();
}

class _IncomeFormState extends State<IncomeForm> {
  InputFormController input = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[50],
        child: Form(
            key: input.formkey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildTextForm('Keterangan', 60, input.keterangan),
                buildTextForm('Category', 60, input.category),
                buildTextForm('Nominal', 12, input.nominal),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.green[200]),
                      child: Center(child: Text("Submit")),
                    ),
                    onTap: () {
                      _IncomeFormState().input.formkey.currentState.save();
                      input.saveData();
                      Get.back();
                    },
                  ),
                )
              ],
            )));
  }
}
