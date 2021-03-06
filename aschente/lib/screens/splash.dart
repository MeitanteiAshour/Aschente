import 'package:aschente/helpers/auth_provider.dart';
import 'package:aschente/helpers/color_pallete.dart';
import 'package:aschente/helpers/strings.dart';
import 'package:aschente/helpers/utils.dart';
import 'package:aschente/screens/authentication.dart';
import 'package:flutter/material.dart';
import 'package:aschente/screens/home.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// [todo] Fetch data and load login or home screen.
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) {
        Future.delayed(
          Duration(seconds: 2),
          () async {
            return Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomeWidget()),
                (Route<dynamic> route) => false);
          },
        );
      },
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        Strings.appName,
                        style: TextStyle(
                          color: Pallete.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
