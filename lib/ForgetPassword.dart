import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(

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
              child: Text('Forgot Password',
              style: TextStyle(color: Colors.white, fontSize: 35,
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
                        labelText: 'Email',
                        hintText: 'Enter your Email'
                      ),
                    ),
                    SizedBox(height: 35,),
                    Center( child : Column(
                      children: [
                        SizedBox(width: 250, height : 40,
                            child : ElevatedButton(onPressed: () {
                              Navigator.pushNamed(context, 'ResetPassword');
                            }, child: Text('Send Link',
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

            )
            ),
          ],
        ),
      ),
    );
  }
}
