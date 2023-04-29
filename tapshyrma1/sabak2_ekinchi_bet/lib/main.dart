import 'package:flutter/material.dart';
import 'package:sabak2_ekinchi_bet/seconPage.dart';
// импорт бул бардык флаттерге тиешелүү нерселерди өзүнө камтыйт
//void:эч нерсе кайтарбайт
//main:негизги функция
// (): функциянын функция экенин билдирет
// {}:функциянын денеси
void main() {
  //runApp:сиздин тиркемеңизди баштоо функциясы ал ичине виджет алат
  //MyApp():класс же виджеттин аталышы
  runApp(const MyApp());
}
// class MyApp: класс
//extends: мурас алуу => StatelessWidget
class MyApp extends StatelessWidget {
  //класстын конструктору
  const MyApp({super.key});
//  @override
  @override
  //build:Куруу ал өзүнө виджет алат
  //BuildContext : бул адрес виджеттерди көзөмөлдөөчү вектор
  Widget build(BuildContext context) {
    //return: кайтарат эмнени кайтарат? MaterialAppты кайтарат
    //MaterialApp:материалдык дизайны бар жаңы флаттер колдонмосун түзөт
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //theme: бул тема MaterialAppка тиешелүү свойство
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      // home:MaterialAppтын свойствосу
      // MyHomePage() бул бир виджет же класс
      home: const MyHomePage(title: 'Futter Demo Home Page'),
    );
  }
}

 class MyHomePage extends StatefulWidget {
     const MyHomePage({super.key, required String title});

      @override
    State<MyHomePage> createState () => _MyHomePageState();
 }

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
 @override
 Widget build(BuildContext context) {
  var container = Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Сан: $index", 
              style: const TextStyle(fontSize: 20),)),
              );
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar (
      backgroundColor: Colors.grey, 
      title: const Center(child: Text("Тапшырма 1",style: TextStyle(color: Colors.black),)),
      elevation: 0,
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            container,
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      index--;
                    });
                  }, child: const Icon(Icons.remove)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      index++;
                    });
                  }, child: const Icon(Icons.add)),
                   ],
              ),
              const SizedBox(height: 30,),
              IconButton(onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => EkinchiBet(count: index,)));
              }, icon: const Icon(Icons.next_plan,size: 50,color: Colors.blue,))
              ],
            ),
      ),
       ),
      );
    }
} 

 
 