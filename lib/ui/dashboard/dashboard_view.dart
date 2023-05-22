import 'package:flutter/material.dart';

class DashboarView extends StatefulWidget {
  const DashboarView({super.key});

  @override
  State<DashboarView> createState() => _DashboarViewState();
}

class _DashboarViewState extends State<DashboarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(('Targets'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                const Text(('Ber - 1'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900)),
          ],
        ),
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 233, 215, 190),
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
              title: Text('Settings', style: TextStyle(color: Colors.white)),
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
      ),
      body: ListView(padding: EdgeInsets.all(12), children: const [
        ListTile(
          title: Text(
            'Program1',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          textColor: Colors.white,
          tileColor: Colors.teal,
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Program2',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          textColor: Colors.white,
          tileColor: Colors.teal,
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Program3',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          textColor: Colors.white,
          tileColor: Colors.teal,
        ),
        Divider(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Program4',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          textColor: Colors.white,
          tileColor: Colors.teal,
        ),
        Divider(
          height: 10,
        ),
      ]),
    );
  }
}
