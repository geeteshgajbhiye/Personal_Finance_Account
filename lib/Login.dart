import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/money.png'), fit : BoxFit.cover)
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              child: Text('Welcome\nBack',
              style: TextStyle(color: Colors.white, fontSize: 35,
                  fontWeight: FontWeight.bold),),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: h * 0.45, right: w * 0.1, left: w * 0.1
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email ID',
                        hintText:  'Enter your Email ID',
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10)
                        // )
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Password',
                          hintText:  'Enter your password',
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(10)
                          // )
                      ),
                    ),
                    SizedBox( height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Sign In", style:
                      TextStyle(
                        color: Colors.white,
                          fontSize: 25,
                      fontWeight: FontWeight.w700),
                      ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, 'Menu');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'Registration');
                        }, child: Text('Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.white
                        ),)),
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'ForgotPassword');
                        }, child: Text('Forgot Password',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.white
                          ),))
                      ],
                    )
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
