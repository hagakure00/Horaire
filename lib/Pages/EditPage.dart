import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horaire/Animation/FadeAnimation.dart';
import 'package:horaire/Models/HoraireModel.dart';
import 'package:horaire/Services/FirebaseService.dart';
import 'package:horaire/Theme/colors.dart';
import 'package:horaire/Widgets/CustomTextfield.dart';
import 'package:horaire/Widgets/CustomTextfieldFooter.dart';
import 'package:ionicons/ionicons.dart';

import 'HomePage.dart';


class EditPage extends StatefulWidget {
  const EditPage({Key? key, required this.horaire}) : super(key: key);
  final Horaire horaire;


  @override
  _EditPageState createState() => _EditPageState();
}
class _EditPageState extends State<EditPage> {

  final formKey = GlobalKey<FormState>();
  late TextEditingController moisController ;
  late TextEditingController moduleController;

  late TextEditingController  s1d1a;
  late TextEditingController  s1d2a;
  late TextEditingController s1d3a;
  late TextEditingController  s1d4a;
  late TextEditingController s1d5a;
  late TextEditingController  s1d6a;
  late TextEditingController  s1d1d;
  late TextEditingController  s1d2d;
  late TextEditingController s1d3d;
  late TextEditingController  s1d4d;
  late TextEditingController s1d5d;
  late TextEditingController  s1d6d;
  late TextEditingController  s1d1t;
  late TextEditingController  s1d2t;
  late TextEditingController s1d3t;
  late TextEditingController  s1d4t;
  late TextEditingController s1d5t;
  late TextEditingController  s1d6t;
  late TextEditingController totals1;

  late TextEditingController  s2d1a;
  late TextEditingController  s2d2a;
  late TextEditingController s2d3a;
  late TextEditingController  s2d4a;
  late TextEditingController s2d5a;
  late TextEditingController  s2d6a;
  late TextEditingController  s2d1d;
  late TextEditingController  s2d2d;
  late TextEditingController s2d3d;
  late TextEditingController  s2d4d;
  late TextEditingController s2d5d;
  late TextEditingController  s2d6d;
  late TextEditingController  s2d1t;
  late TextEditingController  s2d2t;
  late TextEditingController s2d3t;
  late TextEditingController  s2d4t;
  late TextEditingController s2d5t;
  late TextEditingController  s2d6t;
  late TextEditingController totals2;

  late TextEditingController  s3d1a;
  late TextEditingController  s3d2a;
  late TextEditingController s3d3a;
  late TextEditingController  s3d4a;
  late TextEditingController s3d5a;
  late TextEditingController  s3d6a;
  late TextEditingController  s3d1d;
  late TextEditingController  s3d2d;
  late TextEditingController s3d3d;
  late TextEditingController  s3d4d;
  late TextEditingController s3d5d;
  late TextEditingController  s3d6d;
  late TextEditingController  s3d1t;
  late TextEditingController  s3d2t;
  late TextEditingController s3d3t;
  late TextEditingController  s3d4t;
  late TextEditingController s3d5t;
  late TextEditingController  s3d6t;
  late TextEditingController totals3;

  late TextEditingController  s4d1a;
  late TextEditingController  s4d2a;
  late TextEditingController s4d3a;
  late TextEditingController  s4d4a;
  late TextEditingController s4d5a;
  late TextEditingController  s4d6a;
  late TextEditingController  s4d1d;
  late TextEditingController  s4d2d;
  late TextEditingController s4d3d;
  late TextEditingController  s4d4d;
  late TextEditingController s4d5d;
  late TextEditingController  s4d6d;
  late TextEditingController  s4d1t;
  late TextEditingController  s4d2t;
  late TextEditingController s4d3t;
  late TextEditingController  s4d4t;
  late TextEditingController s4d5t;
  late TextEditingController  s4d6t;
  late TextEditingController totals4;

  late TextEditingController  s5d1a;
  late TextEditingController  s5d2a;
  late TextEditingController s5d3a;
  late TextEditingController  s5d4a;
  late TextEditingController s5d5a;
  late TextEditingController  s5d6a;
  late TextEditingController  s5d1d;
  late TextEditingController  s5d2d;
  late TextEditingController s5d3d;
  late TextEditingController  s5d4d;
  late TextEditingController s5d5d;
  late TextEditingController  s5d6d;
  late TextEditingController  s5d1t;
  late TextEditingController  s5d2t;
  late TextEditingController s5d3t;
  late TextEditingController  s5d4t;
  late TextEditingController s5d5t;
  late TextEditingController  s5d6t;
  late TextEditingController totals5;

  late TextEditingController  notifs1;
  late TextEditingController notifs2;
  late TextEditingController  notifs3;
  late TextEditingController notifs4;
  late TextEditingController  notifs5;

  late TextEditingController totalHeureDuMois;
  late TextEditingController totalModuleDuMois;

  late TextEditingController contratHoraire;
  late TextEditingController tempsPause;

