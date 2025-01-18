import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{

   final String judul;
   final double lebarbutton;
   final Function() onPressed;
   final EdgeInsets margin;

  const CustomButton({
    Key? key, required this.judul,
    this.lebarbutton=double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: lebarbutton,
      height: 35,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          
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
        child: Text(judul),
      )
    );
  }
  
}