import 'dart:math';

import 'package:flutter/material.dart';

class   BotonesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ) ,
            )
        ],

      ),
     bottomNavigationBar: _bottomNavigaitionBar(context),
      );      
  }

  Widget _fondoApp(){

    final gradiente = Container(
   width: double.infinity,
   height: double.infinity,
   decoration: BoxDecoration(
     gradient: LinearGradient(
       begin: FractionalOffset (0.0, 0.6),
       end: FractionalOffset (0.0, 1.0),
       colors: [
         Color.fromRGBO(52, 54, 101, 1.0),
         Color.fromRGBO(35, 37, 57, 1.0),
       ]
     )
   ),

    );
   
   final cajaRosa =Transform.rotate(
     angle: -pi / 5.0,
     child:  Container(
     height: 360.0,
     width: 360.0,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(80.0),
       color: Colors.red
     ),

   ),
   );
   
   
    Container(
     height: 360.0,
     width: 360.0,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(80.0),
       gradient: LinearGradient(
        colors: [
        Color.fromRGBO(236, 98, 188, 1.0),
        Color.fromRGBO(241, 142, 172, 1.0),
        ]
       )
     ),

   );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        ),
      ],
    );
  }

Widget _titulos(){
  return SafeArea(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Alfredo Valenzuela', style: TextStyle( color: Colors.white, fontSize:30.0, fontWeight: FontWeight.bold)),
          SizedBox( height:10.0),
          Text('Todo sobre el contenido y noticias', style: TextStyle( color: Colors.white, fontSize:20.0)),
        ],
      ),
    ),
  );

}
Widget _bottomNavigaitionBar(BuildContext context){
  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context). textTheme
      .copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 2.0))),

    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
      icon: Icon(Icons.video_settings, size: 30.0),
      title: Container()
       ),
         BottomNavigationBarItem(
      icon: Icon(Icons.new_releases, size: 30.0),
      title: Container()
       ),
         BottomNavigationBarItem(
      icon: Icon(Icons.contact_phone, size: 30.0),
      title: Container()
       ),
      ],
  ),
  );
      
}
    
Widget _botonesRedondeados() {
  return Table(
children: [
  TableRow(
    children: [
      _crearBotonRedondeado(),
      _crearBotonRedondeado(),
    ]
  ),
  TableRow(
    children: [
       _crearBotonRedondeado(),
      _crearBotonRedondeado(),
    ]
  ),

  TableRow(
    children: [
     _crearBotonRedondeado(),
      _crearBotonRedondeado(),
    ]
  ),

  TableRow(
    children: [
        _crearBotonRedondeado(),
      _crearBotonRedondeado(),
    ]
  )
],
  );
}
Widget  _crearBotonRedondeado(){
  return Container(
    height: 180.0,
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
         SizedBox( height: 5.0),
        CircleAvatar(
           backgroundColor: Colors.redAccent,
          radius:35.0,
          child: Icon(Icons.swap_calls_outlined, color:Colors.white, size: 30.0),
        ),
        Text('TV', style:TextStyle( color: Colors.pinkAccent)),
        SizedBox( height: 5.0)
      ],

    ),
  );
}
}
