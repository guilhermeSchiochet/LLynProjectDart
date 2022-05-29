import 'package:flutter/material.dart';

class Botao {

  final Size?    fixedSize;
  final double   padding;
  final Color?   primary;
  final Color?   onSurface;
  final Color?   shadowColor;
  final String?  titulo;
  final double?  elevation;
  final Function onPressed;
  
  Botao({
    required this.onPressed,
    required this.titulo,
    this.padding = 0.0,
    this.shadowColor,
    this.elevation,
    this.fixedSize,
    this.primary,
    this.onSurface
  });



   Widget returnBotao(){
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Center(
        child: ElevatedButton (
          style: ElevatedButton.styleFrom(
             primary: primary,
             onSurface: onSurface,
             elevation: elevation,
             shadowColor: shadowColor,
             fixedSize: fixedSize,
          ),
          child: Text(this.titulo!),
          onPressed: () => this.onPressed,
        ),
      ),
    );
  }

  Botao copyWith({
    Size?    fixedSize,
    double   padding = 0.0,
    Color?   primary,
    Color?   onSurface,
    Color?   shadowColr,
    String?  titulo,
    double?  elevation,
    required Function onPressed,
    
  }) {
    return Botao(
      onPressed:   onPressed,
      padding:     padding,
      titulo:      titulo        ?? this.titulo,
      primary:     primary       ?? this.primary ,
      elevation:   elevation     ?? this.elevation,
      fixedSize:   fixedSize     ?? this.fixedSize,
      onSurface:   onSurface     ?? this.onSurface,
      shadowColor: shadowColr    ?? this.shadowColor,
    );
  }
}