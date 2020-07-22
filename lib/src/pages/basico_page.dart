import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo=TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  final estiloSubTitulo=TextStyle(fontSize: 18.0,color:Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
          _crearImagen(),
          _title(),
          _crearActions(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),

          ],
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return  Image(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Neckertal_20150527-6384.jpg/1200px-Neckertal_20150527-6384.jpg')
          );
  }

  Widget _title(){
    return  Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Montañas y bosque',style: estiloTitulo),
                      SizedBox(height: 7.0),
                      Text('Cabañas ubicadas de la ladera',style: estiloSubTitulo),
                    ],
                  ),
                ),
                Icon(Icons.star,color: Colors.red,size: 30.0,),
                Text('51',style: TextStyle(fontSize: 20.0),)
              ],
            ),
          );
  }

  Widget _crearActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call,'CALL'),
        _action(Icons.near_me,'ROUTE'),
        _action(Icons.share,'SHARE'),
      ],
    );
  }
  Widget _action(IconData icon,String text){
    return Column(
          children: <Widget>[
            Icon(icon,color: Colors.blue,size: 40.0,),
            SizedBox(height: 5.0,),
            Text(text,style: TextStyle(fontSize: 15.0,color: Colors.blue),)
          ],
        );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}