import 'package:flutter/material.dart';
import 'package:program_valve/ui/dashboard/dashboard_viewmodel.dart';
import 'package:program_valve/ui/valve_Settings/valvesettings_view.dart';
import 'package:stacked/stacked.dart';

class ProgramItemWidget extends StatelessWidget {
  const ProgramItemWidget({
    required this.programName,
    super.key,
  });

  final String programName;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, viewModel, child) 
      {
         return GestureDetector(
        onTap: () =>  viewModel.goToValveSettings(),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
                color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          ),
          color: Colors.blueGrey[150],
          child: Column(
            children: [
              Row(
                children: [
                  Column(children: [
                    Text(
                      programName,
                      style: const TextStyle(
                        fontSize: 24.0,
                        color: Color.fromARGB(255, 108, 158, 209),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const Text('Not Ready',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ))
                  ]),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(children: [
                    Text(' Last Run: unknown',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                        )),
                    Text(' Next Run: 10 days ago ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                        ))
                  ]),
                ],
              ),
            ],
          ),
        ),
      );
      },
    );
  }
}
