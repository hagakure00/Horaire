import 'package:cloud_firestore/cloud_firestore.dart';

class Horaire {

  String id;
  final DateTime date;
  final String mois;
  final String module;
  final String s1d1a;
  final String s1d1d;
  final String s1d1t;
  final String s1d2a;
  final String s1d2d;
  final String s1d2t;
  final String s1d3a;
  final String s1d3d;
  final String s1d3t;
  final String s1d4a;
  final String s1d4d;
  final String s1d4t;
  final String s1d5a;
  final String s1d5d;
  final String s1d5t;
  final String s1d6a;
  final String s1d6d;
  final String s1d6t;
  final String totals1;

  final String s2d1a;
  final String s2d1d;
  final String s2d1t;
  final String s2d2a;
  final String s2d2d;
  final String s2d2t;
  final String s2d3a;
  final String s2d3d;
  final String s2d3t;
  final String s2d4a;
  final String s2d4d;
  final String s2d4t;
  final String s2d5a;
  final String s2d5d;
  final String s2d5t;
  final String s2d6a;
  final String s2d6d;
  final String s2d6t;
  final String totals2;

  final String s3d1a;
  final String s3d1d;
  final String s3d1t;
  final String s3d2a;
  final String s3d2d;
  final String s3d2t;
  final String s3d3a;
  final String s3d3d;
  final String s3d3t;
  final String s3d4a;
  final String s3d4d;
  final String s3d4t;
  final String s3d5a;
  final String s3d5d;
  final String s3d5t;
  final String s3d6a;
  final String s3d6d;
  final String s3d6t;
  final String totals3;

  final String s4d1a;
  final String s4d1d;
  final String s4d1t;
  final String s4d2a;
  final String s4d2d;
  final String s4d2t;
  final String s4d3a;
  final String s4d3d;
  final String s4d3t;
  final String s4d4a;
  final String s4d4d;
  final String s4d4t;
  final String s4d5a;
  final String s4d5d;
  final String s4d5t;
  final String s4d6a;
  final String s4d6d;
  final String s4d6t;
  final String totals4;

  final String s5d1a;
  final String s5d1d;
  final String s5d1t;
  final String s5d2a;
  final String s5d2d;
  final String s5d2t;
  final String s5d3a;
  final String s5d3d;
  final String s5d3t;
  final String s5d4a;
  final String s5d4d;
  final String s5d4t;
  final String s5d5a;
  final String s5d5d;
  final String s5d5t;
  final String s5d6a;
  final String s5d6d;
  final String s5d6t;
  final String totals5;

  final String notifs1;
  final String notifs2;
  final String notifs3;
  final String notifs4;
  final String notifs5;

  final String totalHeureDuMois;
  final String totalModuleDuMois;

  final String contratHoraire;
  final String tempsPause;


  Horaire({
    this.id = '',
    required this.mois,
    required this.module,
    required this.date,

    required this.s1d1a,
    required this.s1d1d,
    required this.s1d1t,
    required this.s1d2a,
    required this.s1d2d,
    required this.s1d2t,
    required this.s1d3a,
    required this.s1d3d,
    required this.s1d3t,
    required this.s1d4a,
    required this.s1d4d,
    required this.s1d4t,
    required this.s1d5a,
    required this.s1d5d,
    required this.s1d5t,
    required this.s1d6a,
    required this.s1d6d,
    required this.s1d6t,
    required this.totals1,

    required this.s2d1a,
    required this.s2d1d,
    required this.s2d1t,
    required this.s2d2a,
    required this.s2d2d,
    required this.s2d2t,
    required this.s2d3a,
    required this.s2d3d,
    required this.s2d3t,
    required this.s2d4a,
    required  this.s2d4d,
    required this.s2d4t,
    required this.s2d5a,
    required this.s2d5d,
    required this.s2d5t,
    required this.s2d6a,
    required this.s2d6d,
    required this.s2d6t,
    required this.totals2,

    required this.s3d1a,
    required this.s3d1d,
    required this.s3d1t,
    required this.s3d2a,
    required this.s3d2d,
    required this.s3d2t,
    required this.s3d3a,
    required this.s3d3d,
    required this.s3d3t,
    required this.s3d4a,
    required this.s3d4d,
    required this.s3d4t,
    required this.s3d5a,
    required this.s3d5d,
    required this.s3d5t,
    required this.s3d6a,
    required this.s3d6d,
    required this.s3d6t,
    required this.totals3,

    required this.s4d1a,
    required this.s4d1d,
    required this.s4d1t,
    required this.s4d2a,
    required this.s4d2d,
    required this.s4d2t,
    required this.s4d3a,
    required this.s4d3d,
    required this.s4d3t,
    required this.s4d4a,
    required this.s4d4d,
    required this.s4d4t,
    required this.s4d5a,
    required this.s4d5d,
    required this.s4d5t,
    required this.s4d6a,
    required this.s4d6d,
    required this.s4d6t,
    required this.totals4,

    required this.s5d1a,
    required this.s5d1d,
    required this.s5d1t,
    required this.s5d2a,
    required  this.s5d2d,
    required this.s5d2t,
    required this.s5d3a,
    required  this.s5d3d,
    required this.s5d3t,
    required this.s5d4a,
    required  this.s5d4d,
    required  this.s5d4t,
    required this.s5d5a,
    required this.s5d5d,
    required  this.s5d5t,
    required  this.s5d6a,
    required  this.s5d6d,
    required  this.s5d6t,
    required  this.totals5,

    required  this.notifs1,
    required  this.notifs2,
    required  this.notifs3,
    required  this.notifs4,
    required  this.notifs5,

    required  this.totalHeureDuMois,
    required  this.totalModuleDuMois,

    required this.contratHoraire,
    required this.tempsPause
  });


