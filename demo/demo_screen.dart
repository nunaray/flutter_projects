import 'package:flutter/material.dart';
import 'package:sabak11_piano_app_uii/components/demo_black_key.dart';
import 'package:sabak11_piano_app_uii/components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        height: 350,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                //ak knopka uchun
                return DemoWhiteKey();
              },
            ),
            // kara knopka uchun
            Row(
              children: const [
                SizedBox(
                  width: 50,
                ),
                DemoBlackkey(),
                SizedBox(
                  width: 20,
                ),
                DemoBlackkey(),
                SizedBox(
                  width: 180,
                ),
                DemoBlackkey(),
                SizedBox(
                  width: 20,
                ),
                DemoBlackkey(),
              ],
            )
          ],
        ),
      )),
    );
  }
}
