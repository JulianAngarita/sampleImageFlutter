import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {

  @override
  Widget build( BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: Text('Galeria de Buhos'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.amber.shade300,
                Colors.yellow,
                Colors.yellowAccent
              ]
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child:Image.network(
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                          height: 280,
                        ),
                      ),
                      Text(
                        'Buho Carmesí',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10),
                        child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris rhoncus ante eget enim malesuada, vitae luctus sem dapibus. Nulla turpis augue, egestas non neque in, tincidunt tempus nisi.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.3
                          
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      )

                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}