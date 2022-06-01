import 'package:flutter/material.dart';
import 'package:vllynproject/componente/base_botao.dart';


class Botao extends StatelessWidget implements BaseBotao {

  final Color cor;
  final String? titulo;
  final Color? iconColor;
  final Function? onPressed;

  Botao({
    this.onPressed,
    this.iconColor,
    this.titulo = '',
    this.cor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
       child: Text(this.titulo!, style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          primary: this.cor,
          onPrimary: Colors.black45,
          fixedSize: Size(144, 44),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
        ),
        onPressed: this.onPressed as void Function()?,
      
      ),
    );
  }
}