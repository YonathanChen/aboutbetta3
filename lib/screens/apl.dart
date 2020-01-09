import 'package:flutter/material.dart';


class Apl extends StatelessWidget {

  
  final String title = 'About Betta';
  final String version = 'v1.0.0.';
  final String description =
  '''
 Aplikasi Ini Dibuat Oleh Yonathan Kurniawan Sistem Informasi 2017 Matana University
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
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
            'assets/images/andro.jpg',
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
                      color: Colors.grey,
                      fontSize: 20.0,
                      
                    )
                  ),
                  Text(
                    this.version,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      
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