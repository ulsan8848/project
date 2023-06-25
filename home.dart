import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text('ulsan'),
                  accountEmail: null,
                ),
              ),
              ListTile(
                title: Text('home'),
              )
            ],
          ),
        ));
  }
}
