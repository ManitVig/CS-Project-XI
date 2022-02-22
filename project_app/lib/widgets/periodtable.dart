import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:project_app/objects/element.dart';
import 'package:project_app/screens/details_screen.dart';

class PeriodicTableView extends StatelessWidget {
  List<ChemicalElement> elements;
  PeriodicTableView({Key? key, required this.elements}) : super(key: key);

  static const Map<String, Color> categoryColors = {
    'actinide': Color(0xffe91e63),
    'alkali metal': Color.fromARGB(255, 245, 167, 78),
    'alkaline earth metal': Color(0xffff8975),
    'diatomic nonmetal': Color(0xff57dcbe),
    'polyatomic nonmetal': Color(0xff57dcbe),
    'lanthanide': Color.fromARGB(255, 216, 126, 126),
    'metalloid': Color.fromARGB(255, 94, 169, 245),
    'noble gas': Color.fromARGB(255, 122, 243, 152),
    'post-transition metal': Color.fromARGB(255, 201, 179, 241),
    'transition metal': Color.fromARGB(255, 234, 134, 252),
  };

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
        gridFit: GridFit.loose,
        columnSizes: repeat(20, [1.fr]),
        rowSizes: repeat(11, [auto]),
        columnGap: 0.4,
        rowGap: 0.4,
        children: [
          for (final e in elements)
            AspectRatio(
              aspectRatio: 40.1 / 42.4,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              backgroundColor: Colors.transparent,
                              content: SizedBox(
                                height: 900,
                                width: 1200,
                                child: DetailScreen(
                                  element: e,
                                  elementColor: categoryColors[e.category] ??
                                      Color.fromARGB(255, 250, 249, 166),
                                ),
                              ),
                            ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: categoryColors[e.category] ??
                                Color.fromARGB(255, 250, 249, 166))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            e.symbol,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: categoryColors[e.category] ??
                                    Color.fromARGB(255, 250, 249, 166)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            e.name,
                            style: TextStyle(
                                fontSize: 10.0,
                                color: categoryColors[e.category] ??
                                    Color.fromARGB(255, 250, 249, 166)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ).withGridPlacement(
                columnStart: int.parse(e.xpos), rowStart: int.parse(e.ypos))
        ]);
  }
}
