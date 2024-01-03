import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Navbar.dart';

class AnalysisExpanses extends StatefulWidget {
  const AnalysisExpanses({Key? key}) : super(key: key);

  @override
  State<AnalysisExpanses> createState() => _AnalysisExpansesState();
}

class _AnalysisExpansesState extends State<AnalysisExpanses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white70,
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Username',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
        ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          // color: Colors.blue
        ),
        child: BottomAppBar(
          color: Colors.blue,
          child: Align(
            alignment: Alignment.center,
            child: Text('Product & Contact Information',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
                fontSize: 18
            ),),
          ),
        ),
      ),
      ),
    );
  }
}
