import 'package:flutter/material.dart';


class Gallery extends StatefulWidget {
  
  
  @override
  createState() => GalleryState();
}

class GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Betta',style: TextStyle (color: Colors.red)),
        backgroundColor: Colors.white,
      ),
      body:  
     
      Container(
        child: ListGallery(),
        ),
        );

    
  }
}

class ListGallery extends StatefulWidget {
  @override
  _ListGallery createState() => _ListGallery();
}
 class _ListGallery extends State<ListGallery> {
   final List_item = [
     {
       "nama" : "Blue Rim",
       
       "pic" : "assets/images/bluerim.jpg",
     },
     {
       "nama" : "Nemo Galaxy",
       
       "pic" : "assets/images/nemogalaxy.jpg",
     },
     {
       "nama" : "Black Samurai",
       
       "pic" : "assets/images/blacksamurai.jpg",
     },
     {
       "nama" : "Super Red",
       
       "pic" : "assets/images/superred.jpg",
     },
     {
       "nama" : "White Scale",
       
       "pic" : "assets/images/whitescale.jpg",
     }, {
       "nama" : "Nemo Crown Tail",
       
       "pic" : "assets/images/nemocrown.jpg",
     },

   ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        itemCount: List_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Keterangan(
            nama: List_item[index]['nama'],
            gambar: List_item[index]['pic'],
          );
        }
        );
    } 
  }

class Keterangan extends StatelessWidget {
  final nama;
  
  final gambar;
  Keterangan({
    this.nama,
    
    this.gambar});
 @override
 Widget build(BuildContext context){
   return Card(
     child: Hero(
       tag: nama,
       child: Material(
         child: InkWell(
           onTap: (){},
           child: GridTile(
             footer: Container(
               color: Colors.grey,
               child: ListTile(
                 leading: Text(nama,style: TextStyle(color: Colors.white),),
                 
                 
                 ),
             ),
             child: Image.asset(gambar, fit: BoxFit.cover,),
           ),
           )
       ),
     ),
   );

 
 }
}