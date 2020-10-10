


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

final estilosTexto = TextStyle(fontSize:20.0);

final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 4.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks:', style: estilosTexto,),
            Text( '$conteo' , style: estilosTexto ,)
          ],
        ),
        ),
        
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola Mundo');
           // conteo++;
          },

        ),
    );
  }

}