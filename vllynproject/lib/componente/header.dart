import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          "LLynProject!",
          style: TextStyle(
            fontFamily: "VT323",
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 244, 67, 54),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Meu primeiro App",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(44),
          child: TextField(
            onChanged: (text) {},
            decoration: InputDecoration(
                labelText: "Procurar",
                hintText: "Informe tal dado",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ),
      ],
    );
  }
}
