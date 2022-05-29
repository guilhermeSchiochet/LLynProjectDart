import 'package:flutter/material.dart';
import 'package:vllynproject/componente/base_mensagem.dart';

class Alerta extends BaseMensagem{

  final String titulo;
  final String mensagem;
  final Function? tentarNovamente;
  final List<TextButton>? botoes;
  final bool fechaClickBackdrop;
  final bool usaScroll;

  Alerta({
    required this.titulo,
    required this.mensagem,
    this.tentarNovamente,
    this.botoes,
    this.fechaClickBackdrop = true,
    this.usaScroll = false,
  });

  @override
  void exibe({required BuildContext context}) {
    showDialog(
      barrierDismissible: this.fechaClickBackdrop,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(this.titulo),
        actions: _getListBotoes(),
        scrollable: this.usaScroll,
        content: Text(this.mensagem),
      ),
    );
  }

   List<TextButton> _getListBotoes() {
    List<TextButton> botoes = this.botoes ?? [];
    
    if(this.botoes == null) {
      botoes.add(
        TextButton(
         child: const Text('cancelar', style: TextStyle(color: Colors.lightBlue),),
          onPressed: () {},
        ),
      );
    }
    if(this.tentarNovamente != null) {
      botoes.add(
        TextButton(
         child: const Text('Confirmar', style: TextStyle(color: Colors.lightBlue),),
          onPressed: () {},
        ),
      );
    }
    return botoes;
  }

  Alerta copyWith({
    String? titulo,
    String? mensagem,
    Function? tentarNovamente,
    List<TextButton>? botoes,
  }) {
    return Alerta(
      titulo: titulo ?? this.titulo,
      mensagem: mensagem ?? this.mensagem,
      tentarNovamente: tentarNovamente ?? this.tentarNovamente,
      botoes: botoes ?? this.botoes,
    );
  }

}