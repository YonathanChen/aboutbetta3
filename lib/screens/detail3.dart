import 'package:flutter/material.dart';


class Detail3 extends StatelessWidget {

  static const String routeName = '/Detail3';
  final String title = 'Crown Tail Betta';
  final String description =
  '''
 Cupang crown tail menjadi mendunia karena variasi keindahannya. Disebut crown tail atau ekor mahkota, karena bila dibalik menghadap ke atas serit-serit pada ekornya terlihat seperti mahkota raja.

Jenis ikan cupang ini banyak sekali dikoleksi orang banyak karena hasil breeder yang cukup langka.
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
            'assets/images/crowntail.png',
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