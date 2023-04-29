      import 'package:flutter/material.dart';
import 'package:sabak10_and_for_loop/home/user_page.dart';
import 'package:sabak10_and_for_loop/model.dart';
      final studentter = <Student>[daniar, dinara, hanzada, mirbek, aybek,];

      
      
      
      class loginPage extends StatefulWidget {
      const loginPage({super.key});

      @override
      State<loginPage> createState() => _loginPageState();
      }

      class _loginPageState extends State<loginPage> {
        String? _name;
        String? _gmail;
        void controlNameEmail(String name, String email) {
        int index = 0;  
  for (final student in studentter) {
    index ++;
    if(name == student.name && email == student.email){
      
     Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) =>  UserPage(
        student: student
        ),
        ),
     );
      break;
    }
    else{
       if(index == studentter.length){
ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content:
       Text('сиздин атыныз же почтаныз туура эмес!'),
       ),
       );
       } else {
        continue;
        //continue - bul "ULANT" degen soz!
       }
    }
 }
}
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
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS43TsGRAMYCCIQki8fZnhPCbGQ401uoO-Czw&usqp=CAU'),
      fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 35,
          right: 30,
          bottom:40 
          ),
        child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: const Color.fromARGB(0, 106, 123, 164).withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
        ),
          child: Center(
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
             Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: TextField(
              onChanged: (String value)
              { _name = value;
              
                print('валуе иштеди $value');
                print('валуе иштеди $_name');
              },
          
            decoration: const InputDecoration(
            border:OutlineInputBorder(),
            labelText: 'Name'
            ),
            
            ),
            ),
            Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: TextField( onChanged: (String value){
              _gmail = value;
              print('валуе иштеди $value');
              print('валуе иштеди $_gmail');
            },
            decoration: const InputDecoration(
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
            onPressed: (){
              controlNameEmail(_name!, _gmail!);
            }, 
            child: const
            Text('Login'),
            ),
            
            ],),
          ),
        ),
      ),
      ),
     
      );
      }
      }