  Map <String, dynamic> toMap() => {
    'id' : id,
    'mois' : mois,
    'module' : module,
    'date' : date,

    "s1d1a": s1d1a,
    "s1d1d": s1d1d,
    "s1d1t": s1d1t,
    "s1d2a": s1d2a,
    "s1d2d": s1d2d,
    "s1d2t": s1d2t,
    "s1d3a": s1d3a,
    "s1d3d": s1d3d,
    "s1d3t": s1d3t,
    "s1d4a": s1d4a,
    "s1d4d": s1d4d,
    "s1d4t": s1d4t,
    "s1d5a": s1d5a,
    "s1d5d": s1d5d,
    "s1d5t": s1d5t,
    "s1d6a": s1d6a,
    "s1d6d": s1d6d,
    "s1d6t": s1d6t,
    "totals1": totals1,

    "s2d1a": s2d1a,
    "s2d1d": s2d1d,
    "s2d1t": s2d1t,
    "s2d2a": s2d2a,
    "s2d2d": s2d2d,
    "s2d2t": s2d2t,
    "s2d3a": s2d3a,
    "s2d3d": s2d3d,
    "s2d3t": s2d3t,
    "s2d4a": s2d4a,
    "s2d4d": s2d4d,
    "s2d4t": s2d4t,
    "s2d5a": s2d5a,
    "s2d5d": s2d5d,
    "s2d5t": s2d5t,
    "s2d6a": s2d6a,
    "s2d6d": s2d6d,
    "s2d6t": s2d6t,
    "totals2": totals2,

    "s3d1a": s3d1a,
    "s3d1d": s3d1d,
    "s3d1t": s3d1t,
    "s3d2a": s3d2a,
    "s3d2d": s3d2d,
    "s3d2t": s3d2t,
    "s3d3a": s3d3a,
    "s3d3d": s3d3d,
    "s3d3t": s3d3t,
    "s3d4a": s3d4a,
    "s3d4d": s3d4d,
    "s3d4t": s3d4t,
    "s3d5a": s3d5a,
    "s3d5d": s3d5d,
    "s3d5t": s3d5t,
    "s3d6a": s3d6a,
    "s3d6d": s3d6d,
    "s3d6t": s3d6t,
    "totals3": totals3,

    "s4d1a": s4d1a,
    "s4d1d": s4d1d,
    "s4d1t": s4d1t,
    "s4d2a": s4d2a,
    "s4d2d": s4d2d,
    "s4d2t": s4d2t,
    "s4d3a": s4d3a,
    "s4d3d": s4d3d,
    "s4d3t": s4d3t,
    "s4d4a": s4d4a,
    "s4d4d": s4d4d,
    "s4d4t": s4d4t,
    "s4d5a": s4d5a,
    "s4d5d": s4d5d,
    "s4d5t": s4d5t,
    "s4d6a": s4d6a,
    "s4d6d": s4d6d,
    "s4d6t": s4d6t,
    "totals4": totals4,

    "s5d1a": s5d1a,
    "s5d1d": s5d1d,
    "s5d1t": s5d1t,
    "s5d2a": s5d2a,
    "s5d2d": s5d2d,
    "s5d2t": s5d2t,
    "s5d3a": s5d3a,
    "s5d3d": s5d3d,
    "s5d3t": s5d3t,
    "s5d4a": s5d4a,
    "s5d4d": s5d4d,
    "s5d4t": s5d4t,
    "s5d5a": s5d5a,
    "s5d5d": s5d5d,
    "s5d5t": s5d5t,
    "s5d6a": s5d6a,
    "s5d6d": s5d6d,
    "s5d6t": s5d6t,
    "totals5": totals5,

    "notifs1": notifs1,
    "notifs2": notifs2,
    "notifs3": notifs3,
    "notifs4": notifs4,
    "notifs5": notifs5,

    "totalHeureDuMois": totalHeureDuMois,
    "totalModuleDuMois": totalModuleDuMois,
    "contratHoraire": contratHoraire,
    "tempsPause": tempsPause
  };

