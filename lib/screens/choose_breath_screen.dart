import 'package:flutter/material.dart';
import 'package:graph/data/breath_data.dart';
import 'package:graph/screens/graph_screen.dart';
import 'package:graph/widgets/breath_row_widget.dart';

class ChooseBreathScreen extends StatelessWidget {
  const ChooseBreathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Breaths'),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.separated(
                    itemCount: listOfBreath.length,
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemBuilder: (context, index) {
                      var selectedBreath = listOfBreath[index];

                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    GraphScreen(selectedBreath))),
                        child: BreathRowWidget(
                          selectedBreath,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
