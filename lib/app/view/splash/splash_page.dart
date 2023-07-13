import 'package:flutter/material.dart';
import 'package:flutteryefer/app/view/components/H1.dart';
import 'package:flutteryefer/app/view/components/shape.dart';
import 'package:flutteryefer/app/view/task/task_list_page.dart';
import 'package:flutteryefer/app/view/tarea/tarea_page.dart';

class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Shape()
                ],
              ),
      
              Image.asset(
                'alas.png',
                width: 141,
                height: 129,
              ),
            ],
          ),

            Stack(
              children: [
                
                SizedBox(height: 79),
                Image.asset(
                  'calavera.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 99),
              ],
            ),
          GestureDetector(
            onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const TareaPage();
                }));
              },
            child: const H1('Bienvenido a mi Aplicación')
          ),
          const SizedBox(height: 21),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32)),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const TaskListPage();
                }));
              },
              child: const Text(
                'Alistate los pantalones, que se te van a caer',
                textAlign:  TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}