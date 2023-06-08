import 'package:flutter/material.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Puxada alta Pronada - Treino A")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Float foi clicado");
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar Foto"),
              ),
              const Text(
                "Como fazer ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                  "Segura com as duas mãos na barra, mantem a coluna reta e puxa"),
              Divider(),
              const Text(
                "Como estou me sentindo ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text("Senti bastante ativação hoje!"),
              Divider(),
            ],
          ),
        ));
  }
}
