import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1;
  int secondDice = 1;
  void change(){setState(() 
            { firstDice = Random().nextInt(6) +1; 
            secondDice = Random().nextInt(6) +1;
            });  
            print(firstDice);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  const Color(0xff0A001F),
      appBar: AppBar(centerTitle: true , backgroundColor: Colors.white, 
     title: const Text('Тапшырма 5',style: TextStyle(color: Colors.black),
     
     ),
     elevation: 0,
    ),
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(firstDice == 6 || secondDice == 6)
        Container(color: const Color(0xff0A001F),
         child:
          const Text('jenish:)',
        style: TextStyle(color: Colors.orange, fontSize: 38,
         fontFamily:"SourceSerifPro-Black" ),
        
        ),
        ),
        const SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(children: [
          Expanded(child: InkWell(onTap: () {
            change();
          },
            child: Image.asset('images/dice$firstDice-png.png')
            )),
          const SizedBox
          (width: 25,),
          Expanded(child: InkWell(onTap: (){
            change();
          },
            child: Image.asset('images/dice$secondDice-png.png')
            )),
        ],
        ),
      ),
    ],
    ),
  );
}
}