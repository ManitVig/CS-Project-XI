import 'package:flutter/material.dart';
import 'package:project_app/objects/element.dart';
import 'package:project_app/screens/homepage.dart';

class DetailScreen extends StatelessWidget {
  ChemicalElement element;
  Color elementColor;
  DetailScreen({Key? key, required this.element, required this.elementColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 13, 20),
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          element.name,
          style: TextStyle(color: elementColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14.0, left: 28.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Atomic Number: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.number,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Atomic Mass: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.atomic_mass,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Category: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.category,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Electronic Configuration: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.electronic_configuration_semantic,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Phase: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.phase,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Period: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.period,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Density: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.density,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Boiling Point: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.boil,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Melting Point: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.melt,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Discovered By: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.discovered_by,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Electronegativity (Pauling): ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.electronegativity_pauling,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Electron Affinity: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.electron_affinity,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Molar Heat: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Text(
                      element.molar_heat,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Summary: ',
                      style: TextStyle(color: elementColor, fontSize: 18.0),
                    ),
                    Flexible(
                      child: Text(
                        element.summary,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