  @override
  void initState() {
    super.initState();


   moisController = TextEditingController(text: isEdit ? widget.horaire.mois : '');
   moduleController = TextEditingController(text: isEdit ? widget.horaire.module: '');

    s1d1a = TextEditingController(text: isEdit ? widget.horaire.s1d1a : '');
    s1d1d = TextEditingController(text: isEdit ? widget.horaire.s1d1d : '');
    s1d1t = TextEditingController(text: isEdit ? widget.horaire.s1d1t : '');
    s1d2a = TextEditingController(text: isEdit ? widget.horaire.s1d2a : '');
    s1d2d = TextEditingController(text: isEdit ? widget.horaire.s1d2d : '');
    s1d2t = TextEditingController(text: isEdit ? widget.horaire.s1d2t : '');
    s1d3a = TextEditingController(text: isEdit ? widget.horaire.s1d3a : '');
    s1d3d = TextEditingController(text: isEdit ? widget.horaire.s1d3d : '');
    s1d3t = TextEditingController(text: isEdit ? widget.horaire.s1d3t : '');
    s1d4a = TextEditingController(text: isEdit ? widget.horaire.s1d4a : '');
    s1d4d = TextEditingController(text: isEdit ? widget.horaire.s1d4d : '');
    s1d4t = TextEditingController(text: isEdit ? widget.horaire.s1d4t : '');
    s1d5a = TextEditingController(text: isEdit ? widget.horaire.s1d5a : '');
    s1d5d = TextEditingController(text: isEdit ? widget.horaire.s1d5d : '');
    s1d5t = TextEditingController(text: isEdit ? widget.horaire.s1d5t : '');
    s1d6a = TextEditingController(text: isEdit ? widget.horaire.s1d6a : '');
    s1d6d = TextEditingController(text: isEdit ? widget.horaire.s1d6d : '');
    s1d6t = TextEditingController(text: isEdit ? widget.horaire.s1d6t : '');
    totals1 = TextEditingController(text: isEdit ? widget.horaire.totals1 : '');

    s2d1a = TextEditingController(text: isEdit ? widget.horaire.s2d1a : '');
    s2d1d = TextEditingController(text: isEdit ? widget.horaire.s2d1d : '');
    s2d1t = TextEditingController(text: isEdit ? widget.horaire.s2d1t : '');
    s2d2a = TextEditingController(text: isEdit ? widget.horaire.s2d2a : '');
    s2d2d = TextEditingController(text: isEdit ? widget.horaire.s2d2d : '');
    s2d2t = TextEditingController(text: isEdit ? widget.horaire.s2d2t : '');
    s2d3a = TextEditingController(text: isEdit ? widget.horaire.s2d3a : '');
    s2d3d = TextEditingController(text: isEdit ? widget.horaire.s2d3d : '');
    s2d3t = TextEditingController(text: isEdit ? widget.horaire.s2d3t : '');
    s2d4a = TextEditingController(text: isEdit ? widget.horaire.s2d4a : '');
    s2d4d = TextEditingController(text: isEdit ? widget.horaire.s2d4d : '');
    s2d4t = TextEditingController(text: isEdit ? widget.horaire.s2d4t : '');
    s2d5a = TextEditingController(text: isEdit ? widget.horaire.s2d5a : '');
    s2d5d = TextEditingController(text: isEdit ? widget.horaire.s2d5d : '');
    s2d5t = TextEditingController(text: isEdit ? widget.horaire.s2d5t : '');
    s2d6a = TextEditingController(text: isEdit ? widget.horaire.s2d6a : '');
    s2d6d = TextEditingController(text: isEdit ? widget.horaire.s2d6d : '');
    s2d6t = TextEditingController(text: isEdit ? widget.horaire.s2d6t : '');
    totals2 = TextEditingController(text: isEdit ? widget.horaire.totals2 : '');

    s3d1a = TextEditingController(text: isEdit ? widget.horaire.s3d1a : '');
    s3d1d = TextEditingController(text: isEdit ? widget.horaire.s3d1d : '');
    s3d1t = TextEditingController(text: isEdit ? widget.horaire.s3d1t : '');
    s3d2a = TextEditingController(text: isEdit ? widget.horaire.s3d2a : '');
    s3d2d = TextEditingController(text: isEdit ? widget.horaire.s3d2d : '');
    s3d2t = TextEditingController(text: isEdit ? widget.horaire.s3d2t : '');
    s3d3a = TextEditingController(text: isEdit ? widget.horaire.s3d3a : '');
    s3d3d = TextEditingController(text: isEdit ? widget.horaire.s3d3d : '');
    s3d3t = TextEditingController(text: isEdit ? widget.horaire.s3d3t : '');
    s3d4a = TextEditingController(text: isEdit ? widget.horaire.s3d4a : '');
    s3d4d = TextEditingController(text: isEdit ? widget.horaire.s3d4d : '');
    s3d4t = TextEditingController(text: isEdit ? widget.horaire.s3d4t : '');
    s3d5a = TextEditingController(text: isEdit ? widget.horaire.s3d5a : '');
    s3d5d = TextEditingController(text: isEdit ? widget.horaire.s3d5d : '');
    s3d5t = TextEditingController(text: isEdit ? widget.horaire.s3d5t : '');
    s3d6a = TextEditingController(text: isEdit ? widget.horaire.s3d6a : '');
    s3d6d = TextEditingController(text: isEdit ? widget.horaire.s3d6d : '');
    s3d6t = TextEditingController(text: isEdit ? widget.horaire.s3d6t : '');
    totals3 = TextEditingController(text: isEdit ? widget.horaire.totals3 : '');

    s4d1a = TextEditingController(text: isEdit ? widget.horaire.s4d1a : '');
    s4d1d = TextEditingController(text: isEdit ? widget.horaire.s4d1d : '');
    s4d1t = TextEditingController(text: isEdit ? widget.horaire.s4d1t : '');
    s4d2a = TextEditingController(text: isEdit ? widget.horaire.s4d2a : '');
    s4d2d = TextEditingController(text: isEdit ? widget.horaire.s4d2d : '');
    s4d2t = TextEditingController(text: isEdit ? widget.horaire.s4d2t : '');
    s4d3a = TextEditingController(text: isEdit ? widget.horaire.s4d3a : '');
    s4d3d = TextEditingController(text: isEdit ? widget.horaire.s4d3d : '');
    s4d3t = TextEditingController(text: isEdit ? widget.horaire.s4d3t : '');
    s4d4a = TextEditingController(text: isEdit ? widget.horaire.s4d4a : '');
    s4d4d = TextEditingController(text: isEdit ? widget.horaire.s4d4d : '');
    s4d4t = TextEditingController(text: isEdit ? widget.horaire.s4d4t : '');
    s4d5a = TextEditingController(text: isEdit ? widget.horaire.s4d5a : '');
    s4d5d = TextEditingController(text: isEdit ? widget.horaire.s4d5d : '');
    s4d5t = TextEditingController(text: isEdit ? widget.horaire.s4d5t : '');
    s4d6a = TextEditingController(text: isEdit ? widget.horaire.s4d6a : '');
    s4d6d = TextEditingController(text: isEdit ? widget.horaire.s4d6d : '');
    s4d6t = TextEditingController(text: isEdit ? widget.horaire.s4d6t : '');
    totals4 = TextEditingController(text: isEdit ? widget.horaire.totals4 : '');

    s5d1a = TextEditingController(text: isEdit ? widget.horaire.s5d1a : '');
    s5d1d = TextEditingController(text: isEdit ? widget.horaire.s5d1d : '');
    s5d1t = TextEditingController(text: isEdit ? widget.horaire.s5d1t : '');
    s5d2a = TextEditingController(text: isEdit ? widget.horaire.s5d2a : '');
    s5d2d = TextEditingController(text: isEdit ? widget.horaire.s5d2d : '');
    s5d2t = TextEditingController(text: isEdit ? widget.horaire.s5d2t : '7');
    s5d3a = TextEditingController(text: isEdit ? widget.horaire.s5d3a : '');
    s5d3d = TextEditingController(text: isEdit ? widget.horaire.s5d3d : '');
    s5d3t = TextEditingController(text: isEdit ? widget.horaire.s5d3t : '');
    s5d4a = TextEditingController(text: isEdit ? widget.horaire.s5d4a : '');
    s5d4d = TextEditingController(text: isEdit ? widget.horaire.s5d4d : '');
    s5d4t = TextEditingController(text: isEdit ? widget.horaire.s5d4t : '');
    s5d5a = TextEditingController(text: isEdit ? widget.horaire.s5d5a : '');
    s5d5d = TextEditingController(text: isEdit ? widget.horaire.s5d5d : '');
    s5d5t = TextEditingController(text: isEdit ? widget.horaire.s5d5t : '');
    s5d6a = TextEditingController(text: isEdit ? widget.horaire.s5d6a : '');
    s5d6d = TextEditingController(text: isEdit ? widget.horaire.s5d6d : '');
    s5d6t = TextEditingController(text: isEdit ? widget.horaire.s5d6t : '');
    totals5 = TextEditingController(text: isEdit ? widget.horaire.totals5 : '');

    notifs1 = TextEditingController(text: isEdit ? widget.horaire.notifs1 : '');
    notifs2 = TextEditingController(text: isEdit ? widget.horaire.notifs2 : '');
    notifs3 = TextEditingController(text: isEdit ? widget.horaire.notifs3 : '');
    notifs4 = TextEditingController(text: isEdit ? widget.horaire.notifs4 : '');
    notifs5 = TextEditingController(text: isEdit ? widget.horaire.notifs5 : '');

    totalHeureDuMois = TextEditingController(text: isEdit ? widget.horaire.totalHeureDuMois : '');
    totalModuleDuMois = TextEditingController(text: isEdit ? widget.horaire.totalModuleDuMois : '');

    contratHoraire = TextEditingController(text: isEdit ? widget.horaire.contratHoraire : contratHoraire.text);
    tempsPause = TextEditingController(text: isEdit ? widget.horaire.tempsPause : tempsPause.text);

    getContract();

  }
  get isEdit => widget.horaire != null ;


  late String contractValue;
  getContract() {
    String contract = "";
    var value = widget.horaire.contratHoraire;
    switch (value) {
      case "0": { contract = "151.67";}
        break;
      case "1": {contract = "178.75";}
        break;
      default: {}
        break;
    }
    contractValue = contract;
  }


  /////////////////
  // calcul
  ////////////////

