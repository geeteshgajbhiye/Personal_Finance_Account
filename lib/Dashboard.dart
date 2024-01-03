import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Navbar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: h*.35,
                  width: w,
                  child: Card(
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Center(
                      child: Container(

                      ),
                    ),
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
