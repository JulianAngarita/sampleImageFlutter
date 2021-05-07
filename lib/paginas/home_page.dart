import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      appBar: AppBar(
        title: Center(child: Text('Mi pagina principal'),),
      ),
      body: Center(child: Text('Hola Mundo'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.access_alarms),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Text('Drawer Content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_comment), label: 'Chat'),
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