  static Horaire fromJson (Map<String, dynamic> json, String id) => Horaire(
    mois: json['mois'],
    module: json['module'],
    date: (json['date'] as Timestamp).toDate(),
    id: json['id'],

    s1d1a : json['s1d1a'],
    s1d1d : json['s1d1d'],
    s1d1t : json['s1d1t'],
    s1d2a : json['s1d2a'],
    s1d2d : json['s1d2d'],
    s1d2t : json['s1d2t'],
    s1d3a : json['s1d3a'],
    s1d3d : json['s1d3d'],
    s1d3t : json['s1d3t'],
    s1d4a : json['s1d4a'],
    s1d4d : json['s1d4d'],
    s1d4t : json['s1d4t'],
    s1d5a : json['s1d5a'],
    s1d5d : json['s1d5d'],
    s1d5t : json['s1d5t'],
    s1d6a : json['s1d6a'],
    s1d6d : json['s1d6d'],
    s1d6t : json['s1d6t'],
    totals1 : json['totals1'],

    s2d1a : json['s2d1a'],
    s2d1d : json['s2d1d'],
    s2d1t : json['s2d1t'],
    s2d2a : json['s2d2a'],
    s2d2d : json['s2d2d'],
    s2d2t : json['s2d2t'],
    s2d3a : json['s2d3a'],
    s2d3d : json['s2d3d'],
    s2d3t : json['s2d3t'],
    s2d4a : json['s2d4a'],
    s2d4d : json['s2d4d'],
    s2d4t : json['s2d4t'],
    s2d5a : json['s2d5a'],
    s2d5d : json['s2d5d'],
    s2d5t : json['s2d5t'],
    s2d6a : json['s2d6a'],
    s2d6d : json['s2d6d'],
    s2d6t : json['s2d6t'],
    totals2 : json['totals2'],

    s3d1a : json['s3d1a'],
    s3d1d : json['s3d1d'],
    s3d1t : json['s3d1t'],
    s3d2a : json['s3d2a'],
    s3d2d : json['s3d2d'],
    s3d2t : json['s3d2t'],
    s3d3a : json['s3d3a'],
    s3d3d : json['s3d3d'],
    s3d3t : json['s3d3t'],
    s3d4a : json['s3d4a'],
    s3d4d : json['s3d4d'],
    s3d4t : json['s3d4t'],
    s3d5a : json['s3d5a'],
    s3d5d : json['s3d5d'],
    s3d5t : json['s3d5t'],
    s3d6a : json['s3d6a'],
    s3d6d : json['s3d6d'],
    s3d6t : json['s3d6t'],
    totals3 : json['totals3'],

    s4d1a : json['s4d1a'],
    s4d1d : json['s4d1d'],
    s4d1t : json['s4d1t'],
    s4d2a : json['s4d2a'],
    s4d2d : json['s4d2d'],
    s4d2t : json['s4d2t'],
    s4d3a : json['s4d3a'],
    s4d3d : json['s4d3d'],
    s4d3t : json['s4d3t'],
    s4d4a : json['s4d4a'],
    s4d4d : json['s4d4d'],
    s4d4t : json['s4d4t'],
    s4d5a : json['s4d5a'],
    s4d5d : json['s4d5d'],
    s4d5t : json['s4d5t'],
    s4d6a : json['s4d6a'],
    s4d6d : json['s4d6d'],
    s4d6t : json['s4d6t'],
    totals4 : json['totals4'],

    s5d1a : json['s5d1a'],
    s5d1d : json['s5d1d'],
    s5d1t : json['s5d1t'],
    s5d2a : json['s5d2a'],
    s5d2d : json['s5d2d'],
    s5d2t : json['s5d2t'],
    s5d3a : json['s5d3a'],
    s5d3d : json['s5d3d'],
    s5d3t : json['s5d3t'],
    s5d4a : json['s5d4a'],
    s5d4d : json['s5d4d'],
    s5d4t : json['s5d4t'],
    s5d5a : json['s5d5a'],
    s5d5d : json['s5d5d'],
    s5d5t : json['s5d5t'],
    s5d6a : json['s5d6a'],
    s5d6d : json['s5d6d'],
    s5d6t : json['s5d6t'],
    totals5 : json['totals5'],

    notifs1 : json['notifs1'],
    notifs2 : json['notifs2'],
    notifs3 : json['notifs3'],
    notifs4 : json['notifs4'],
    notifs5 : json['notifs5'],

    totalHeureDuMois : json['totalHeureDuMois'],
    totalModuleDuMois : json['totalModuleDuMois'],

    contratHoraire : json['contratHoraire'],
    tempsPause : json['tempsPause']
  );


}