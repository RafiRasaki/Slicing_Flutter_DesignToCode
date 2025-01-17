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
    Timer(Duration(seconds: 2), (() {
      Navigator.pushNamedAndRemoveUntil(
        context, '/intermezzo', (route) => false);
    }));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_iCVOfLVTa-oHOUXZWwXmWUg_sDFiMOfpQ&s',
                      fit: BoxFit.cover,
                      height: 180,
                      width: 300,
                      ),
                  ),
                  const SizedBox(height: 20),
            Text(
              'Rumah Makan \nUda Rasaki',
              style: TextStyle(
                fontSize: 25,
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