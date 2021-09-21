import 'package:flutter/material.dart';

class ButtonCalc extends StatefulWidget {
  
  String text = 'toto';
  Color color = Colors.red;
  Function() f = () => {};

  ButtonCalc({Key? key, required this.text, required this.color, required this.f}) : super(key: key);

  @override
  _ButtonStateCalc createState(){
    return _ButtonStateCalc(text: text, color: color, f: f);
  }
}

class _ButtonStateCalc extends State<ButtonCalc> {
  
  String text;
  Color color;
  Function() f = () => {};
  
  _ButtonStateCalc({required this.text, required this.color, required this.f});

  //_ButtonStateCalc(text,color,f);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.black54)
          ),
        )
        ,
        backgroundColor: MaterialStateProperty.all<Color>(this.color),
      ),
      child: Container(
        child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23.0,
          //height: 70,
          ),
        ),
      ),
      onPressed: this.f,  
    );
  }
}