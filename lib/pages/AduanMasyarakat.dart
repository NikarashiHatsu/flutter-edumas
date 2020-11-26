import 'package:edumas/lang/lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AduanMasyarakat extends StatefulWidget {
  final Lang lang;

  AduanMasyarakat({@required this.lang});
  
  @override
  _AduanMasyarakatState createState() => _AduanMasyarakatState();
}

class _AduanMasyarakatState extends State<AduanMasyarakat> {
  DateTime selectedDate = DateTime.now();

  TextEditingController 
    _namaController, _noKtpController,
    _provinsiController, _kabupatenController, _kecamatanController, _kelurahanController,
    _alamatController, _tempatLahirController,
    _noHpController, _emailController, 
    _tanggalKejadianController, _jamKejadianController,
    _poldaController, _polresController, _polsekController,
    _isiPengaduanController, _lampiranController = TextEditingController();

  TextEditingController _tanggalLahirController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    final Lang _lang = widget.lang;
    
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _lang.judulForm,
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    width: 100.0,
                    image: AssetImage('images/polri.png'),
                  ),
                  Image(
                    width: 100.0,
                    image: AssetImage('images/inspektorat.png'),
                  ),
                ],
              ),
            ),

            // Forms
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _namaController,
                decoration: InputDecoration(
                  labelText: _lang.formNama,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _noKtpController,
                decoration: InputDecoration(
                  labelText: _lang.formNoKtp,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _provinsiController,
                decoration: InputDecoration(
                  labelText: _lang.formProvinsi,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _kabupatenController,
                decoration: InputDecoration(
                  labelText: _lang.formKabupaten,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _kecamatanController,
                decoration: InputDecoration(
                  labelText: _lang.formKecamatan,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _kelurahanController,
                decoration: InputDecoration(
                  labelText: _lang.formKelurahan,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                maxLines: 4,
                keyboardType: TextInputType.streetAddress,
                controller: _alamatController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: _lang.formAlamat,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _tempatLahirController,
                decoration: InputDecoration(
                  labelText: _lang.formTempatLahir,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                controller: _tanggalLahirController,
                decoration: InputDecoration(
                  labelText: _lang.formTanggalLahir,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _noHpController,
                decoration: InputDecoration(
                  labelText: _lang.formNoHp,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: _lang.formEmail,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                controller: _tanggalKejadianController,
                decoration: InputDecoration(
                  labelText: _lang.formTanggalKejadian,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                controller: _jamKejadianController,
                decoration: InputDecoration(
                  labelText: _lang.formJamKejadian,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _poldaController,
                decoration: InputDecoration(
                  labelText: _lang.formPolda,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _polresController,
                decoration: InputDecoration(
                  labelText: _lang.formPolres,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _polsekController,
                decoration: InputDecoration(
                  labelText: _lang.formPolsek,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: TextFormField(
                maxLines: 8,
                keyboardType: TextInputType.text,
                controller: _isiPengaduanController,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: _lang.formIsiPengaduan,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: MaterialButton(
                child: Text(_lang.formKirim, style: TextStyle(color: Colors.white)),
                color: Colors.green,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}