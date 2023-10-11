import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/flutter_animated_icons.dart';

class CounterApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CounterAppState();

}


class _CounterAppState extends State<CounterApp>{
  @override
  int Count = 0;

  void plus(){
    setState(
        (){
          Count++;
        }
    );
  }
  void minus(){
    setState(() {
      if(Count>0) Count--;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: (){
                plus;

              },
              icon: Icon(
                size: 100.0,
                Icons.add
              )
          ),
          Text(
            '${Count}',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
          IconButton(
              onPressed: minus,
              icon: Icon(
                size: 100,
                  Icons.remove
              )
          ),
        ],
      ),
    );
  }

}