import 'package:flutter/material.dart';

class CustomPayment extends StatelessWidget{

  final String imagepayment;
  final String judulpayment;

  const CustomPayment({
    Key? key, 
    required this.imagepayment,
    required this.judulpayment,
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Payment Berhail');
      },
      child: Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.deepOrange,
                    width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 7),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            imagepayment
                            )
                          )
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            judulpayment,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepOrange[900]
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