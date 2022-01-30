import 'package:expense_app/screens/screens.dart';
import 'package:expense_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FuturePage extends StatelessWidget {
  const FuturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Implementation'),
      ),
      body: Stack(

            children: [
        Positioned(
        top: 20,
        left: 0,
        right: 0,
        child: new Container(
        child:SettingsCard(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    ),
                  );
                },
                icon: Icons.qr_code_scanner_rounded,
                title: 'QR Code Scanner',
              ),
        ),
        ),
        Positioned(
        top: 95,
        left: 0,
        right: 0,
        child: new Container(
        child:SettingsCard(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    ),
                  );
                },
                icon: Icons.monetization_on_sharp,
                title: 'Track expenses',
              ),),),

        Positioned(
        top: 175,
        left: 0,
        right: 0,
        child: new Container(
        child:SettingsCard(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    ),
                  );
                },
                icon: Icons.stacked_bar_chart,
                title: 'Set Budget',
              ),),),

        Positioned(
        top: 255,
        left: 0,
        right: 0,
        child: new Container(
        child:SettingsCard(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    ),
                  );
                },
                icon: Icons.account_balance_wallet_rounded,
                title: 'Savings',
              ),),),
              Positioned(
                top: 323,
                left: 0,
                right: 0,
                child: new Container(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/bgg.png', width: 400, height: 400),
                      ]
                  ),),
              ),


            ],

      ),
    );
  }
}
