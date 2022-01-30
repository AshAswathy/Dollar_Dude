import 'package:expense_app/screens/screens.dart';
import 'package:expense_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Weekly Budget'),
      ),
      body: Stack(
        children:<Widget>[
          Form(
            child: ListView(
              children: [
                Padding(padding: const EdgeInsets.only(top: 20)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.fromLTRB(10,0,10,0),
                    labelText: "Enter weekly budget...",
                    icon: Icon(Icons.attach_money),
                  ),
                ),),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: new Container(
              child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/pie.png', width: 340, height: 340),
                  ]
              ),),
          ),
          Positioned(
            top: 323,
            left: 0,
            right: 0,
            child: new Container(
              child: Column(
                  children: <Widget>[
                    Image.asset('assets/images/bg.png', width: 500, height: 500),
                  ]
              ),),
          ),

        ],
      ),
    );
  }
}
