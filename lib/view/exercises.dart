import 'package:flutter/material.dart';
import 'package:flutter_application_1/_commons/colors.dart';
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
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                exerciseModel.nome,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                exerciseModel.treino,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: MyColors.blueDark,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Float foi clicado");
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar Foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Tirar Foto"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Como fazer ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(exerciseModel.comoFazer),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Como estou me sentindo ?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listFelling.length, (index) {
                  FellingModel fellingCurrent = listFelling[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(fellingCurrent.sentindo),
                    subtitle: Text(fellingCurrent.data),
                    leading: const Icon(Icons.double_arrow_rounded),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        print("Deletar ${fellingCurrent.sentindo}");
                      },
                    ),
                  );
                }),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
