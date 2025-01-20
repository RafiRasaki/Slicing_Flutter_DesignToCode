import 'package:flutter/material.dart';
import 'package:slicingflutter/widget/custom_button.dart';

class TransaksiPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Text('Halaman Transaksi')
              ],
            ),
          ),
        ]
      ),
    );
  }
  
}