  double timepause = 0.0;
  double zero = 0.0;
  double s1j1anum= 0.0, s1j1dnum= 0.0, s1j2anum= 0.0, s1j2dnum= 0.0, s1j3anum= 0.0, s1j3dnum= 0.0,
      s1j4anum= 0.0, s1j4dnum= 0.0, s1j5anum= 0.0, s1j5dnum= 0.0, s1j6anum= 0.0, s1j6dnum= 0.0;
  double s1d1tnum= 0.0, s1d2tnum= 0.0, s1d3tnum= 0.0, s1d4tnum= 0.0, s1d5tnum= 0.0, s1d6tnum= 0.0, totals1num= 0.0;
  /////////////////
  double s2j1anum= 0.0, s2j1dnum= 0.0, s2j2anum= 0.0, s2j2dnum= 0.0, s2j3anum= 0.0, s2j3dnum= 0.0,
      s2j4anum= 0.0, s2j4dnum= 0.0, s2j5anum= 0.0, s2j5dnum= 0.0, s2j6anum= 0.0, s2j6dnum= 0.0;
  double s2d1tnum= 0.0, s2d2tnum= 0.0, s2d3tnum= 0.0, s2d4tnum= 0.0, s2d5tnum= 0.0, s2d6tnum= 0.0, totals2num= 0.0;
  /////////////////
  double s3j1anum= 0.0, s3j1dnum= 0.0, s3j2anum= 0.0, s3j2dnum= 0.0, s3j3anum= 0.0, s3j3dnum= 0.0,
      s3j4anum= 0.0, s3j4dnum= 0.0, s3j5anum= 0.0, s3j5dnum= 0.0, s3j6anum= 0.0, s3j6dnum= 0.0;
  double s3d1tnum= 0.0, s3d2tnum= 0.0, s3d3tnum= 0.0, s3d4tnum= 0.0, s3d5tnum= 0.0, s3d6tnum= 0.0, totals3num= 0.0;
  ////////////////
  double s4j1anum= 0.0, s4j1dnum= 0.0, s4j2anum= 0.0, s4j2dnum= 0.0, s4j3anum= 0.0, s4j3dnum= 0.0,
      s4j4anum= 0.0, s4j4dnum= 0.0, s4j5anum= 0.0, s4j5dnum= 0.0, s4j6anum= 0.0, s4j6dnum= 0.0;
  double s4d1tnum= 0.0, s4d2tnum= 0.0, s4d3tnum= 0.0, s4d4tnum= 0.0, s4d5tnum= 0.0, s4d6tnum= 0.0, totals4num= 0.0;
  ////////////////
  double s5j1anum= 0.0, s5j1dnum= 0.0, s5j2anum= 0.0, s5j2dnum= 0.0, s5j3anum= 0.0, s5j3dnum= 0.0,
      s5j4anum= 0.0, s5j4dnum= 0.0, s5j5anum= 0.0, s5j5dnum= 0.0, s5j6anum= 0.0, s5j6dnum= 0.0;
  double s5d1tnum= 0.0, s5d2tnum= 0.0, s5d3tnum= 0.0, s5d4tnum= 0.0, s5d5tnum= 0.0, s5d6tnum= 0.0, totals5num= 0.0;
  double totalheureMois= 0.0;
  double totalmoduleMois= 0.0;
  double moduleprecnum= 0.0;
  double moyenne= 0.0;

