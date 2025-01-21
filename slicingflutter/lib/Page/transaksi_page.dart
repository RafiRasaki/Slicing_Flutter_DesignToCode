import 'package:flutter/material.dart';
import 'package:slicingflutter/widget/custom_button.dart';

class TransaksiPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget mainDescription(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Text(
              'Transaksi Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange[900]
              ),
              )
          ],
        ),
      );
    }

    Widget waitingimage(){
        return Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://blog.modalku.co.id/wp-content/uploads/2021/01/Kemudahan-Pembayaran-dalam-Bisnis-dengan-Transaksi-Non-Tunai.jpg'
                    )
                  )
                ),
              ),
            ],
          ),
        );
    }

    Widget containerdetail(){
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 10),
        width: 100,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(18)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            width: 90,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                  'https://1.bp.blogspot.com/-cGt_Dt278Eg/XwGUKNuy-OI/AAAAAAAAPx8/Q3SN1dyfJk0H1-2gDdoUjqTt1wROnA5YgCK4BGAsYHg/d/Rendang%2BDaging%2BDapur%2BSiena%2B2.jpg'
                  ),
                ),
              )
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rendang Daging',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.deepOrange[900]
                    ),
                  ),
                  
                  const SizedBox(height: 10),

                  Text(
                    'Rp.30.000',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.deepOrange[900]
                    ),
                  ),
                ],
              ),
            ),
            /*Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Detail Pesanan')
                ],
              ),
            ),*/
          ],
        ),
      );
    }

    Widget description(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Text(
              'Metode Pembayaran',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange[900]
              ),
            )
          ],
        ),
      );
    }

    Widget methodePayment(){
      return Container(
        margin: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://www.tobekocigaretteshop.com/wp-content/uploads/2024/05/qris.png'
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 5),
              height: 70,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/1280px-Bank_Central_Asia.svg.png'
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget payButton(){
      return CustomButton(
        judul: 'Bayar Langsung', 
        margin: EdgeInsets.only(top: 20),
        onPressed: (){}
        );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 15
        ),
        children: [
          mainDescription(),
          waitingimage(),
          containerdetail(),
          description(),
          methodePayment(),
          payButton(),
        ],
      ),
    );
  }
  
}