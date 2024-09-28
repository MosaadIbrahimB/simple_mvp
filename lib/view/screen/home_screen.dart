import 'package:flutter/material.dart';
import 'package:mvp/model/api_modle.dart';
import 'package:mvp/view/screen/presenter/providel_person.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderPerson>(context);
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        provider.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : provider.personModel != null
                ? Center(
                    child: PersonWidget(personModel: provider.personModel!),
                  )
                : const Center(child: Text("No data")),
        ElevatedButton(
            onPressed: () {
              provider.fetchPersonData();
            },
            child: const Text("data"))
      ],
    ));
  }
}

class PersonWidget extends StatelessWidget {
  const PersonWidget({
    super.key,
    required this.personModel,
  });

  final PersonModel personModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("name :${personModel.name ?? ""}"),
        Text("age :${personModel.age ?? ""}"),
      ],
    );
  }
}
