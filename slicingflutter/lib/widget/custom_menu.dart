import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomMenu extends StatelessWidget{

  final String namamenu;
  final String hargaasli;
  final String hargadiskon;
  final String review;
  final String image;

  const CustomMenu({
    Key? key, 
    required this.namamenu,
    required this.hargaasli,
    required this.review,
    required this.image,
    required this.hargadiskon
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
            child: Image.network(
              image,
              height: 220,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                namamenu,
                style: TextStyle(
                  fontSize: 13,
                color: Colors.deepOrange[900],
                fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    hargadiskon,
                    style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrange[900],
                    fontWeight: FontWeight.bold,
                    ),
                    ),

                    const SizedBox(width: 8),

                    Text(
                  hargaasli,
                    style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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

                const SizedBox(width: 10),

                    Text(
                  review,
                    style: TextStyle(
                    fontSize: 12,
                    color: Colors.deepOrange[900],
                    ),
                  ),
                  ],
                ),
                const SizedBox(height: 30),

                TextButton(
                  onPressed: (){
                    print('Button Beli');
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.resolveWith((states) {
                      return EdgeInsets.symmetric(horizontal: 20, vertical: 16);
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      return Colors.red[700];
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith((states) {
                      return Colors.white;
                    }),
                    shape:  MaterialStateProperty.resolveWith((states) {
                      return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      );
                    }),
                  ) , 
                  child: const Text('Beli Sekarang'),
                ),
              ],
            ),
          )
        ],
      ) ,
    );
  }}