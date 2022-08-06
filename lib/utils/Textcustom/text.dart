import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextHead extends StatelessWidget {
  const TextHead({Key? key,required this.text,this.color,this.fontsize,this.fweight}) : super(key: key);
  final String text;
  final Color? color;
  final double? fontsize;
  final  FontWeight ? fweight;
  @override
  Widget build(BuildContext context) {
    return
    Text(text,style: TextStyle(  color:color ?? Color.fromARGB(255, 0, 0, 0),fontSize:fontsize?? 23,fontFamily: 'Hind',fontWeight:fweight?? FontWeight.bold),);
  }
}