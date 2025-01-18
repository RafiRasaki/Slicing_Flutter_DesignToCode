import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slicingflutter/Page/detai_page.dart';

class CustomOtherFood extends StatelessWidget{

  final String imageother;
  final String namamenuother;
  final String ratingother;
  final String kriteriaother;
  final String hargamakanan;

  const CustomOtherFood({
    Key? key, 
    required this.imageother,
    required this.namamenuother,
    required this.ratingother,
    required this.kriteriaother,
    required this.hargamakanan,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
        context, MaterialPageRoute(builder: (context)=> DetailPage())
        );
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

                const SizedBox(height: 5,),

                Row(
                  children: [
                    RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 13,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                    ignoreGestures: true,
                    ),

                const SizedBox(width: 7),

                    Text(
                    ratingother,
                    style: TextStyle(
                    fontSize: 12,
                    color: Colors.deepOrange[900],
                    ),
                  ),
                  ],
                ),
                ],
              ),
            ),
             Container(
              child: Column(
                children: [
                  Text(
                    hargamakanan,
                    style: TextStyle(
                      fontSize: 14,
                        color: Colors.deepOrange[900],
                    ),
                  )
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }
  
}