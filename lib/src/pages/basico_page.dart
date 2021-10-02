import 'package:flutter/material.dart';
class Basicopage extends StatelessWidget{
  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
          
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),

        ],
       )
      )
        );
  }
  Widget _crearImagen(){
return Container(
  width: double.infinity,
  child:   Image(
  
              image: NetworkImage('https://elcomercio.pe/resizer/EvcrwZWygiyVYcUQJqL9_fj5RJ8=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/2I6GBB733FELNHI3UWRFIVL6YU.jpg'),
  
           height: 200.0,
  
           fit: BoxFit.cover,
  
            ),
);
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
             padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
             child: Row(
               children: <Widget>[
                  Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text('Alfredo Valenzuela Youtuber', style: estiloTitulo),
                       SizedBox( height: 7.0,),
                       Text('Youtuber Carros y blogs', style: estiloSubTitulo ),
                     ]
                     ),
                 ),
    
                 Icon( Icons.star, color: Colors.red, size: 30.0),
                 Text('41', style: TextStyle( fontSize: 20.0) )
    
                   
               ]
             ),
           ),
    );
  }
  
  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

       _accion( Icons.call, 'Call'),
       _accion( Icons.near_me, 'Route'),
       _accion( Icons.share, 'Share'),
  
      ],
    );
  }


  Widget _accion(IconData icon, String texto ){
    return Column(
          children: <Widget>[
            Icon( icon, color: Colors.blue, size:40.0 ),
            SizedBox(height: 5.0),
            Text ( texto, style: TextStyle ( fontSize: 15.0, color: Colors.blue),)
          ],
        );
  }
  
  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Alfredo Valenzuela nació en noviembre de 1992 en Sonora y desde adolescente comenzó con la compra-venta de celulares, luego incursionó en el mundo de los autos y actualmente, además de ser youtuber, tiene un negocio para tunear vehículos, así como una tienda de celulares y un restaurante de hamburguesa',
       textAlign: TextAlign.justify,
        ),
      ),
      
    );
  }
  }