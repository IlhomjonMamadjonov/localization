import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationPage extends StatefulWidget {
  static const String id = "/localization";

  @override
  _LocalizationPageState createState() => _LocalizationPageState();
}

class _LocalizationPageState extends State<LocalizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localization"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Text("welcome").tr(),
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
                    context.locale = Locale('ru', 'RU');
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Russian"),
                ),
                MaterialButton(
                  onPressed: () {
                    context.locale = Locale('uz', 'UZ');
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("Uzbek"),
                ),
                MaterialButton(
                  onPressed: () {
                    context.locale = Locale('fr', 'FR');
                  },
                  color: Colors.orangeAccent,
                  textColor: Colors.white,
                  child: Text("French"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
