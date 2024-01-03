import 'package:flutter/material.dart';
import 'package:login_page/Navbar.dart';

class BalancesEarnings extends StatefulWidget {
  const BalancesEarnings({Key? key}) : super(key: key);

  @override
  State<BalancesEarnings> createState() => _BalancesEarningsState();
}

class _BalancesEarningsState extends State<BalancesEarnings> {
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
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
