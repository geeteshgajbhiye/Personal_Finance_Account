import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              child: Text('Reset Password',
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
                      enabled: false,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Email',
                          hintText: 'Enter your Email'
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'New password',
                          hintText: 'Enter your new password'
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Confirm password',
                          hintText: 'Enter your confirm password'
                      ),
                    ),
                    SizedBox(height: 35,),
                    Center( child : Column(
                      children: [
                        SizedBox(width: 250, height : 40,
                            child : ElevatedButton(onPressed: () {
                              Navigator.pushNamed(context, 'Login');
                            }, child: Text('Reset Password',
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
