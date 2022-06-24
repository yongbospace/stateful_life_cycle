import 'package:flutter/material.dart';
import 'package:stateful_life_cycle/screen/home_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Root(),
    ),
  );
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  Color color = Colors.teal;
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: show ? HomeScreen(color: color) : Container(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        iconSize: 50,
                        onPressed: () {
                          setState(() {
                            color = color == Colors.purple
                                ? Colors.teal
                                : Colors.purple;
                          });
                        },
                        icon: Icon(Icons.color_lens_outlined)),
                    IconButton(
                        iconSize: 50,
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        icon: Icon(Icons.remove_circle)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
