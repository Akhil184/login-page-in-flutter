import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navg extends StatelessWidget{
  final padding=EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context){
    return Drawer(
    child:Material(
    color:Color.fromRGBO(50,75,205,1),
      child:ListView(
    children:<Widget> [
      const SizedBox(height:48),
      buildMenuItem(
text:"hh",
icon:Icons.people,
    ),
      buildMenuItem(
        text:"hh",
        icon:Icons.face,
      ),
      buildMenuItem(
        text:"hh",
        icon:Icons.backpack,
      ),
      ],
    ),
    ),
    );
  }
  Widget buildMenuItem({
  required String text,
  required IconData icon,
  }) {

final color = Colors.white;return ListTile
(
leading: Icon(icon,color:color),
title: Text(text,style:TextStyle(color:color)),
  onTap:(){},
);
}
  }

