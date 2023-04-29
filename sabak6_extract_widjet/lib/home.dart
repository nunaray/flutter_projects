import 'package:flutter/material.dart';
import 'package:sabak6_extract_widjet/components/custom_button.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar( title: const Text("Components and constants",),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, 
      children: [
      Center(child: 
      SizedBox(width: 280, 
      child: Image.network("https://bbbl.dev/storage/images/18/35/61/25/derived/c7a60937e6aa5a609f1a316c939a4fa2.jpg"),
      ),
      ), 
     const CustomButton(icon: Icons.phone, text: 'менин телефонум',),
     const SizedBox(height: 10,),
    const CustomButton(icon: Icons.mail, text: "электрондук почта",),
 const SizedBox(height: 15,),
  
  ],
   ),
    );
  }
}

