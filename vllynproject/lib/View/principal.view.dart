import 'package:flutter/material.dart';
import 'package:vllynproject/View/notas_escolares.view.dart';
import 'package:vllynproject/componente/botao.dart';
import 'package:vllynproject/componente/header.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  _ListaEnqueteViewState createState() => _ListaEnqueteViewState();
}

class _ListaEnqueteViewState extends State<PrincipalView> {

  String gmail = 'gpkguilherme123@gmail.com';
  String nome = 'guilhherme schiochet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: returnEndDrawer(), 
      body: this._montaConteudo(),
    );
  }

  Widget? _montaConteudo(){
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(),
            this.returnBotao(),
          ],
        )
    );
  }

  Widget returnBotao(){
    return Center(
      child: Botao(
        cor: Color.fromARGB(255, 244, 67, 54),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NotasEscolaresView())),
        titulo: 'Notas',
      ),
    );

  }

  Widget returnEndDrawer(){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(nome),
            accountEmail: Text(gmail),
          ),
          ListTile(
            title:  Text("Fechar"),
            trailing:  Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

}


