import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {

  String imagePath;
  FullScreenImage(this.imagePath);

  final LinearGradient backgroundGradient = new LinearGradient(
    colors: [Colors.white, Colors.blueGrey],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(gradient: backgroundGradient),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: imagePath,
                  child: Image.network(imagePath),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      leading: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
