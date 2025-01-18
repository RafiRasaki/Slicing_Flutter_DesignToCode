import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://1.bp.blogspot.com/-cGt_Dt278Eg/XwGUKNuy-OI/AAAAAAAAPx8/Q3SN1dyfJk0H1-2gDdoUjqTt1wROnA5YgCK4BGAsYHg/d/Rendang%2BDaging%2BDapur%2BSiena%2B2.jpg'
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Masakan Rendang Daging',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[900]
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Deskripsi Makanan',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.deepOrange[900]
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Text('Makanan ini khas sumatra barat yang terdiri \ndari komponen seperti kelapa parut, santan, cabai')
              ],
            ),
          )
        ],
      ),
    );
  }
  
}