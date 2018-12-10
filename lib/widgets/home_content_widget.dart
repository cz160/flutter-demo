
import 'package:flutter/material.dart';

class HomeContentWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(    
          color: Colors.white,  
          child: Center(         
            child: Text(
            'Hello World!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow
            ),
          
          ),
          )
        );
    }
}