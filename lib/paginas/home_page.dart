import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: Center(child: Text('Galeria de Buhos'),),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 250,
          height: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50)
            ),
            gradient: LinearGradient(
              colors: [
                Colors.black12,
                Colors.black26,
                Colors.black38
              ]
            ),
            color: Colors.black12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Esto es una galeria de Buhós, disfrute la imagenes, por favor.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                ),
              ),
              Text(
                "Por favor, pulse el boton 'fotos'",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  ),
              )
            ],
          )
          

        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {Navigator.pushNamed(context, i == 1 ? '/images' : 'home');} ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: 'Fotos',
          ),
        ],
      ),
      // persistentFooterButtons: [
      //   TextButton(
      //     onPressed: () {},
      //     child: Text('Pagina de inicio'),
      //   ),
      //   TextButton(
      //     onPressed: () {},
      //     child: Text('Otra pagina'),
      //   )
      // ],
    );
  }
}