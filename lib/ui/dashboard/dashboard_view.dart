import 'package:flutter/material.dart';
import 'package:program_valve/ui/dashboard/dashboard_viewmodel.dart';
import 'package:program_valve/ui/dashboard/widgets/drawer_widget.dart';
import 'package:program_valve/ui/dashboard/widgets/program_item_widget.dart';
import 'package:stacked/stacked.dart';

class DashboarView extends StatefulWidget {
  const DashboarView({super.key});

  @override
  State<DashboarView> createState() => _DashboarViewState();
}

class _DashboarViewState extends State<DashboarView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Column(
                children: [
                  Text(('Targets'),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                  Text(('Ber - 1'),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w900)),
                ],
              ),
              automaticallyImplyLeading: true,
            ),
            drawer: const DraweWidget(),
            body: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) => ProgramItemWidget(programName: viewModel.programNameList[index],),
              separatorBuilder: (context, index) => const SizedBox(
                height: 8,
              ),
              itemCount: viewModel.programNameList.length,
            ));
      },
    );
  }
}
