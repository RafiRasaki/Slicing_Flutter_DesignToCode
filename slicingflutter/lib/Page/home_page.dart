import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slicingflutter/widget/custom_menu.dart';
import 'package:slicingflutter/widget/custom_otherfood.dart';

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
                    namamenu: 'Rendang Daging',
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
                    ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  Text(
                    'Other Food',
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

            const CustomOtherFood(
              imageother: 'https://cdn-brilio-net.akamaized.net/news/2019/10/22/172646/1114926-1000xauto-14-resep-cara-membuat-ayam-bakar.jpg', 
              namamenuother: 'Ayam Bakar', 
              kriteriaother: 'Pedes Manis Smoky',
              hargamakanan: 'Rp.15.000',
              ratingother: '1.0k Review',
              ),

             const CustomOtherFood(
                imageother: 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/13/2023/07/26/IMG-20230726-WA0026-2682519124.jpg', 
                namamenuother: 'Telur Barendo', 
                kriteriaother: 'Asin Gurih Manis',
                hargamakanan: 'Rp.13.000',
                 ratingother: '2.8k Review',
              ),

              const CustomOtherFood(
                imageother: 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/5/30/12c42155-e49e-4f63-b443-d3804c36db60.jpg', 
                namamenuother: 'Gulai Cincang', 
                kriteriaother: 'Pedes Asin',
                hargamakanan: 'Rp.20.000',
                 ratingother: '1.5k Review',
              ),

              const CustomOtherFood(
                imageother: 'https://www.astronauts.id/blog/wp-content/uploads/2023/04/Resep-Ayam-Goreng-Serundeng-ala-Rumahan-yang-Nggak-Kalah-Enak-dari-Restoran.jpg', 
                namamenuother: 'Ayam Goreng', 
                kriteriaother: 'Gurih Manis',
                hargamakanan: 'Rp.15.000',
                 ratingother: '1.1k Review',
              ),

              const CustomOtherFood(
                imageother: 'https://cdn.idntimes.com/content-images/community/2022/04/kerupuk-jangek-3eba3d3bd7713d93e893d78a6f57e31c-db135b203b68d89946828651f625b2b1.jpg', 
                namamenuother: 'Kerupuk Kulit Gulai', 
                kriteriaother: 'Asin Pedes Rempah',
                hargamakanan: 'Rp.11.000',
                ratingother: '1.7k Review',
              ),

            const SizedBox(height: 10),

            Container(
              child: Row(
                children: [
                  Text(
                    'Drink',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange[900],
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 15),

            const CustomOtherFood(
              imageother: 'https://www.tehsariwangi.com/uploads/ar/article/370/3c6aeb79728eac58b4e6828fff670d99.jpg', 
              namamenuother: 'Teh Talua', 
              ratingother: '1.7k Review', 
              kriteriaother: 'Manis Teh Susu Telur', 
              hargamakanan: 'Rp.13.000'),

            const CustomOtherFood(
              imageother: 'https://img-global.cpcdn.com/recipes/2dc8cb6b278590b5/400x400cq70/photo.jpg', 
              namamenuother: 'Teh Tarik', 
              ratingother: '1.5k Review', 
              kriteriaother: 'Manis Teh Susu', 
              hargamakanan: 'Rp.8.000'),

              const CustomOtherFood(
                imageother: 'https://i1.wp.com/makanmana.net/wp-content/uploads/2019/02/P1310365.jpg?fit=1024%2C1024&ssl=1', 
                namamenuother: 'Es Pokat', 
                ratingother: '2.7k Review', 
                kriteriaother: 'Manis Dengan Buah Alpukat Serta Gula', 
                hargamakanan: 'Rp.13.000'),
          ],
        ),
      ),
    );
  }
}
