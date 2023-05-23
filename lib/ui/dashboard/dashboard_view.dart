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
        centerTitle: true,
        title: const Column(
          children: [
            Text(('Targets'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                Text(('Ber - 1'),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900)),
          ],
        ),
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
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
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          GestureDetector(
            onTap: () {
           
              print("on tap click");
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                    color: Colors.grey, width: 1.0, style: BorderStyle.solid),
              ),
              color: Colors.blueGrey[150],
              child: Column(
                children: [
                  Container(
                    child: const Row(
                      children: [
                        Column(children: [
                          Text('1 Chilly',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Color.fromARGB(255, 108, 158, 209),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              )),
                          Text(' Not Ready',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              ))
                        ]),
                      ],
                    ),
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
          ),
          const SizedBox(
            height: 4.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                  color: Colors.grey, width: 1.0, style: BorderStyle.solid),
            ),
            color: Colors.blueGrey[150],
            child: Column(
              children: [
                Container(
                  child: const Row(
                    children: [
                      Column(children: [
                        Text('2 Chilly 2',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color.fromARGB(255, 108, 158, 209),
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            )),
                        Text(' Not Ready',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ))
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
