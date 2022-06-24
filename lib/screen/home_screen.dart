import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;
  HomeScreen({required this.color, Key? key}) : super(key: key) {
    print('constructor On');
  }

  @override
  State<HomeScreen> createState() {
    print('createState On');
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    print('initState On');
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies On : dirty State');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget On : dirty State');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('build On : clean State');
    return GestureDetector(
        onTap: () {
          setState(() {
            print('setState On : dirty State');
            number < 9 ? number++ : number = 0;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: widget.color,
          ),
          width: 250,
          height: 250,
          child: Center(
            child: Text(
              number.toString(),
              style: TextStyle(fontSize: 150, color: Colors.white),
            ),
          ),
        ));
  }

  @override
  void deactivate() {
    print('deactive On');
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose On');
    // TODO: implement dispose
    super.dispose();
  }
}
