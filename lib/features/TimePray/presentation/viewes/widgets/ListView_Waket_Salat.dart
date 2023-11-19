import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/widgets/Container_Waket_Salah.dart';

class ListViewWaketSalat extends StatefulWidget {
  ListViewWaketSalat({Key? key}) : super(key: key);

  @override
  State<ListViewWaketSalat> createState() => _ListViewWaketSalatState();
}

class _ListViewWaketSalatState extends State<ListViewWaketSalat> {
  late final foramte = DateFormat.jm().format(DateTime.now());

  List<bool> selectedIndices = List.generate(7, (index) => true);
  List<bool> soundStates = List.generate(7, (index) => true);

  void toggleSelection(int index) {
    setState(() {
      selectedIndices[index] = !selectedIndices[index];
    });
  }

  void toggleSound(int index) {
    setState(() {
      soundStates[index] = !soundStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            child: GestureDetector(
              onTap: () {
                toggleSelection(index);
              },
              child: ContainerWaketSalah(
                  index: index,
                  selectedIndices: selectedIndices,
                  toggleSound: toggleSound,
                  foramte: foramte,
                  soundStates: soundStates),
            ),
          );
        },
      ),
    );
  }
}
