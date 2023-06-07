import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/exercises_models.dart';
import 'package:flutter_application_1/models/felling_model.dart';

class ExerciseView extends StatelessWidget {
  ExerciseView({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
      id: "EX001",
      nome: "Remada Baixa",
      treino: "treino A",
      comoFazer: "Segura a barra");

  final List<FellingModel> listFelling = [
    FellingModel(
        id: "SE001", sentindo: "Pouca ativação hoje", data: "2023-06-07"),
    FellingModel(
        id: "SE001", sentindo: "Ja senti uma ativação", data: "2023-07-10"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("${exerciseModel.nome} - ${exerciseModel.treino}")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Float foi clicado");
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar Foto"),
              ),
              const Text(
                "Como fazer ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(exerciseModel.comoFazer),
              const Divider(),
              const Text(
                "Como estou me sentindo ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listFelling.length, (index) {
                  FellingModel fellingCurrent = listFelling[index];
                  return Text(fellingCurrent.sentindo);
                }),
              ),
              const Divider(),
            ],
          ),
        ));
  }
}
