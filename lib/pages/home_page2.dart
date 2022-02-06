import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationPage2 extends StatefulWidget {
  static const String id = "/localization2";

  @override
  _LocalizationPage2State createState() => _LocalizationPage2State();
}

class _LocalizationPage2State extends State<LocalizationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(40),
                  alignment: Alignment.center,
                  child: Text("flutter",textAlign: TextAlign.center,).tr(),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    context.locale = Locale('en', 'US');
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("English"),
                ),
                MaterialButton(
                  onPressed: () {
                    context.locale = Locale('kr', 'KR');
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Korean"),
                ),
                MaterialButton(
                  onPressed: () {
                    context.locale = Locale('jpn', 'JPN');
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Japanese"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
