import 'package:flutter/material.dart';
import '../componente/botao.dart';

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
      body: this._montaConteudo(),
      
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

  
  Widget? _montaConteudo(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ],
    );
  }

}