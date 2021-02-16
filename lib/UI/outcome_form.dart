import 'package:flutter/material.dart';

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
