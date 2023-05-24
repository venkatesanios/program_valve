import 'package:flutter/material.dart';
import 'package:program_valve/ui/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DraweWidget extends ViewModelWidget<DashboardViewModel> {
  const DraweWidget({super.key});
  @override
  Widget build(BuildContext context,DashboardViewModel viewModel) {
    return Drawer(
              backgroundColor: const Color.fromARGB(255, 233, 215, 190),
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      'home',
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    tileColor: Colors.purple,
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title:
                        Text('Settings', style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    tileColor: Colors.purple,
                  ),
                  Divider(
                    height: 1,
                  ),
                  ListTile(
                    title: Text('about', style: TextStyle(color: Colors.white)),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    tileColor: Colors.purple,
                  ),
                  Divider(
                    height: 1,
                  ),
                ],
              ),
            );
  }
}