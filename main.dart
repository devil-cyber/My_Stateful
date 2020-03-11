import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main()
{
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyButton extends StatefulWidget{
@override
MyButtonState createState(){
  return MyButtonState();
}
}
class MyButtonState extends State<MyButton>{
  int counter=0;
  List<String> spanishNumbers=[
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  String defaultText="Spanish numbers";
  void displaySNumbers(){
    setState(() {
      defaultText=spanishNumbers[counter];
      if(counter<9){
      counter=counter+1;
      }
      else{
        counter=0;
      }
    });
   }






  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('My stateful App'),
        backgroundColor: Colors.orange,
      ),
      body:Container(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text(defaultText,style: TextStyle(fontSize: 30.0)),
              Padding(padding:EdgeInsets.all(10.0),),
              RaisedButton(
                child:Text('Call numbers',style:TextStyle(
                  color:Colors.white,

                )),
                onPressed:displaySNumbers,
                color:Colors.orange,
              )
            ],
          ),
        ),
      ),

    );
  }

}