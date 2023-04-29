      import 'package:flutter/material.dart';
      class loginPage extends StatefulWidget {
      const loginPage({super.key});

      @override
      State<loginPage> createState() => _loginPageState();
      }

      class _loginPageState extends State<loginPage> {
      @override
      Widget build(BuildContext context) {
      return  Scaffold( 
      appBar: AppBar(centerTitle: true, 
      title: Text('loginPage'.toUpperCase()),
      ),
    
    
      body: Container(decoration: const BoxDecoration(
      image: DecorationImage(
      image:
      NetworkImage(
      'https://amiel.club/uploads/posts/2022-03/thumbs/1647670027_6-amiel-club-p-kartinki-s-naushnikami-9.jpg'),
      fit: BoxFit.cover)
      ),
      child: Column(
       
      mainAxisAlignment: MainAxisAlignment.center,
      children:[ Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      const[
      FlutterLogo(size: 70,),
      Text('Flutter', style: 
      TextStyle(fontSize: 30, color: Colors.pink,),
      ),
    
      ],),
          
      const Text('Welcome!', 
      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
      ),
      const Text('Keep your data safe'),
      const Padding(
      padding: EdgeInsets.only(left: 15,right: 15,top: 15),
      child: TextField(
      decoration: InputDecoration(
      border:OutlineInputBorder(),
      labelText: 'Name'
      ),
      
      ),
      ),
      const Padding(
      padding: EdgeInsets.only(left: 15,right: 15,top: 15),
      child: TextField(
      decoration: InputDecoration(
      border:OutlineInputBorder(),
      labelText: 'Gmail'
      ),
      
      ),
      ),
      const SizedBox(height: 10,
      ),
      ElevatedButton(style: 
      ElevatedButton.styleFrom(
      minimumSize:const Size(200, 48),
      ),
      onPressed: (){}, 
      child: const
      Text('Login'),
      ),
      
      ],),
      ),
     
      );
      }
      }