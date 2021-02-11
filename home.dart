import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyGalleryView extends StatefulWidget {
  @override
  _MyGalleryViewState createState() => _MyGalleryViewState();
}

class _MyGalleryViewState extends State<MyGalleryView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(20.00),
              child: Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.00,horizontal: 20.00),
                      child: Icon(
                        Icons.videocam_outlined,
                        color: Colors.white,
                        size: 80,
                      )
                    ),
                    Container(
                      padding: EdgeInsets.all(20.00),
                      child: Center(
                        child: Text(
                          'GO APP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          textScaleFactor: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: Container(
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(

                          height: 500,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: SvgPicture.asset("assets/wave.svg",fit: BoxFit.fitHeight,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}
