import 'package:flutter/material.dart';

class ValveSettingsView extends StatefulWidget {
  const ValveSettingsView({super.key});

  @override
  State<ValveSettingsView> createState() => _ValveSettingsState();
}

class _ValveSettingsState extends State<ValveSettingsView> {
  final List<String> settnamelist = ["Set 1"," Set 2","Set 3"," Set 4","Set 5"," Set 6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings Page')),
      body: ListView.builder(itemCount: settnamelist.length,itemBuilder: (context, index){
        return ListTile(title: Text(settnamelist[index]),);
      },),
    );
  }
}