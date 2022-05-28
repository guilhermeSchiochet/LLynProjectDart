import 'package:flutter/material.dart';
import 'package:vllynproject/View/notas_escolares.view.dart';

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
          gradient: LinearGradient(colors: [Colors.purple, Colors.red])
        ),
      ),
    );
  }

  Widget? _montaConteudo(){
    return returnBotao();
  }

  Widget returnBotao(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: ElevatedButton (
          style: ElevatedButton.styleFrom(
             primary: Color.fromRGBO(244, 67, 54, 1),
             onSurface: Colors.black,
             elevation: 20,
             shadowColor: Colors.black,
             fixedSize: Size(250, 50)
          ),
          child: Text('Nota'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotasEscolaresView())
            );
          },
        ),
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


