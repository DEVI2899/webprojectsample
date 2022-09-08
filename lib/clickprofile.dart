import 'package:flutter/material.dart';

class clickprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Image Popup example')
        ),
        backgroundColor: Colors.grey[800],
        body: CircleAvatar(
            child: GestureDetector(
              onTap: () async {
                await showDialog(
                    context: context,
                    builder: (_) => ImageDialog()
                );
              },
            ),
            radius: 50.0,
            //Photo by Tamas Tuzes-Katai on Unsplash
            backgroundImage: AssetImage('assets/images/profile.png')
        )
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/profile.png'),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}