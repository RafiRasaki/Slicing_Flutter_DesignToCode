import 'package:flat_3d_button/flat_3d_button.dart';
import 'package:flutter/material.dart';
import 'package:slicingflutter/Page/transaksi_page.dart';
import 'package:slicingflutter/widget/custom_button.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
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
              padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rendang Daging',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange[900]
                    ),
                  ),
                
                  Text(
                    'Rp.30.000',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi Makanan',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange[900]
                    ),
                  ),
                ],
              ),
            ),
      
            const SizedBox(height: 10),

            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.only(right: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Makanan khas padang yang dimana makanan ini terdiri dari beberapa komponen seperti bumbu rempah rempah, kelapa parut serta cabai merah menimbulkanrasa khas rendang',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.deepOrange[900]
                      ),
                      ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 15),

            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Jumlah Item',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.deepOrange[900],
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 5),
                  
                  Container(
                    child: Row(
                      children: [
                        Flat3dButton.icon(
                          onPressed: (){
                          
                          }, 
                          icon: Icons.remove
                        ),
                        
                        const SizedBox(width: 10),

                        Container(
                          child: Row(
                            children: [
                              Text('0')
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),

                        Flat3dButton.icon(
                          onPressed: (){
        
                          }, 
                          icon: Icons.add,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
             

            const SizedBox(height: 10),

            Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Catatan Pesanan',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange[900]
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Silahkan Masukan Pesanan ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),

          const SizedBox(height: 20),
            CustomButton(
              judul: 'Bayar Pembelian', 
              lebarbutton: 300,
              onPressed: (){
                print('Button Bayar Berhasil');
                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => TransaksiPage())
                );
              }
            ),
          ],
        ),
        ],
      ),
    );
  }
  
}