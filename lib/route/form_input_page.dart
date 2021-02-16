import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:myfin/UI/income_form.dart';
import 'package:myfin/UI/outcome_form.dart';
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
