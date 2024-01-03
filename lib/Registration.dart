import 'package:flutter/material.dart';
import 'package:sqflite/sql.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      // width: w ,
      // height: h,

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/pencile.png'), fit: BoxFit.cover)
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              alignment: Alignment.topCenter,
              child: Text('Registration',
              style: TextStyle(color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold),),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: h * .35, right: w * .1, left: w * .1
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Name',
                        hintText: 'Enter your name'
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email ID',
                        hintText: 'Enter your mail ID'
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Contact Number',
                          hintText: 'Enter your contact number'
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Country Name',
                          hintText: 'Enter your Country name'
                      ),
                    ),
                    SizedBox(height: 35,),
                   Center( child : Column(
                      children: [
                        SizedBox(width: 250, height : 40,
                            child : ElevatedButton(onPressed: () {
                              Navigator.pushNamed(context, 'ResetPassword');
                            }, child: Text('Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20
                              ),
                        )
                            )
                        )
                      ],
                    ),
                   ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


