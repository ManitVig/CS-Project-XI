import 'package:flutter/material.dart';
import 'package:project_app/objects/element.dart';
import 'package:project_app/providers/elements_provider.dart';
import 'package:project_app/widgets/periodtable.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<ElementsProvider>(context, listen: false).getElements();
  }

  @override
  Widget build(BuildContext context) {
    List<ChemicalElement> elements =
        Provider.of<ElementsProvider>(context).elements;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 13, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 14, 14),
        title: const Text("Periodic Table"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
            child: SingleChildScrollView(
                child: PeriodicTableView(elements: elements))),
      ),
    );
  }
}
