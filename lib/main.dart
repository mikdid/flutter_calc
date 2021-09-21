import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mikdid_calc/btn.dart';
//import 'package:window_utils/window_utils.dart';

void main() {

  if(Platform.isWindows || Platform.isLinux || Platform.isMacOS){
    //WindowUtils.setSize(Size(320,410));
    //WindowUtils.hideTitleBar();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var result = "0";
  var clearResult = false;
  String operator = "0";
  var firstOperand = "0";

  Color colorLastCol = Colors.lightBlue.shade400;
  Color colorFirstRow = Colors.lightBlue.shade300;
  Color colorSimpleCase = Colors.lightBlue.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (_) {
          //WindowUtils.startDrag(); // drag drop
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(children: [
                Container(
                  width:320,
                  height:100,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerRight,
                  color: Colors.black87,
                  child: Text(
                    result,
                    style:TextStyle(
                      fontSize: 50,
                      color:Colors.white,
                      fontFamily: 'Arial',
                      ),
                    ),
                  ),
              ]),
              Row(children: [
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'AC', color: colorFirstRow, f : () { setState(() { this.result = "0"; });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'+/-', color: colorFirstRow, f : () { setState(() { 

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      return;

                    if(result.length < 10) { //sinon on concatene 
                      if(result.contains('-')){
                        result = result.replaceAll("-", "");
                      } else {
                        result = "-$result";
                      }
                    }        

                   });
                  }),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'%', color: colorFirstRow, f : () { setState(() { 

                    result = (double.parse(result) / 100).toString();
                    clearResult = true;

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'/', color: colorLastCol, f : () { setState(() { 
                    
                    operator = "/";
                    firstOperand = result;
                    result = "0";

                    });
                  }),
                ),
              ],
              ),
              Row(children: [
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'7', color: colorSimpleCase, f : () { setState(() { 
                    
                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "7" ; 

                   });
                  }),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'8', color: colorSimpleCase, f : () { setState(() { 
                    
                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "8" ;

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'9', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "9" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'x', color: colorLastCol, f : () { setState(() { 

                    operator = "x";
                    firstOperand = result;
                    result = "0";

                   });
                   }),
                ), 
              ],
              ),
              Row(children: [
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'4', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "4" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'5', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "5" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'6', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "6" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'-', color: colorLastCol, f : () { setState(() { 
 
                    operator = "-";
                    firstOperand = result;
                    result = "0";

                   });}),
                ),
              ],
              ),
              Row(children: [
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'1', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "1" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'2', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "2" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'3', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "3" ; 

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'+', color: colorLastCol, f : () { setState(() { 
 
                    operator = "+";
                    firstOperand = result;
                    result = "0";

                   });}),
                ),
              ],
              ),
              Row(children: [
                SizedBox(
                  width: 160.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :'0', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }
                    
                    if(result.length == 1 && result == '0') //si c'est 0 qui est affiché à l'écran on vide
                      result = "";
                    
                    if(result.length < 10) //sinon on concatene 
                      result += "0" ; 


                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child:  ButtonCalc(key: UniqueKey(),text :',', color: colorSimpleCase, f : () { setState(() { 

                    if(clearResult == true){
                      result = "0";
                      clearResult = false;
                    }

                    if(!result.contains(".") && result.length < 10){
                      result += ".";
                    }

                   });}),
                ),
                SizedBox(
                  width: 80.0,
                  height:70.0,
                  child: ButtonCalc(key: UniqueKey(),text :'=', color: colorLastCol, f : () { setState(() { 

                    var num1 = double.parse(firstOperand);
                    var num2 = double.parse(result);

                    switch(operator) {
                      case '+':
                        result = (num1 + num2).toString();
                        break;
                      case '-':
                      result = (num1 - num2).toString();
                        break;
                      case '/':
                      result = (num1 / num2).toString();
                        break;
                      case 'x':
                      result = (num1 * num2).toString();
                        break;
                      default:
                    }

                    operator = "";
                    firstOperand = "0";
                    clearResult = true;

                   });}),
                ), 
                
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
