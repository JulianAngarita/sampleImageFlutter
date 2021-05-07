import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: Center(child: Text('Mi pagina principal'),),
      ),
      body: Center( 
        child: Container(
          alignment: Alignment.center,
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50)
            ),
            /*
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 20
              )
            ],
            */
            gradient: LinearGradient(
              colors: [
                Colors.black12,
                Colors.black26,
                Colors.black38
              ]
            ),
            color: Colors.black12,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris rhoncus ante eget enim malesuada, vitae luctus sem dapibus. Nulla turpis augue, egestas non neque in, tincidunt tempus nisi. Sed pulvinar quam at velit hendrerit, quis sagittis sapien posuere. Nam ultricies lorem arcu, ac tincidunt risus fermentum vitae. Phasellus et dignissim ante. Morbi magna neque, ultricies at augue id, dignissim sollicitudin sapien. Praesent commodo nulla sapien, nec aliquam urna malesuada vel. Etiam enim magna, tristique vitae lacus vel, tempus blandit leo.",
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              letterSpacing: 2
            ),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.access_alarms),
        hoverColor: Colors.amber
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Text('Drawer Content'),
        
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Drawer content')
        ),
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