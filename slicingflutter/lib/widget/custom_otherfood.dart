import 'package:flutter/material.dart';

class CustomOtherFood extends StatelessWidget{

  final String imageother;
  final String namamenuother;
  //final String ratingother;
  final String kriteriaother;

  const CustomOtherFood({
    Key? key, 
    required this.imageother,
    required this.namamenuother,
    //required this.ratingother,
    required this.kriteriaother,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Berhasil');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageother
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namamenuother,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.deepOrange[900],
                      fontWeight: FontWeight.bold

                    ),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    kriteriaother,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.deepOrange[900],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}