  additions1j1 (String) {
    setState(() {
      s1d1t.clear();
      totals1.clear();
      s1j1anum = double.parse(s1d1a.text.isNotEmpty ? s1d1a.text : "0");
      s1j1dnum = double.parse(s1d1d.text.isNotEmpty ? s1d1d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d1tnum = double.parse(s1d1tnum.toString().isNotEmpty ? s1d1tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d1tnum = s1j1dnum - s1j1anum - timepause;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;

    });
  }
  additions1j2 (String) {
    setState(() {
      s1d2t.clear();
      totals1.clear();
      s1j2anum = double.parse(s1d2a.text.isNotEmpty ? s1d2a.text : "0");
      s1j2dnum = double.parse(s1d2d.text.isNotEmpty ? s1d2d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d2tnum = double.parse(s1d2tnum.toString().isNotEmpty ? s1d2tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d2tnum = s1j2dnum - s1j2anum - timepause;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }
  additions1j3 (String) {
    setState(() {
      s1d3t.clear();
      totals1.clear();
      s1j3anum = double.parse(s1d3a.text.isNotEmpty ? s1d3a.text : "0");
      s1j3dnum = double.parse(s1d3d.text.isNotEmpty ? s1d3d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d3tnum = double.parse(s1d3tnum.toString().isNotEmpty ? s1d3tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d3tnum = s1j3dnum - s1j3anum - timepause;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }
  additions1j4 (String) {
    setState(() {
      s1d4t.clear();
      totals1.clear();
      s1j4anum = double.parse(s1d4a.text.isNotEmpty ? s1d4a.text : "0");
      s1j4dnum = double.parse(s1d4d.text.isNotEmpty ? s1d4d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d4tnum = double.parse(s1d4tnum.toString().isNotEmpty ? s1d4tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d4tnum = s1j4dnum - s1j4anum - timepause;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }
  additions1j5 (String) {
    setState(() {
      s1d5t.clear();
      totals1.clear();
      s1j5anum = double.parse(s1d5a.text.isNotEmpty ? s1d5a.text : "0");
      s1j5dnum = double.parse(s1d5d.text.isNotEmpty ? s1d5d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d5tnum = double.parse(s1d5tnum.toString().isNotEmpty ? s1d5tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d5tnum = s1j5dnum - s1j5anum - timepause;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }
  additions1j6 (String) {
    setState(() {
      s1d6t.clear();
      totals1.clear();
      s1j6anum = double.parse(s1d6a.text.isNotEmpty ? s1d6a.text : "0");
      s1j6dnum = double.parse(s1d6d.text.isNotEmpty ? s1d6d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s1d6tnum = double.parse(s1d6tnum.toString().isNotEmpty ? s1d6tnum.toString() : "0");
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      s1d6tnum = s1j6dnum - s1j6anum;
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }
  clearResults1(String) {
    setState(() {
      totals1.clear();
      s1d1tnum = double.parse(s1d1t.text.isNotEmpty ? s1d1t.text : s1d1tnum.toString());
      s1d2tnum = double.parse(s1d2t.text.isNotEmpty ? s1d2t.text : s1d2tnum.toString());
      s1d3tnum = double.parse(s1d3t.text.isNotEmpty ? s1d3t.text : s1d3tnum.toString());
      s1d4tnum = double.parse(s1d4t.text.isNotEmpty ? s1d4t.text : s1d4tnum.toString());
      s1d5tnum = double.parse(s1d5t.text.isNotEmpty ? s1d5t.text : s1d5tnum.toString());
      s1d6tnum = double.parse(s1d6t.text.isNotEmpty ? s1d6t.text : s1d6tnum.toString());
      totals1num = s1d1tnum + s1d2tnum + s1d3tnum + s1d4tnum + s1d5tnum + s1d6tnum;
    });
  }

  additions2j1 (String) {
    setState(() {
      s2d1t.clear();
      totals2.clear();
      s2j1anum = double.parse(s2d1a.text.isNotEmpty ? s2d1a.text : "0");
      s2j1dnum = double.parse(s2d1d.text.isNotEmpty ? s2d1d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d1tnum = double.parse(s2d1tnum.toString().isNotEmpty ? s2d1tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d1tnum = s2j1dnum - s2j1anum - timepause;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;

    });
  }
  additions2j2 (String) {
    setState(() {
      s2d2t.clear();
      totals2.clear();
      s2j2anum = double.parse(s2d2a.text.isNotEmpty ? s2d2a.text : "0");
      s2j2dnum = double.parse(s2d2d.text.isNotEmpty ? s2d2d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d2tnum = double.parse(s2d2tnum.toString().isNotEmpty ? s2d2tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d2tnum = s2j2dnum - s2j2anum - timepause;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }
  additions2j3 (String) {
    setState(() {
      s2d3t.clear();
      totals2.clear();
      s2j3anum = double.parse(s2d3a.text.isNotEmpty ? s2d3a.text : "0");
      s2j3dnum = double.parse(s2d3d.text.isNotEmpty ? s2d3d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d3tnum = double.parse(s2d3tnum.toString().isNotEmpty ? s2d3tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d3tnum = s2j3dnum - s2j3anum - timepause;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }
  additions2j4 (String) {
    setState(() {
      s2d4t.clear();
      totals2.clear();
      s2j4anum = double.parse(s2d4a.text.isNotEmpty ? s2d4a.text : "0");
      s2j4dnum = double.parse(s2d4d.text.isNotEmpty ? s2d4d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d4tnum = double.parse(s2d4tnum.toString().isNotEmpty ? s2d4tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d4tnum = s2j4dnum - s2j4anum - timepause;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }
  additions2j5 (String) {
    setState(() {
      s2d5t.clear();
      totals2.clear();
      s2j5anum = double.parse(s2d5a.text.isNotEmpty ? s2d5a.text : "0");
      s2j5dnum = double.parse(s2d5d.text.isNotEmpty ? s2d5d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d5tnum = double.parse(s2d5tnum.toString().isNotEmpty ? s2d5tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d5tnum = s2j5dnum - s2j5anum - timepause;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }
  additions2j6 (String) {
    setState(() {
      s2d6t.clear();
      totals2.clear();
      s2j6anum = double.parse(s2d6a.text.isNotEmpty ? s2d6a.text : "0");
      s2j6dnum = double.parse(s2d6d.text.isNotEmpty ? s2d6d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s2d6tnum = double.parse(s2d6tnum.toString().isNotEmpty ? s2d6tnum.toString() : "0");
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      s2d6tnum = s2j6dnum - s2j6anum;
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }
  clearResults2(String) {
    setState(() {
      totals2.clear();
      s2d1tnum = double.parse(s2d1t.text.isNotEmpty ? s2d1t.text : s2d1tnum.toString());
      s2d2tnum = double.parse(s2d2t.text.isNotEmpty ? s2d2t.text : s2d2tnum.toString());
      s2d3tnum = double.parse(s2d3t.text.isNotEmpty ? s2d3t.text : s2d3tnum.toString());
      s2d4tnum = double.parse(s2d4t.text.isNotEmpty ? s2d4t.text : s2d4tnum.toString());
      s2d5tnum = double.parse(s2d5t.text.isNotEmpty ? s2d5t.text : s2d5tnum.toString());
      s2d6tnum = double.parse(s2d6t.text.isNotEmpty ? s2d6t.text : s2d6tnum.toString());
      totals2num = s2d1tnum + s2d2tnum + s2d3tnum + s2d4tnum + s2d5tnum + s2d6tnum;
    });
  }

  additions3j1 (String) {
    setState(() {
      s3d1t.clear();
      totals3.clear();
      s3j1anum = double.parse(s3d1a.text.isNotEmpty ? s3d1a.text : "0");
      s3j1dnum = double.parse(s3d1d.text.isNotEmpty ? s3d1d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d1tnum = double.parse(s3d1tnum.toString().isNotEmpty ? s3d1tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d1tnum = s3j1dnum - s3j1anum - timepause;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;

    });
  }
  additions3j2 (String) {
    setState(() {
      s3d2t.clear();
      totals3.clear();
      s3j2anum = double.parse(s3d2a.text.isNotEmpty ? s3d2a.text : "0");
      s3j2dnum = double.parse(s3d2d.text.isNotEmpty ? s3d2d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d2tnum = double.parse(s3d2tnum.toString().isNotEmpty ? s3d2tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d2tnum = s3j2dnum - s3j2anum - timepause;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }
  additions3j3 (String) {
    setState(() {
      s3d3t.clear();
      totals3.clear();
      s3j3anum = double.parse(s3d3a.text.isNotEmpty ? s3d3a.text : "0");
      s3j3dnum = double.parse(s3d3d.text.isNotEmpty ? s3d3d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d3tnum = double.parse(s3d3tnum.toString().isNotEmpty ? s3d3tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d3tnum = s3j3dnum - s3j3anum - timepause;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }
  additions3j4 (String) {
    setState(() {
      s3d4t.clear();
      totals3.clear();
      s3j4anum = double.parse(s3d4a.text.isNotEmpty ? s3d4a.text : "0");
      s3j4dnum = double.parse(s3d4d.text.isNotEmpty ? s3d4d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d4tnum = double.parse(s3d4tnum.toString().isNotEmpty ? s3d4tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d4tnum = s3j4dnum - s3j4anum - timepause;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }
  additions3j5 (String) {
    setState(() {
      s3d5t.clear();
      totals3.clear();
      s3j5anum = double.parse(s3d5a.text.isNotEmpty ? s3d5a.text : "0");
      s3j5dnum = double.parse(s3d5d.text.isNotEmpty ? s3d5d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d5tnum = double.parse(s3d5tnum.toString().isNotEmpty ? s3d5tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d5tnum = s3j5dnum - s3j5anum - timepause;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }
  additions3j6 (String) {
    setState(() {
      s3d6t.clear();
      totals3.clear();
      s3j6anum = double.parse(s3d6a.text.isNotEmpty ? s3d6a.text : "0");
      s3j6dnum = double.parse(s3d6d.text.isNotEmpty ? s3d6d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s3d6tnum = double.parse(s3d6tnum.toString().isNotEmpty ? s3d6tnum.toString() : "0");
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      s3d6tnum = s3j6dnum - s3j6anum;
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }
  clearResults3(String) {
    setState(() {
      totals3.clear();
      s3d1tnum = double.parse(s3d1t.text.isNotEmpty ? s3d1t.text : s3d1tnum.toString());
      s3d2tnum = double.parse(s3d2t.text.isNotEmpty ? s3d2t.text : s3d2tnum.toString());
      s3d3tnum = double.parse(s3d3t.text.isNotEmpty ? s3d3t.text : s3d3tnum.toString());
      s3d4tnum = double.parse(s3d4t.text.isNotEmpty ? s3d4t.text : s3d4tnum.toString());
      s3d5tnum = double.parse(s3d5t.text.isNotEmpty ? s3d5t.text : s3d5tnum.toString());
      s3d6tnum = double.parse(s3d6t.text.isNotEmpty ? s3d6t.text : s3d6tnum.toString());
      totals3num = s3d1tnum + s3d2tnum + s3d3tnum + s3d4tnum + s3d5tnum + s3d6tnum;
    });
  }

  additions4j1 (String) {
    setState(() {
      s4d1t.clear();
      totals4.clear();
      s4j1anum = double.parse(s4d1a.text.isNotEmpty ? s4d1a.text : "0");
      s4j1dnum = double.parse(s4d1d.text.isNotEmpty ? s4d1d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d1tnum = double.parse(s4d1tnum.toString().isNotEmpty ? s4d1tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d1tnum = s4j1dnum - s4j1anum - timepause;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;

    });
  }
  additions4j2 (String) {
    setState(() {
      s4d2t.clear();
      totals4.clear();
      s4j2anum = double.parse(s4d2a.text.isNotEmpty ? s4d2a.text : "0");
      s4j2dnum = double.parse(s4d2d.text.isNotEmpty ? s4d2d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d2tnum = double.parse(s4d2tnum.toString().isNotEmpty ? s4d2tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d2tnum = s4j2dnum - s4j2anum - timepause;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }
  additions4j3 (String) {
    setState(() {
      s4d3t.clear();
      totals4.clear();
      s4j3anum = double.parse(s4d3a.text.isNotEmpty ? s4d3a.text : "0");
      s4j3dnum = double.parse(s4d3d.text.isNotEmpty ? s4d3d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d3tnum = double.parse(s4d3tnum.toString().isNotEmpty ? s4d3tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d3tnum = s4j3dnum - s4j3anum - timepause;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }
  additions4j4 (String) {
    setState(() {
      s4d4t.clear();
      totals4.clear();
      s4j4anum = double.parse(s4d4a.text.isNotEmpty ? s4d4a.text : "0");
      s4j4dnum = double.parse(s4d4d.text.isNotEmpty ? s4d4d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d4tnum = double.parse(s4d4tnum.toString().isNotEmpty ? s4d4tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d4tnum = s4j4dnum - s4j4anum - timepause;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }
  additions4j5 (String) {
    setState(() {
      s4d5t.clear();
      totals4.clear();
      s4j5anum = double.parse(s4d5a.text.isNotEmpty ? s4d5a.text : "0");
      s4j5dnum = double.parse(s4d5d.text.isNotEmpty ? s4d5d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d5tnum = double.parse(s4d5tnum.toString().isNotEmpty ? s4d5tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d5tnum = s4j5dnum - s4j5anum - timepause;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }
  additions4j6 (String) {
    setState(() {
      s4d6t.clear();
      totals4.clear();
      s4j6anum = double.parse(s4d6a.text.isNotEmpty ? s4d6a.text : "0");
      s4j6dnum = double.parse(s4d6d.text.isNotEmpty ? s4d6d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s4d6tnum = double.parse(s4d6tnum.toString().isNotEmpty ? s4d6tnum.toString() : "0");
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      s4d6tnum = s4j6dnum - s4j6anum;
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }
  clearResults4(String) {
    setState(() {
      totals4.clear();
      s4d1tnum = double.parse(s4d1t.text.isNotEmpty ? s4d1t.text : s4d1tnum.toString());
      s4d2tnum = double.parse(s4d2t.text.isNotEmpty ? s4d2t.text : s4d2tnum.toString());
      s4d3tnum = double.parse(s4d3t.text.isNotEmpty ? s4d3t.text : s4d3tnum.toString());
      s4d4tnum = double.parse(s4d4t.text.isNotEmpty ? s4d4t.text : s4d4tnum.toString());
      s4d5tnum = double.parse(s4d5t.text.isNotEmpty ? s4d5t.text : s4d5tnum.toString());
      s4d6tnum = double.parse(s4d6t.text.isNotEmpty ? s4d6t.text : s4d6tnum.toString());
      totals4num = s4d1tnum + s4d2tnum + s4d3tnum + s4d4tnum + s4d5tnum + s4d6tnum;
    });
  }

  additions5j1 (String) {
    setState(() {
      s5d1t.clear();
      totals5.clear();
      s5j1anum = double.parse(s5d1a.text.isNotEmpty ? s5d1a.text : "0");
      s5j1dnum = double.parse(s5d1d.text.isNotEmpty ? s5d1d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d1tnum = double.parse(s5d1tnum.toString().isNotEmpty ? s5d1tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d1tnum = s5j1dnum - s5j1anum - timepause;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;

    });
  }
  additions5j2 (String) {
    setState(() {
      s5d2t.clear();
      totals5.clear();
      s5j2anum = double.parse(s5d2a.text.isNotEmpty ? s5d2a.text : "0");
      s5j2dnum = double.parse(s5d2d.text.isNotEmpty ? s5d2d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d2tnum = double.parse(s5d2tnum.toString().isNotEmpty ? s5d2tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d2tnum = s5j2dnum - s5j2anum - timepause;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }
  additions5j3 (String) {
    setState(() {
      s5d3t.clear();
      totals5.clear();
      s5j3anum = double.parse(s5d3a.text.isNotEmpty ? s5d3a.text : "0");
      s5j3dnum = double.parse(s5d3d.text.isNotEmpty ? s5d3d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d3tnum = double.parse(s5d3tnum.toString().isNotEmpty ? s5d3tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d3tnum = s5j3dnum - s5j3anum - timepause;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }
  additions5j4 (String) {
    setState(() {
      s5d4t.clear();
      totals5.clear();
      s5j4anum = double.parse(s5d4a.text.isNotEmpty ? s5d4a.text : "0");
      s5j4dnum = double.parse(s5d4d.text.isNotEmpty ? s5d4d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d4tnum = double.parse(s5d4tnum.toString().isNotEmpty ? s5d4tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d4tnum = s5j4dnum - s5j4anum - timepause;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }
  additions5j5 (String) {
    setState(() {
      s5d5t.clear();
      totals5.clear();
      s5j5anum = double.parse(s5d5a.text.isNotEmpty ? s5d5a.text : "0");
      s5j5dnum = double.parse(s5d5d.text.isNotEmpty ? s5d5d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d5tnum = double.parse(s5d5tnum.toString().isNotEmpty ? s5d5tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d5tnum = s5j5dnum - s5j5anum - timepause;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }
  additions5j6 (String) {
    setState(() {
      s5d6t.clear();
      totals5.clear();
      s5j6anum = double.parse(s5d6a.text.isNotEmpty ? s5d6a.text : "0");
      s5j6dnum = double.parse(s5d6d.text.isNotEmpty ? s5d6d.text : "0");
      timepause = double.parse(widget.horaire.tempsPause);

      s5d6tnum = double.parse(s5d6tnum.toString().isNotEmpty ? s5d6tnum.toString() : "0");
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      s5d6tnum = s5j6dnum - s5j6anum;
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }
  clearResults5(String) {
    setState(() {
      totals5.clear();
      s5d1tnum = double.parse(s5d1t.text.isNotEmpty ? s5d1t.text : s5d1tnum.toString());
      s5d2tnum = double.parse(s5d2t.text.isNotEmpty ? s5d2t.text : s5d2tnum.toString());
      s5d3tnum = double.parse(s5d3t.text.isNotEmpty ? s5d3t.text : s5d3tnum.toString());
      s5d4tnum = double.parse(s5d4t.text.isNotEmpty ? s5d4t.text : s5d4tnum.toString());
      s5d5tnum = double.parse(s5d5t.text.isNotEmpty ? s5d5t.text : s5d5tnum.toString());
      s5d6tnum = double.parse(s5d6t.text.isNotEmpty ? s5d6t.text : s5d6tnum.toString());
      totals5num = s5d1tnum + s5d2tnum + s5d3tnum + s5d4tnum + s5d5tnum + s5d6tnum;
    });
  }

  additionTotalMois() {

    setState(() {
      totals1num = double.parse(totals1.text.isNotEmpty ? totals1.text : totals1num.toString());
      totals2num = double.parse(totals2.text.isNotEmpty ? totals2.text : totals2num.toString());
      totals3num = double.parse(totals3.text.isNotEmpty ? totals3.text : totals3num.toString());
      totals4num = double.parse(totals4.text.isNotEmpty ? totals4.text : totals4num.toString());
      totals5num = double.parse(totals5.text.isNotEmpty ? totals5.text : totals5num.toString());
      totalheureMois = totals1num + totals2num + totals3num + totals4num + totals5num;

      moyenne = double.parse(contractValue);
      totalheureMois = double.parse(totalheureMois.toString());
      moduleprecnum = double.parse(widget.horaire.module);
      totalmoduleMois = totalheureMois +  moduleprecnum - moyenne ;
    });
    return buildBottomSheet();
  }


  @override
  Widget build(BuildContext context) {

    final tabNewsSelect = <Widget>[const Tab(text: 'S1'), const Tab(text: 'S2'), const Tab(text: 'S3'), const Tab(text: 'S4'), const Tab(text: 'S5'),];
    final tabNewsView = <Widget>[buildSemaine1(), buildSemaine2(), buildSemaine3(), buildSemaine4(), buildSemaine5(),];
    return DefaultTabController(
        length: tabNewsSelect.length,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: white,
            elevation: 5,
            title: Row(
              children: [
                Text("Modifier le mois de",
                    style: GoogleFonts.oswald(textStyle: const TextStyle(color: black,fontSize: 18,letterSpacing: 0.5,height: 1,decoration: TextDecoration.none))),
               const SizedBox(width: 10),
                Text(widget.horaire.mois,
                    style: GoogleFonts.oswald(textStyle: const TextStyle(color: primary,fontSize: 18,letterSpacing: 0.5,height: 1,decoration: TextDecoration.none))),
              ],
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(indicatorColor: primary, tabs: tabNewsSelect,labelColor: black),
          ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        buildHeader(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 50,
                          child: TabBarView(
                            children: tabNewsView,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ));
  }


Widget buildHeader() {
    return Container(
       padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
        decoration: BoxDecoration(
            color: grey.withOpacity(0.6),
        ),
        height: 50,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    const Icon(Icons.article, color: white,size: 20),
                    const SizedBox(width: 10),
                    Text("Mon contrat horaire :   $contractValue",
                        style: GoogleFonts.poppins(textStyle: const TextStyle(color: white,fontSize: 14,decoration: TextDecoration.none)))
  ],
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    const Icon(Ionicons.restaurant_outline,color: white,size: 20),
                    const SizedBox(width: 10),
                    Text("Mon temps de pause :   ${widget.horaire.tempsPause}",
                        style: GoogleFonts.poppins(textStyle: const TextStyle(color: white,fontSize: 14,decoration: TextDecoration.none))),
                  ],
                )

              ],
            ),
          ],
        )
    );
 }

 validateForm () {
    return  ElevatedButton(
        onPressed: ()  {
          if (isEdit) {
            Horaire horaire = Horaire(
              mois: moisController.text,
              module: moduleController.text,
              date: DateTime.now(),
              id: widget.horaire.id,


              s1d1a: s1d1a.text,
              s1d1d: s1d1d.text,
              s1d1t: (s1d1t.text.isNotEmpty) ? s1d1t.text : s1d1t.text = s1d1tnum.toString(),
              s1d2a: s1d2a.text,
              s1d2d: s1d2d.text,
              s1d2t: (s1d2t.text.isNotEmpty) ? s1d2t.text : s1d2t.text = s1d2tnum.toString(),
              s1d3a: s1d3a.text,
              s1d3d: s1d3d.text,
              s1d3t: (s1d3t.text.isNotEmpty) ? s1d3t.text : s1d3t.text = s1d3tnum.toString(),
              s1d4a: s1d4a.text,
              s1d4d: s1d4d.text,
              s1d4t: (s1d4t.text.isNotEmpty) ? s1d4t.text : s1d4t.text = s1d4tnum.toString(),
              s1d5a: s1d5a.text,
              s1d5d: s1d5d.text,
              s1d5t: (s1d5t.text.isNotEmpty) ? s1d5t.text : s1d5t.text = s1d5tnum.toString(),
              s1d6a: s1d6a.text,
              s1d6d: s1d6d.text,
              s1d6t: (s1d6t.text.isNotEmpty) ? s1d6t.text : s1d6t.text = s1d6tnum.toString(),
              totals1: (totals1.text.isNotEmpty) ? totals1.text : totals1.text = totals1num.toString(),


              s2d1a: s2d1a.text,
              s2d1d: s2d1d.text,
              s2d1t: (s2d1t.text.isNotEmpty) ? s2d1t.text : s2d1t.text = s2d1tnum.toString(),
              s2d2a: s2d2a.text,
              s2d2d: s2d2d.text,
              s2d2t: (s2d2t.text.isNotEmpty) ? s2d2t.text : s2d2t.text = s2d2tnum.toString(),
              s2d3a: s2d3a.text,
              s2d3d: s2d3d.text,
              s2d3t: (s2d3t.text.isNotEmpty) ? s2d3t.text : s2d3t.text = s2d3tnum.toString(),
              s2d4a: s2d4a.text,
              s2d4d: s2d4d.text,
              s2d4t: (s2d4t.text.isNotEmpty) ? s2d4t.text : s2d4t.text = s2d4tnum.toString(),
              s2d5a: s2d5a.text,
              s2d5d: s2d5d.text,
              s2d5t: (s2d5t.text.isNotEmpty) ? s2d5t.text : s2d5t.text = s2d5tnum.toString(),
              s2d6a: s2d6a.text,
              s2d6d: s2d6d.text,
              s2d6t: (s2d6t.text.isNotEmpty) ? s2d6t.text : s2d6t.text = s2d6tnum.toString(),
              totals2: (totals2.text.isNotEmpty) ? totals2.text : totals2.text = totals2num.toString(),

              s3d1a: s3d1a.text,
              s3d1d: s3d1d.text,
              s3d1t: (s3d1t.text.isNotEmpty) ? s3d1t.text : s3d1t.text = s3d1tnum.toString(),
              s3d2a: s3d2a.text,
              s3d2d: s3d2d.text,
              s3d2t: (s3d2t.text.isNotEmpty) ? s3d2t.text : s3d2t.text = s3d2tnum.toString(),
              s3d3a: s3d3a.text,
              s3d3d: s3d3d.text,
              s3d3t: (s3d3t.text.isNotEmpty) ? s3d3t.text : s3d3t.text = s3d3tnum.toString(),
              s3d4a: s3d4a.text,
              s3d4d: s3d4d.text,
              s3d4t: (s3d4t.text.isNotEmpty) ? s3d4t.text : s3d4t.text = s3d4tnum.toString(),
              s3d5a: s3d5a.text,
              s3d5d: s3d5d.text,
              s3d5t: (s3d5t.text.isNotEmpty) ? s3d5t.text : s3d5t.text = s3d5tnum.toString(),
              s3d6a: s3d6a.text,
              s3d6d: s3d6d.text,
              s3d6t: (s3d6t.text.isNotEmpty) ? s3d6t.text : s3d6t.text = s3d6tnum.toString(),
              totals3: (totals3.text.isNotEmpty) ? totals3.text : totals3.text = totals3num.toString(),

              s4d1a: s4d1a.text,
              s4d1d: s4d1d.text,
              s4d1t: (s4d1t.text.isNotEmpty) ? s4d1t.text : s4d1t.text = s4d1tnum.toString(),
              s4d2a: s4d2a.text,
              s4d2d: s4d2d.text,
              s4d2t: (s4d2t.text.isNotEmpty) ? s4d2t.text : s4d2t.text = s4d2tnum.toString(),
              s4d3a: s4d3a.text,
              s4d3d: s4d3d.text,
              s4d3t: (s4d3t.text.isNotEmpty) ? s4d3t.text : s4d3t.text = s4d3tnum.toString(),
              s4d4a: s4d4a.text,
              s4d4d: s4d4d.text,
              s4d4t: (s4d4t.text.isNotEmpty) ? s4d4t.text : s4d4t.text = s4d4tnum.toString(),
              s4d5a: s4d5a.text,
              s4d5d: s4d5d.text,
              s4d5t: (s4d5t.text.isNotEmpty) ? s4d5t.text : s4d5t.text = s4d5tnum.toString(),
              s4d6a: s4d6a.text,
              s4d6d: s4d6d.text,
              s4d6t: (s4d6t.text.isNotEmpty) ? s4d6t.text : s4d6t.text = s4d6tnum.toString(),
              totals4: (totals4.text.isNotEmpty) ? totals4.text : totals4.text = totals4num.toString(),

              s5d1a: s5d1a.text,
              s5d1d: s5d1d.text,
              s5d1t: (s5d1t.text.isNotEmpty) ? s5d1t.text : s5d1t.text = s5d1tnum.toString(),
              s5d2a: s5d2a.text,
              s5d2d: s5d2d.text,
              s5d2t: (s5d2t.text.isNotEmpty) ? s5d2t.text : s5d2t.text = s5d2tnum.toString(),
              s5d3a: s5d3a.text,
              s5d3d: s5d3d.text,
              s5d3t: (s5d3t.text.isNotEmpty) ? s5d3t.text : s5d3t.text = s5d3tnum.toString(),
              s5d4a: s5d4a.text,
              s5d4d: s5d4d.text,
              s5d4t: (s5d4t.text.isNotEmpty) ? s5d4t.text : s5d4t.text = s5d4tnum.toString(),
              s5d5a: s5d5a.text,
              s5d5d: s5d5d.text,
              s5d5t: (s5d5t.text.isNotEmpty) ? s5d5t.text : s5d5t.text = s5d5tnum.toString(),
              s5d6a: s5d6a.text,
              s5d6d: s5d6d.text,
              s5d6t: (s5d6t.text.isNotEmpty) ? s5d6t.text : s5d6t.text = s5d6tnum.toString(),
              totals5: (totals5.text.isNotEmpty) ? totals5.text : totals5.text = totals5num.toString(),

              notifs1: notifs1.text,
              notifs2: notifs2.text,
              notifs3: notifs3.text,
              notifs4: notifs4.text,
              notifs5: notifs5.text,

              totalHeureDuMois: totalHeureDuMois.text = totalheureMois.toString(),
              totalModuleDuMois: totalModuleDuMois.text = totalmoduleMois.toString(),

              contratHoraire: contratHoraire.text,
              tempsPause: tempsPause.text,

            );
            editHoraire(horaire);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
          } else {}
        },
          style: ElevatedButton.styleFrom(primary: primary),
          child: Text("Enregistrer les modifications",style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none))
    ));
  }

buildBottomSheet () {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return FadeAnimation(
            delay: 100,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 270,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Modulation précédente : ", style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 15,decoration: TextDecoration.none))),
                          const SizedBox(width: 10),
                          Text( widget.horaire.module, style: GoogleFonts.poppins( textStyle: const TextStyle(color: primary,fontSize: 15,decoration: TextDecoration.none))),
                        ],),
                      const SizedBox(height: 8),
                      Row(children: [
                        Text("Heures total du mois : ", style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 15,decoration: TextDecoration.none))),
                        const SizedBox(width: 10),
                        Text( totalheureMois.toString(), style: GoogleFonts.poppins( textStyle: const TextStyle(color: primary,fontSize: 15,decoration: TextDecoration.none))),
                      ],),
                      const SizedBox(height: 8),
                      Row(children: [
                        Text("Modulation a la fin du mois : ", style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 15,decoration: TextDecoration.none))),
                        const SizedBox(width: 10),
                        SizedBox(
                           width: 60,
                            child: Text( totalmoduleMois.toString(), style: GoogleFonts.poppins( textStyle: const TextStyle(color: primary,fontSize: 15,decoration: TextDecoration.none, overflow: TextOverflow.ellipsis)))),
                      ],),
                    ]),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width -40,
                    child: validateForm()
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width -40,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        style: ElevatedButton.styleFrom(primary: grey),
                        child: Text("Revenir a l'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
                    ),
                  ),
                  SizedBox(
                  width: MediaQuery.of(context).size.width -40,
                  child: ElevatedButton(
                      onPressed: () {Navigator.of(context).pop();},
                      style: ElevatedButton.styleFrom(primary: white),
                      child: Text("Fermer", style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 13,decoration: TextDecoration.none)),)
                  ),
                ),
              ],),
            ),
          );
        }
    );
 }

Widget buildSemaine1 () {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          FadeAnimation(
            delay: 50,
            child: CustomTextField(
                jour: 'Lundi :',
                controllerArr: s1d1a,
                controllerDep: s1d1d,
                controllerTot: s1d1t,
                functionArr: additions1j1,
                functionDep: additions1j1,
                functionTot: clearResults1,
                labelTextResult: (s1d1t.text.isNotEmpty || s1d1tnum.toString().isEmpty) ? "" : s1d1tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay:100,
            child: CustomTextField(
                jour: 'Mardi :',
                controllerArr: s1d2a,
                controllerDep: s1d2d,
                controllerTot: s1d2t,
                functionArr: additions1j2,
                functionDep: additions1j2,
                functionTot: clearResults1,
                labelTextResult: (s1d2t.text.isNotEmpty || s1d2tnum.toString().isEmpty) ? "" : s1d2tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 150,
            child: CustomTextField(
              jour: 'Mercredi :',
              controllerArr: s1d3a,
              controllerDep: s1d3d,
              controllerTot: s1d3t,
              functionArr: additions1j3,
              functionDep: additions1j3,
              functionTot: clearResults1,
              labelTextResult: (s1d3t.text.isNotEmpty || s1d3tnum.toString().isEmpty) ? "" : s1d3tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 200,
            child: CustomTextField(
              jour: 'Jeudi :',
              controllerArr: s1d4a,
              controllerDep: s1d4d,
              controllerTot: s1d4t,
              functionArr: additions1j4,
              functionDep: additions1j4,
              functionTot: clearResults1,
              labelTextResult: (s1d4t.text.isNotEmpty || s1d4tnum.toString().isEmpty) ? "" : s1d4tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 250,
            child: CustomTextField(
              jour: 'Vendredi :',
              controllerArr: s1d5a,
              controllerDep: s1d5d,
              controllerTot: s1d5t,
              functionArr: additions1j5,
              functionDep: additions1j5,
              functionTot: clearResults1,
              labelTextResult: (s1d5t.text.isNotEmpty || s1d5tnum.toString().isEmpty) ? "" : s1d5tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 300,
            child: CustomTextField(
              jour: 'Samedi :',
              controllerArr: s1d6a,
              controllerDep: s1d6d,
              controllerTot: s1d6t,
              functionArr: additions1j6,
              functionDep: additions1j6,
              functionTot: clearResults1,
              labelTextResult:(s1d6t.text.isNotEmpty || s1d6tnum.toString().isEmpty) ? "" : s1d6tnum.toString(),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 350,
            child: CustomTextFieldFooter(
                functionTotal: additionTotalMois,
                titre: "Total Semaine :",
                controllerTot: totals1,
                controllerNotif: notifs1,
                labelTextResult: (totals1.text.isNotEmpty || totals1num.toString().isEmpty) ? "" :  totals1num.toString(),
               // functionTotal: additionTotals1,
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 400,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(primary: grey),
                  child: Text("Revenir a la page d'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
              ),
            ),
          )
        ]),
      ),
    );
  }
Widget buildSemaine2 () {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          FadeAnimation(
            delay: 50,
            child: CustomTextField(
              jour: 'Lundi :',
              controllerArr: s2d1a,
              controllerDep: s2d1d,
              controllerTot: s2d1t,
              functionArr: additions2j1,
              functionDep: additions2j1,
              functionTot: clearResults2,
              labelTextResult: (s2d1t.text.isNotEmpty || s2d1tnum.toString().isEmpty) ? "" : s2d1tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 100,
            child: CustomTextField(
              jour: 'Mardi :',
              controllerArr: s2d2a,
              controllerDep: s2d2d,
              controllerTot: s2d2t,
              functionArr: additions2j2,
              functionDep: additions2j2,
              functionTot: clearResults2,
              labelTextResult: (s2d2t.text.isNotEmpty || s2d2tnum.toString().isEmpty) ? "" : s2d2tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 150,
            child: CustomTextField(
              jour: 'Mercredi :',
              controllerArr: s2d3a,
              controllerDep: s2d3d,
              controllerTot: s2d3t,
              functionArr: additions2j3,
              functionDep: additions2j3,
              functionTot: clearResults2,
              labelTextResult: (s2d3t.text.isNotEmpty || s2d3tnum.toString().isEmpty) ? "" : s2d3tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 200,
            child: CustomTextField(
              jour: 'Jeudi :',
              controllerArr: s2d4a,
              controllerDep: s2d4d,
              controllerTot: s2d4t,
              functionArr: additions2j4,
              functionDep: additions2j4,
              functionTot: clearResults2,
              labelTextResult: (s2d4t.text.isNotEmpty || s2d4tnum.toString().isEmpty) ? "" : s2d4tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 250,
            child: CustomTextField(
              jour: 'Vendredi :',
              controllerArr: s2d5a,
              controllerDep: s2d5d,
              controllerTot: s2d5t,
              functionArr: additions2j5,
              functionDep: additions2j5,
              functionTot: clearResults2,
              labelTextResult: (s2d5t.text.isNotEmpty || s2d5tnum.toString().isEmpty) ? "" : s2d5tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 300,
            child: CustomTextField(
              jour: 'Samedi :',
              controllerArr: s2d6a,
              controllerDep: s2d6d,
              controllerTot: s2d6t,
              functionArr: additions2j6,
              functionDep: additions2j6,
              functionTot: clearResults2,
              labelTextResult:(s2d6t.text.isNotEmpty || s2d6tnum.toString().isEmpty) ? "" : s2d6tnum.toString(),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 350,
            child: CustomTextFieldFooter(
              functionTotal: additionTotalMois,
              titre: "Total Semaine :",
              controllerTot: totals2,
              controllerNotif: notifs2,
              labelTextResult: (totals2.text.isNotEmpty ||  totals2num.toString().isEmpty) ? "" :  totals2num.toString(),
             // functionTotal: additionTots1(String),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 400,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(primary: grey),
                  child: Text("Revenir a la page d'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
              ),
            ),
          )
        ]),
      ),
    );
  }
Widget buildSemaine3 () {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          FadeAnimation(
            delay: 50,
            child: CustomTextField(
              jour: 'Lundi :',
              controllerArr: s3d1a,
              controllerDep: s3d1d,
              controllerTot: s3d1t,
              functionArr: additions3j1,
              functionDep: additions3j1,
              functionTot: clearResults3,
              labelTextResult: (s3d1t.text.isNotEmpty || s3d1tnum.toString().isEmpty) ? "" : s3d1tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 100,
            child: CustomTextField(
              jour: 'Mardi :',
              controllerArr: s3d2a,
              controllerDep: s3d2d,
              controllerTot: s3d2t,
              functionArr: additions3j2,
              functionDep: additions3j2,
              functionTot: clearResults3,
              labelTextResult: (s3d2t.text.isNotEmpty || s3d2tnum.toString().isEmpty) ? "" : s3d2tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 150,
            child: CustomTextField(
              jour: 'Mercredi :',
              controllerArr: s3d3a,
              controllerDep: s3d3d,
              controllerTot: s3d3t,
              functionArr: additions3j3,
              functionDep: additions3j3,
              functionTot: clearResults3,
              labelTextResult: (s3d3t.text.isNotEmpty || s3d3tnum.toString().isEmpty) ? "" : s3d3tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 200,
            child: CustomTextField(
              jour: 'Jeudi :',
              controllerArr: s3d4a,
              controllerDep: s3d4d,
              controllerTot: s3d4t,
              functionArr: additions3j4,
              functionDep: additions3j4,
              functionTot: clearResults3,
              labelTextResult: (s3d4t.text.isNotEmpty || s3d4tnum.toString().isEmpty) ? "" : s3d4tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 250,
            child: CustomTextField(
              jour: 'Vendredi :',
              controllerArr: s3d5a,
              controllerDep: s3d5d,
              controllerTot: s3d5t,
              functionArr: additions3j5,
              functionDep: additions3j5,
              functionTot: clearResults3,
              labelTextResult: (s3d5t.text.isNotEmpty || s3d5tnum.toString().isEmpty) ? "" : s3d5tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 300,
            child: CustomTextField(
              jour: 'Samedi :',
              controllerArr: s3d6a,
              controllerDep: s3d6d,
              controllerTot: s3d6t,
              functionArr: additions3j6,
              functionDep: additions3j6,
              functionTot: clearResults3,
              labelTextResult:(s3d6t.text.isNotEmpty || s3d6tnum.toString().isEmpty) ? "" : s3d6tnum.toString(),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 350,
            child: CustomTextFieldFooter(
              functionTotal: additionTotalMois,
              titre: "Total Semaine :",
              controllerTot: totals3,
              controllerNotif: notifs3,
              labelTextResult: (totals3.text.isNotEmpty ||  totals3num.toString().isEmpty) ? "" :  totals3num.toString(),
             // functionTotal: additionTots1(String),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 400,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(primary: grey),
                  child: Text("Revenir a la page d'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
              ),
            ),
          )
        ]),
      ),
    );
  }
Widget buildSemaine4 () {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          FadeAnimation(
            delay: 50,
            child: CustomTextField(
              jour: 'Lundi :',
              controllerArr: s4d1a,
              controllerDep: s4d1d,
              controllerTot: s4d1t,
              functionArr: additions4j1,
              functionDep: additions4j1,
              functionTot: clearResults4,
              labelTextResult: (s4d1t.text.isNotEmpty || s4d1tnum.toString().isEmpty) ? "" : s4d1tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 100,
            child: CustomTextField(
              jour: 'Mardi :',
              controllerArr: s4d2a,
              controllerDep: s4d2d,
              controllerTot: s4d2t,
              functionArr: additions4j2,
              functionDep: additions4j2,
              functionTot: clearResults4,
              labelTextResult: (s4d2t.text.isNotEmpty || s4d2tnum.toString().isEmpty) ? "" : s4d2tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 150,
            child: CustomTextField(
              jour: 'Mercredi :',
              controllerArr: s4d3a,
              controllerDep: s4d3d,
              controllerTot: s4d3t,
              functionArr: additions4j3,
              functionDep: additions4j3,
              functionTot: clearResults4,
              labelTextResult: (s4d3t.text.isNotEmpty || s4d3tnum.toString().isEmpty) ? "" : s4d3tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 200,
            child: CustomTextField(
              jour: 'Jeudi :',
              controllerArr: s4d4a,
              controllerDep: s4d4d,
              controllerTot: s4d4t,
              functionArr: additions4j4,
              functionDep: additions4j4,
              functionTot: clearResults4,
              labelTextResult: (s4d4t.text.isNotEmpty || s4d4tnum.toString().isEmpty) ? "" : s4d4tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 250,
            child: CustomTextField(
              jour: 'Vendredi :',
              controllerArr: s4d5a,
              controllerDep: s4d5d,
              controllerTot: s4d5t,
              functionArr: additions4j5,
              functionDep: additions4j5,
              functionTot: clearResults4,
              labelTextResult: (s4d5t.text.isNotEmpty || s4d5tnum.toString().isEmpty) ? "" : s4d5tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 300,
            child: CustomTextField(
              jour: 'Samedi :',
              controllerArr: s4d6a,
              controllerDep: s4d6d,
              controllerTot: s4d6t,
              functionArr: additions4j6,
              functionDep: additions4j6,
              functionTot: clearResults4,
              labelTextResult:(s4d6t.text.isNotEmpty || s4d6tnum.toString().isEmpty) ? "" : s4d6tnum.toString(),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 350,
            child: CustomTextFieldFooter(
              functionTotal: additionTotalMois,
              titre: "Total Semaine :",
              controllerTot: totals4,
              controllerNotif: notifs4,
              labelTextResult: (totals4.text.isNotEmpty ||  totals4num.toString().isEmpty) ? "" :  totals4num.toString(),
            //  functionTotal: additionTots1(String),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 400,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(primary: grey),
                  child: Text("Revenir a la page d'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
              ),
            ),
          )
        ]),
      ),
    );
  }
Widget buildSemaine5 () {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          FadeAnimation(
            delay: 50,
            child: CustomTextField(
              jour: 'Lundi :',
              controllerArr: s5d1a,
              controllerDep: s5d1d,
              controllerTot: s5d1t,
              functionArr: additions5j1,
              functionDep: additions5j1,
              functionTot: clearResults5,
              labelTextResult: (s5d1t.text.isNotEmpty || s5d1tnum.toString().isEmpty) ? "" : s5d1tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 100,
            child: CustomTextField(
              jour: 'Mardi :',
              controllerArr: s5d2a,
              controllerDep: s5d2d,
              controllerTot: s5d2t,
              functionArr: additions5j2,
              functionDep: additions5j2,
              functionTot: clearResults5,
              labelTextResult: (s5d2t.text.isNotEmpty || s5d2tnum.toString().isEmpty) ? "" : s5d2tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 150,
            child: CustomTextField(
              jour: 'Mercredi :',
              controllerArr: s5d3a,
              controllerDep: s5d3d,
              controllerTot: s5d3t,
              functionArr: additions5j3,
              functionDep: additions5j3,
              functionTot: clearResults5,
              labelTextResult: (s5d3t.text.isNotEmpty || s5d3tnum.toString().isEmpty) ? "" : s5d3tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 200,
            child: CustomTextField(
              jour: 'Jeudi :',
              controllerArr: s5d4a,
              controllerDep: s5d4d,
              controllerTot: s5d4t,
              functionArr: additions5j4,
              functionDep: additions5j4,
              functionTot: clearResults5,
              labelTextResult: (s5d4t.text.isNotEmpty || s5d4tnum.toString().isEmpty) ? "" : s5d4tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 250,
            child: CustomTextField(
              jour: 'Vendredi :',
              controllerArr: s5d5a,
              controllerDep: s5d5d,
              controllerTot: s5d5t,
              functionArr: additions5j5,
              functionDep: additions5j5,
              functionTot: clearResults5,
              labelTextResult: (s5d5t.text.isNotEmpty || s5d5tnum.toString().isEmpty) ? "" : s5d5tnum.toString(),
            ),
          ),
          const SizedBox(height:10),
          FadeAnimation(
            delay: 300,
            child: CustomTextField(
              jour: 'Samedi :',
              controllerArr: s5d6a,
              controllerDep: s5d6d,
              controllerTot: s5d6t,
              functionArr: additions5j6,
              functionDep: additions5j6,
              functionTot: clearResults5,
              labelTextResult:(s5d6t.text.isNotEmpty || s5d6tnum.toString().isEmpty) ? "" : s5d6tnum.toString(),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 350,
            child: CustomTextFieldFooter(
              functionTotal: additionTotalMois,
              titre: "Total Semaine :",
              controllerTot: totals5,
              controllerNotif: notifs5,
              labelTextResult: (totals5.text.isNotEmpty ||  totals5num.toString().isEmpty) ? "" :  totals5num.toString(),
             // functionTotal: additionTots1(String),
            ),
          ),
          const SizedBox(height:30),
          FadeAnimation(
            delay: 400,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(primary: grey),
                  child: Text("Revenir a la page d'accueil", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
              ),
            ),
          )
        ]),
      ),
    );
  }

}
