import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horaire/Models/HoraireModel.dart';
import 'package:horaire/Pages/HomePage.dart';
import 'package:horaire/Services/FirebaseService.dart';
import 'package:horaire/Theme/colors.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  final formKey = GlobalKey<FormState>();
  TextEditingController moisController = TextEditingController();
  TextEditingController moduleController = TextEditingController();

  TextEditingController s1d1a = TextEditingController();
  TextEditingController s1d2a = TextEditingController();
  TextEditingController s1d3a = TextEditingController();
  TextEditingController s1d4a = TextEditingController();
  TextEditingController s1d5a = TextEditingController();
  TextEditingController s1d6a = TextEditingController();
  TextEditingController s1d1d = TextEditingController();
  TextEditingController s1d2d = TextEditingController();
  TextEditingController s1d3d = TextEditingController();
  TextEditingController s1d4d = TextEditingController();
  TextEditingController s1d5d = TextEditingController();
  TextEditingController s1d6d = TextEditingController();
  TextEditingController s1d1t = TextEditingController();
  TextEditingController s1d2t = TextEditingController();
  TextEditingController s1d3t = TextEditingController();
  TextEditingController s1d4t = TextEditingController();
  TextEditingController s1d5t = TextEditingController();
  TextEditingController s1d6t = TextEditingController();
  TextEditingController totals1 = TextEditingController();

  TextEditingController s2d1a = TextEditingController();
  TextEditingController s2d2a = TextEditingController();
  TextEditingController s2d3a = TextEditingController();
  TextEditingController s2d4a = TextEditingController();
  TextEditingController s2d5a = TextEditingController();
  TextEditingController s2d6a = TextEditingController();
  TextEditingController s2d1d = TextEditingController();
  TextEditingController s2d2d = TextEditingController();
  TextEditingController s2d3d = TextEditingController();
  TextEditingController s2d4d = TextEditingController();
  TextEditingController s2d5d = TextEditingController();
  TextEditingController s2d6d = TextEditingController();
  TextEditingController s2d1t = TextEditingController();
  TextEditingController s2d2t = TextEditingController();
  TextEditingController s2d3t = TextEditingController();
  TextEditingController s2d4t = TextEditingController();
  TextEditingController s2d5t = TextEditingController();
  TextEditingController s2d6t = TextEditingController();
  TextEditingController totals2 = TextEditingController();

  TextEditingController s3d1a = TextEditingController();
  TextEditingController s3d2a = TextEditingController();
  TextEditingController s3d3a = TextEditingController();
  TextEditingController s3d4a = TextEditingController();
  TextEditingController s3d5a = TextEditingController();
  TextEditingController s3d6a = TextEditingController();
  TextEditingController s3d1d = TextEditingController();
  TextEditingController s3d2d = TextEditingController();
  TextEditingController s3d3d = TextEditingController();
  TextEditingController s3d4d = TextEditingController();
  TextEditingController s3d5d = TextEditingController();
  TextEditingController s3d6d = TextEditingController();
  TextEditingController s3d1t = TextEditingController();
  TextEditingController s3d2t = TextEditingController();
  TextEditingController s3d3t = TextEditingController();
  TextEditingController s3d4t = TextEditingController();
  TextEditingController s3d5t = TextEditingController();
  TextEditingController s3d6t = TextEditingController();
  TextEditingController totals3 = TextEditingController();

  TextEditingController s4d1a = TextEditingController();
  TextEditingController s4d2a = TextEditingController();
  TextEditingController s4d3a = TextEditingController();
  TextEditingController s4d4a = TextEditingController();
  TextEditingController s4d5a = TextEditingController();
  TextEditingController s4d6a = TextEditingController();
  TextEditingController s4d1d = TextEditingController();
  TextEditingController s4d2d = TextEditingController();
  TextEditingController s4d3d = TextEditingController();
  TextEditingController s4d4d = TextEditingController();
  TextEditingController s4d5d = TextEditingController();
  TextEditingController s4d6d = TextEditingController();
  TextEditingController s4d1t = TextEditingController();
  TextEditingController s4d2t = TextEditingController();
  TextEditingController s4d3t = TextEditingController();
  TextEditingController s4d4t = TextEditingController();
  TextEditingController s4d5t = TextEditingController();
  TextEditingController s4d6t = TextEditingController();
  TextEditingController totals4 = TextEditingController();

  TextEditingController s5d1a = TextEditingController();
  TextEditingController s5d2a = TextEditingController();
  TextEditingController s5d3a = TextEditingController();
  TextEditingController s5d4a = TextEditingController();
  TextEditingController s5d5a = TextEditingController();
  TextEditingController s5d6a = TextEditingController();
  TextEditingController s5d1d = TextEditingController();
  TextEditingController s5d2d = TextEditingController();
  TextEditingController s5d3d = TextEditingController();
  TextEditingController s5d4d = TextEditingController();
  TextEditingController s5d5d = TextEditingController();
  TextEditingController s5d6d = TextEditingController();
  TextEditingController s5d1t = TextEditingController();
  TextEditingController s5d2t = TextEditingController();
  TextEditingController s5d3t = TextEditingController();
  TextEditingController s5d4t = TextEditingController();
  TextEditingController s5d5t = TextEditingController();
  TextEditingController s5d6t = TextEditingController();
  TextEditingController totals5 = TextEditingController();

  TextEditingController notifs1 = TextEditingController();
  TextEditingController notifs2 = TextEditingController();
  TextEditingController notifs3 = TextEditingController();
  TextEditingController notifs4 = TextEditingController();
  TextEditingController notifs5 = TextEditingController();

  TextEditingController totalHeureDuMois = TextEditingController();
  TextEditingController totalModuleDuMois = TextEditingController();

  TextEditingController contratHoraire = TextEditingController();
  TextEditingController tempsPause = TextEditingController();


  int _selectedHoraire = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [

                  buildHeader(),
                  buildContrat(),
                  const SizedBox(height: 30),
                  buildMois(),
                  const SizedBox(height: 30),
                  buildModule(),
                  const SizedBox(height: 30),
                  buildPause(),
                  const SizedBox(height: 30),
                  // button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () async {Navigator.of(context).pop();},
                          style: ElevatedButton.styleFrom(primary: grey),
                          child: Text("Retour",style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
                      ),

                      validateForm()
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContrat () {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Selectionner votre Contrat horaire",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 1,decoration: TextDecoration.none))),
            ]),
        const SizedBox(height: 20),
        Wrap(
            children: List.generate(2, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedHoraire = index;
                    if (kDebugMode) {
                      print(index);
                    }
                  });
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                      side: _selectedHoraire==index ? BorderSide(color: Colors.blue.withOpacity(0.8), width: 2) : const BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    margin: const EdgeInsets.all(10),
                    color: white,
                    shadowColor: Colors.black,
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: index == 0
                          ? Text("35 heures",
                          style: GoogleFonts.oswald(textStyle: const TextStyle(color: black,fontSize: 20,letterSpacing: 1,decoration: TextDecoration.none)))
                          : Text("40 heures",
                          style: GoogleFonts.oswald(textStyle: const TextStyle(color: black,fontSize: 20,letterSpacing: 1,decoration: TextDecoration.none))),
                    )),
              );
            })
        ),
      ],
    );
  }

  Widget buildMois() {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ajouter le nom du mois",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 1,decoration: TextDecoration.none))),

            ]),
        const SizedBox(height: 10),
        TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0)),
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
            ),
            style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 13,decoration: TextDecoration.none)),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            cursorColor: primary,
            controller: moisController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Valeur obligatoire';
              } else {
                return null;
              }
            }
        ),

      ],
    );
  }

  Widget buildModule() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ajouter votre dernière modulation",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 1,decoration: TextDecoration.none))),
              const SizedBox(height: 8),
              Text("Modulation de fin de mois précédent",
                  style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.red.withOpacity(0.8),fontSize: 12,height: 1,decoration: TextDecoration.none))),
            ]),
        const SizedBox(height: 10),
        TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0)),
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
            ),
            style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 13,decoration: TextDecoration.none)),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            cursorColor: primary,
            controller: moduleController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Valeur obligatoire';
              } else {
                return null;
              }
            }
        ),
      ],
    );
  }

  Widget buildPause() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Ajouter votre temps de pause par jour",
                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 1,decoration: TextDecoration.none))),
              const SizedBox(height: 8),
              Text("ex : 1.25 pour 1 heure et 15mn par jour",
                  style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.red.withOpacity(0.8),fontSize: 12,height: 1,decoration: TextDecoration.none))),
            ]),
        const SizedBox(height: 10),
        TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0)),
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
            ),
            style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 13,decoration: TextDecoration.none)),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            cursorColor: primary,
            controller: tempsPause,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Valeur obligatoire';
              } else {
                return null;
              }
            }
        ),
      ],
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        const SizedBox(height: 50),
        Center(child: Text("Ajouter un mois",
            style: GoogleFonts.oswald(textStyle: const TextStyle(color: primary,fontSize: 35,letterSpacing: 0.5,height: 1,decoration: TextDecoration.none))),
        ),
        Center(child: Text("Paramètres minimum requis",
            style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 1,decoration: TextDecoration.none))),
        ),

        const SizedBox(height: 50),
      ],
    );
  }

  validateForm() {
    return ElevatedButton(
        onPressed: () async {
          final isValid = formKey.currentState!.validate();
          if (!isValid) return;
          Horaire horaire = Horaire(
            mois: moisController.text,
            module: moduleController.text,
            date: DateTime.now(),
            s1d1a: s1d1a.text,
            s1d1d: s1d1d.text,
            s1d1t: s1d1t.text,
            s1d2a: s1d2a.text,
            s1d2d: s1d2d.text,
            s1d2t: s1d2t.text,
            s1d3a: s1d3a.text,
            s1d3d: s1d3d.text,
            s1d3t: s1d3t.text,
            s1d4a: s1d4a.text,
            s1d4d: s1d4d.text,
            s1d4t: s1d4t.text,
            s1d5a: s1d5a.text,
            s1d5d: s1d5d.text,
            s1d5t: s1d5t.text,
            s1d6a: s1d6a.text,
            s1d6d: s1d6d.text,
            s1d6t: s1d6t.text,
            totals1: totals1.text,
            s2d1a: s2d1a.text,
            s2d1d: s2d1d.text,
            s2d1t: s2d1t.text,
            s2d2a: s2d2a.text,
            s2d2d: s2d2d.text,
            s2d2t: s2d2t.text,
            s2d3a: s2d3a.text,
            s2d3d: s2d3d.text,
            s2d3t: s2d3t.text,
            s2d4a: s2d4a.text,
            s2d4d: s2d4d.text,
            s2d4t: s2d4t.text,
            s2d5a: s2d5a.text,
            s2d5d: s2d5d.text,
            s2d5t: s2d5t.text,
            s2d6a: s2d6a.text,
            s2d6d: s2d6d.text,
            s2d6t: s2d6t.text,
            totals2: totals2.text,
            s3d1a: s3d1a.text,
            s3d1d: s3d1d.text,
            s3d1t: s3d1t.text,
            s3d2a: s3d2a.text,
            s3d2d: s3d2d.text,
            s3d2t: s3d2t.text,
            s3d3a: s3d3a.text,
            s3d3d: s3d3d.text,
            s3d3t: s3d3t.text,
            s3d4a: s3d4a.text,
            s3d4d: s3d4d.text,
            s3d4t: s3d4t.text,
            s3d5a: s3d5a.text,
            s3d5d: s3d5d.text,
            s3d5t: s3d5t.text,
            s3d6a: s3d6a.text,
            s3d6d: s3d6d.text,
            s3d6t: s3d6t.text,
            totals3: totals3.text,
            s4d1a: s4d1a.text,
            s4d1d: s4d1d.text,
            s4d1t: s4d1t.text,
            s4d2a: s4d2a.text,
            s4d2d: s4d2d.text,
            s4d2t: s4d2t.text,
            s4d3a: s4d3a.text,
            s4d3d: s4d3d.text,
            s4d3t: s4d3t.text,
            s4d4a: s4d4a.text,
            s4d4d: s4d4d.text,
            s4d4t: s4d4t.text,
            s4d5a: s4d5a.text,
            s4d5d: s4d5d.text,
            s4d5t: s4d5t.text,
            s4d6a: s4d6a.text,
            s4d6d: s4d6d.text,
            s4d6t: s4d6t.text,
            totals4: totals4.text,
            s5d1a: s5d1a.text,
            s5d1d: s5d1d.text,
            s5d1t: s5d1t.text,
            s5d2a: s5d2a.text,
            s5d2d: s5d2d.text,
            s5d2t: s5d2t.text,
            s5d3a: s5d3a.text,
            s5d3d: s5d3d.text,
            s5d3t: s5d3t.text,
            s5d4a: s5d4a.text,
            s5d4d: s5d4d.text,
            s5d4t: s5d4t.text,
            s5d5a: s5d5a.text,
            s5d5d: s5d5d.text,
            s5d5t: s5d5t.text,
            s5d6a: s5d6a.text,
            s5d6d: s5d6d.text,
            s5d6t: s5d6t.text,
            totals5: totals5.text,

            notifs1: notifs1.text,
            notifs2: notifs2.text,
            notifs3: notifs3.text,
            notifs4: notifs4.text,
            notifs5: notifs5.text,

            totalHeureDuMois: totalHeureDuMois.text,
            totalModuleDuMois: totalModuleDuMois.text,

            contratHoraire: _selectedHoraire.toString(),
            tempsPause: tempsPause.text

          );
          createHoraire(horaire);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
        },
        style: ElevatedButton.styleFrom(primary: primary),
        child: Text("Envoyer",style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
    );
  }
}

