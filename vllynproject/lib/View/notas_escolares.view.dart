import 'package:flutter/material.dart';

class NotasEscolaresView extends StatefulWidget {
  const NotasEscolaresView({Key? key}) : super(key: key);

  @override
  Notas createState() => Notas();
}

class Notas  extends State<NotasEscolaresView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _returnAppBar(),
      body: null,
      
    );
  }

  AppBar _returnAppBar(){
    return AppBar(
      title: Text('Notas escolares'),
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {   Navigator.pop(context); },),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple, Colors.red])
        ),
      ),
    );
  }
}