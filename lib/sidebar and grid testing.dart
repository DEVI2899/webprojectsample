import 'package:flutter/material.dart';
import 'package:webproject/profile.dart';
import 'package:webproject/sidebar.dart';

import 'grid.dart';

class tesing extends StatefulWidget {
  const tesing({Key? key, required String title}) : super(key: key);

  @override
  State<tesing> createState() => _tesingState();
}

class _tesingState extends State<tesing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ATS"),
        actions: [

          Container(
            height: 100,
            width: 100,
            child: profile(title: '',),
          )
        ],),
    body:Row(
      children: [
        Expanded(
          flex: 2,
            child:Container(
                child: SidebarPage(),
            ),
        ),
        Expanded(
          flex:8 ,
          child:Container(
         child: girdview (title: 'grid',),
        ), )
        
      ],
    ),
    );
  }
}
