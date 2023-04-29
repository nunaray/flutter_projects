import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar:
     AppBar(title: const Text("SecondPage"),
     ),
      body: Column(
      children:  [Center(child: Image.network("https://img.freepik.com/premium-vector/vector-illustration-cartoon-cute-girl-programmer-coder-developer-designer_657235-204.jpg?w=2000")),
     SizedBox(height: 20,),
      const Text("Salam programmist", style: TextStyle(color: Colors.orange),)
 
     ],),
     );
  }
}

