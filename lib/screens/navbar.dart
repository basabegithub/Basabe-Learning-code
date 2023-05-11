import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Japhet Basabe"), 
            accountEmail: const Text("japhetbasabe@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset("images/4.png")),
            ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              image: DecorationImage(
                image: AssetImage("images/20.jpg"), fit: BoxFit.cover)),
            ),

            ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("Upload Short"),
              onTap: () => print("Upload tapped"),
            ),
             ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile"),
              onTap: () => print("Profile tapped"),
            ),
             ListTile(
              leading: Icon(Icons.message),
              title: Text("Messages"),
              onTap: () => print("Messages tapped"),
            ),
             ListTile(
              leading: Icon(Icons.line_axis),
              title: Text("Stats"),
              onTap: () => print("Stats tapped"),
            ),
             ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () => print("Share tapped"),
            ),
             ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              onTap: () => print("Notifications tapped"),
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => print("Settings tapped"),
            ),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
              onTap: () => print("Logout tapped"),
            ),
        ],
      )
    );
  }
}