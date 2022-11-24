import 'package:counter_7/Page/myWatchListPage.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/Page/form.dart';
import 'package:counter_7/Page/show_form.dart';

enum ScreenName { Home, Form, ShowForm, MyWatchListPage, MyWatchListPageDetail }

class DrawerClass extends StatefulWidget {
  final ScreenName parentScreen;
  const DrawerClass({super.key, required this.parentScreen});
  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Daftar Menu '),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Counter_7'),
            onTap: () {
              if (widget.parentScreen != ScreenName.Home) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Program Counter',)),
                );
              } else {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('Tambah Budget'),
            onTap: () {
              if (widget.parentScreen != ScreenName.Form) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );
              } else {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('Data Budget'),
            onTap: () {
              if (widget.parentScreen != ScreenName.ShowForm) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyShowForm()),
                );
              } else {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('My Watch List'), //TODO: Add My Watch List
            onTap: () {
              if (widget.parentScreen == ScreenName.MyWatchListPageDetail) {
                Navigator.pop(context);
                Navigator.pop(context);
              } else if (widget.parentScreen == ScreenName.MyWatchListPage) {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

