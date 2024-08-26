
import 'package:flutter/material.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight, 
              end: Alignment.bottomLeft, 
              colors: [
                Color.fromARGB(255, 12, 38, 145),  
                Color.fromARGB(255, 34, 156, 249), 
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, //VERTICAL
            children: [
              _textLoginRotated(), 
              SizedBox(height: 50),  
              _textRegisterRotated(), 
              SizedBox(height:  MediaQuery.of(context).size.height * 0.20), 
            ],
          )
        ), 
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 35), 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), 
              bottomLeft: Radius.circular(35), 
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,  
              end: Alignment.bottomLeft, 
              colors: [
                Color.fromARGB(255, 189, 189, 189), 
                Color.fromARGB(255, 245, 245, 245)
              ]
            )
          ),
          child: Column(
            children: [
              
            ],
          )
        ), 
      ],
    );   
  }

  Widget _textRegisterRotated(){
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Register', 
        style: TextStyle(
          fontSize: 24, 
          color: Colors.white,  
          fontWeight: FontWeight.bold
        )
      ),
    ); 
  }

  Widget _textLoginRotated(){
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login', 
        style: TextStyle(
          fontSize: 20, 
          color: Colors.white,  
        )
      )
    ); 
  }
}