import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContadorPageState();
  }

}


class _ContadorPageState extends State<ContadorPage> {

final _estilosTexto = TextStyle(fontSize:25.0);

int _conteo = 10;

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
            Text('Numero de taps:', style: _estilosTexto,),
            Text( '$_conteo' , style: _estilosTexto ,)
          ],
        ),
        ),
    
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // print('Hola Mundo');
           _conteo++;
          setState(() {
            
          });

          },

        ),
        Expanded(child: SizedBox()),
             FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            // print('Hola Mundo');
           _conteo--;
          setState(() {
            
          });

          },

        ),
         SizedBox(width: 10.0),
          FloatingActionButton(
          child: Icon(Icons.restore_from_trash),
          onPressed: () {
            // print('Hola Mundo');
           _conteo = 0;
          setState(() {
            
          });

          },

        ),
      ],
    );
  }

} 