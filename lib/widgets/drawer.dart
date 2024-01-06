import 'package:todo_app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Piyush Prajapt"),
                accountEmail: Text("piyushthedev@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Avatar.png"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRouter.homeRouter);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bell_circle,
                color: Colors.white,
              ),
              title: Text(
                "Notification",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add onPressed logic here if needed
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail Us",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add onPressed logic here if needed
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add onPressed logic here if needed
              },
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRouter.loginRouter);
              },
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
