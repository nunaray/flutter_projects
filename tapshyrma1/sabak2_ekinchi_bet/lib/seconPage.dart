// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart' show AppBar, BorderRadius, BorderSide, BuildContext, Card, Center, Colors, Column, FontWeight, MainAxisAlignment, RoundedRectangleBorder, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Theme, Widget;
class EkinchiBet extends StatelessWidget {
 const EkinchiBet({super.key, required this.count});
final int count;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar (
      backgroundColor: Colors.grey, 
      title: const Center(child: Text("Тапшырма 2",style: TextStyle(color: Colors.black),)),
      elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Card(color: Colors.grey,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(10),
             ),
             child: SizedBox(width: 480,height: 50,
             child: Center(child: Text("Сан: $count",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),),
             ),
          
      
        ],),
      ),
      );
  }
}