import 'package:flutter/material.dart';

class TareaPage extends StatefulWidget {
  const TareaPage({Key? key}) : super(key: key);

  @override
  State<TareaPage> createState() => _TareaPageState();
}

class _TareaPageState extends State<TareaPage> {
  int count = 0;
  List<String> tareas = []; // Lista de tareas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea List'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Center(child: Text('Atrás')),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Lista de Tareas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: tareas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tareas[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        tareas.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _agregarTarea();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _agregarTarea() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String nuevaTarea = '';
        return AlertDialog(
          title: const Text('Agregar Tarea'),
          content: TextField(
            onChanged: (value) {
              nuevaTarea = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  tareas.add(nuevaTarea);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}
