import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slicingflutter/widget/custom_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              child: Row(
                children: [
                  Text(
                    'Best Seller Food',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange[900],
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
           const SizedBox(height: 10),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 CustomMenu(
                  namamenu: 'Sate Padang', 
                  hargaasli: 'Rp.30.000', 
                  review: '2.1k Review', 
                  image: 'https://dolanyok.com/wp-content/uploads/2020/03/Sate-Padang.jpg', 
                  hargadiskon: 'Rp,20.000'
                  ),

                  CustomMenu(
                    namamenu: 'Masakan Daging Rendang',
                    hargaasli: 'Rp.40.000', 
                    review: '3.2k Review', 
                    image: 'https://1.bp.blogspot.com/-cGt_Dt278Eg/XwGUKNuy-OI/AAAAAAAAPx8/Q3SN1dyfJk0H1-2gDdoUjqTt1wROnA5YgCK4BGAsYHg/d/Rendang%2BDaging%2BDapur%2BSiena%2B2.jpg', 
                    hargadiskon: 'Rp.30.000',
                  ),

                  CustomMenu(
                    namamenu: 'Kepala Kakap', 
                    hargaasli: 'Rp.70.000', 
                    review: '1.4k Review', 
                    image: 'https://s1.bukalapak.com/img/6251193953/w-1000/IMG_20181018_063559_scaled.jpg', 
                    hargadiskon: 'Rp.50.000'
                    ),
                  
                  CustomMenu(
                    namamenu: 'Ayam Pop', 
                    hargaasli: 'Rp.20.000', 
                    review: '4.3k Review', 
                    image: 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/03/06/Ayam-Pop-Padang-1154509376.jpg', 
                    hargadiskon: 'Rp.15.000'
                    ),
                  
                  CustomMenu(
                    namamenu: 'Dendeng Balado', 
                    hargaasli: 'Rp.35.000', 
                    review: '1.5k Review', 
                    image: 'https://img.okezone.com/content/2021/02/26/301/2368632/dendeng-balado-pedesnya-nampol-banget-begini-resep-dan-cara-bikinnya-5k5eIj1HVT.jpg', 
                    hargadiskon: 'Rp.28.000'
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
