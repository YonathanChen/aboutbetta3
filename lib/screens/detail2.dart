import 'package:flutter/material.dart';


class Detail2 extends StatelessWidget {

  static const String routeName = '/Detail2';
  final String title = 'Halfmoon Betta';
  final String description =
  '''
Seperti namanya, jenis ikan cupang halfmoon memiliki sirip dan ekor yang seolah menyatu membentuk setengah lingkaran. Ikan cupang Halfmoon ini dikenal dan dipelihara karena keindahannya.

Varian warnanya juga kalah menarik, mulai dari merah menyala, kuning, bahkan putih.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('About Betta',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.red
        ),),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/halfmoon.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children:  [
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,                
                children:  [                  
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ],
              ),
              Container(
                width: 130.0,
              ),
              
            ],
          ),          
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0, 
              ),
              softWrap: true,
            ),
          ),
          
        ],
      ),
    );
  }
}