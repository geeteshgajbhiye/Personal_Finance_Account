import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('username', style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold, fontSize: 22),),
                accountEmail: Text('userAccountEmail',style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/profile.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,),
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.blue,
                  image: DecorationImage(image: AssetImage('assets/wp1.png'),
                      fit : BoxFit.cover)
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, 'Profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Feedback'),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: (){Navigator.pushNamed(context, 'Login');},
            ),

          ],
        ),
      ),
    );
  }
}
