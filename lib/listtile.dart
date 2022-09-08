import 'package:flutter/material.dart';

class listtile extends StatefulWidget {
  const listtile({Key? key, required String title}) : super(key: key);

  @override
  State<listtile> createState() => _listtileState();
}

class _listtileState extends State<listtile> {
  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeksforGeeks'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.car_rental),
              title: Text('Car'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('Flight'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Icon(Icons.train),
              title: Text('Train'),
              trailing: Icon(Icons.more_vert),
            )
          ],
        )


        ),

      // body: Column(
      //   children: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         color: Colors.blue[50],
      //         child: ListTile(
      //           leading: const Icon(Icons.add),
      //           title: const Text(
      //             'GFG title',
      //             textScaleFactor: 1.5,
      //           ),
      //           trailing: const Icon(Icons.done),
      //           subtitle: const Text('This is subtitle'),
      //           selected: true,
      //           onTap: () {
      //             setState(() {
      //               txt = 'List Tile pressed';
      //             });
      //           },
      //         ),
      //       ),
      //     ),
      //     Text(
      //       txt,
      //       textScaleFactor: 2,
      //     )
      //   ],
      // ),
    );
  }
}
