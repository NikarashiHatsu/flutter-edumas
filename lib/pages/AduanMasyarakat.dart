import 'package:edumas/lang/lang.dart';
import 'package:flutter/material.dart';

class AduanMasyarakat extends StatefulWidget {
  final Lang lang;

  AduanMasyarakat({@required this.lang});
  
  @override
  _AduanMasyarakatState createState() => _AduanMasyarakatState();
}

class _AduanMasyarakatState extends State<AduanMasyarakat> {
  @override
  Widget build(BuildContext context) {
    final Lang lang = widget.lang;

    return Text(
      lang.formAlamat
    );
  }
}