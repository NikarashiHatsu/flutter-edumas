import 'package:edumas/components/DumasAppBar.dart';
import 'package:edumas/lang/en.dart';
import 'package:edumas/lang/id.dart';
import 'package:edumas/lang/lang.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Lang lang;

  Login({@required this.lang});
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Lang lang;

  @override
  void initState() {
    super.initState();

    lang = widget.lang;
  }
  
  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    
    return Scaffold(
      appBar: DumasAppBar(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        widgets: [
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 200,
                      image: AssetImage('images/inspektorat.png'),
                    ),
                  ],
                ),
              ),
              Text('E-Dumas', style: Theme.of(context).textTheme.headline5),
              Container(child: Text(lang.loginSubJudul), margin: EdgeInsets.only(top: 16.0)),

              // Forms
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _usernameController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: lang.loginUsername,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: lang.loginPassword,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: MaterialButton(
                  color: Color.fromRGBO(0, 188, 213, 1),
                  onPressed: () {},
                  child: Text(
                    lang.loginButton,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}