import 'package:flutter/material.dart';

class IntermezzoPage extends StatelessWidget {
  const IntermezzoPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text('Rumah Makan Padang')),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
            //margin: const EdgeInsets.only(top: 100) ,
            padding: const EdgeInsets.fromLTRB(
            20, //left
            40, //top
            16, //right
            70 //bottom
            ),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.red,
                    offset: Offset(1, 3),
                  ),
                ]
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr_iCVOfLVTa-oHOUXZWwXmWUg_sDFiMOfpQ&s',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 100,
                      ),
                  ),

                    const SizedBox(height: 20,),

                    Text(
                      'Rumah Makan Masakan Padang',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[900],
                      ),
                  ),

                  const SizedBox(height: 30,),

                  const Text(
                      'Rumah Makan Nasi Padang Uda Rasaki menawarkan pengalaman kuliner autentik khas Minangkabau.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 12,
                      ),
                  ),
                  
                  const SizedBox(height: 40,),

                  TextButton(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(
                      context, '/homepage', (route) => false);
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
                    child: const Text('Jelahi Lebih Lanjut'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 180),
            Container(
              child: Column(
                children: [
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
