import 'package:edumas/components/DumasAppBar.dart';
import 'package:edumas/lang/en.dart';
import 'package:edumas/lang/id.dart';
import 'package:edumas/lang/lang.dart';
import 'package:edumas/pages/AduanMasyarakat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Edumas(),
    ),
  );
}

class Edumas extends StatefulWidget {
  @override
  _EdumasState createState() => _EdumasState();
}

class _EdumasState extends State<Edumas> {
  Lang lang;
  
  @override
  void initState() {
    super.initState();

    lang = LangID();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DumasAppBar(
        title: Text('E-Dumas', style: TextStyle(color: Colors.black)),
        appBar: AppBar(),
        widgets: [
          IconButton(
            icon: Icon(Icons.login, color: Colors.black), 
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.language, color: Colors.black),
            onPressed: () {
              setState(() {
                lang.lang == 'id'
                  ? lang = LangEN()
                  : lang = LangID();
              });
            },
          ),
        ],
      ),
      body: AduanMasyarakat(lang: lang),
    );
  }
}