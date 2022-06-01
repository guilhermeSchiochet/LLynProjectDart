import 'package:flutter/material.dart';
import 'package:vllynproject/View/notas_escolares.view.dart';
import 'package:vllynproject/componente/botao.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromRadius(30),
        child: this._returnAppBar(),
      )
    );
  }

  AppBar _returnAppBar(){
    return AppBar(
      title: Text('LLynProject'),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 156, 39, 176), Color.fromARGB(255, 244, 67, 54)])
        ),
      ),
    );
  }

  Widget? _montaConteudo(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        this.returnBotao(),
      ],
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
          UserAccountsDrawerHeader(accountName: Text(nome), accountEmail: Text(gmail),
          decoration: BoxDecoration(
             gradient: LinearGradient(colors: [Colors.purple, Colors.red])
          ),
            currentAccountPicture: Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                backgroundColor: Colors.transparent,
              ),
            ),
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


