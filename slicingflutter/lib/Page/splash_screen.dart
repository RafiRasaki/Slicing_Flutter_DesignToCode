import 'dart:async';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
  }

  class _SplashPageState extends State<SplashPage>{ 

    @override
  void initState() {
    Timer(Duration(seconds: 7), (() {
      Navigator.pushNamedAndRemoveUntil(
        context, '/intermezzo', (route) => false);
    }));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(bottom: 50),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_iCVOfLVTa-oHOUXZWwXmWUg_sDFiMOfpQ&s',
              ),
            ),
            Text(
              'Rumah Makan Uda Rasaki',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ), 
               textAlign: TextAlign.center,
              ),
          ],
          ),
      ),
    );
  }
}