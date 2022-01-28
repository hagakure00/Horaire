import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:horaire/Animation/FadeAnimation.dart';
import 'package:horaire/Models/HoraireModel.dart';
import 'package:horaire/Pages/AddPage.dart';
import 'package:horaire/Services/FirebaseService.dart';
import 'package:horaire/Theme/colors.dart';
import 'package:horaire/main.dart';
import 'package:ionicons/ionicons.dart';
import 'EditPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final user = FirebaseAuth.instance.currentUser!;
  bool isSearch = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5,
          title: Text("Mes Horaires",
              style: GoogleFonts.oswald(textStyle: const TextStyle(color: black,fontSize: 18,letterSpacing: 0.5,height: 1,decoration: TextDecoration.none))),
        actions: [
            IconButton(onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context) => (const MainPage())));
              },
                icon: const Icon(Icons.logout,color: grey,size: 20))
          ],
        automaticallyImplyLeading: false,
      ),
        body:  SingleChildScrollView(
          child:  Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: StreamBuilder<List<Horaire>>(
                stream: readHoraire(),
                builder: (context, snapshot) {
                  if (snapshot.hasError){return const Text('error');}
                  else if (snapshot.hasData) {
                    final horaire = snapshot.data!;
                    return  ListView.builder(
                        itemCount: horaire.length,
                        itemBuilder: (BuildContext context, int index) {
                          Horaire data = snapshot.data![index];
                          return GestureDetector(
                            onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => (EditPage(horaire: data))));},
                            onLongPress: () async {
                              openDialog(context,data);
                              },
                            child: buildCard(context, snapshot, index),
                          );
                        }
                    );
                  } else { return const SpinKitRipple(color: primary, size: 100.0);}
                },
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddPage())); },
        child: const Icon(Ionicons.add),
      ),
    );
  }


 Widget buildCard(context,snapshot, int index) {
   Horaire data = snapshot.data![index];
    return FadeAnimation(
      delay: 300,
      isHorizontal: true,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.blue.withOpacity(0.8), width: 2) : const BorderSide(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.all(10),
          color: white,
          shadowColor: Colors.black,
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: primary, borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),),
                    width: 5,
                  ),

                  const SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      // titre
                      Text(data.mois,
                          style: GoogleFonts.oswald(textStyle: const TextStyle(color: black,fontSize: 19,letterSpacing: 0.5,height: 1,decoration: TextDecoration.none))),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Ionicons.timer,color: primary,size: 20),
                            const SizedBox(width: 10),
                            Text("Heures total effectué :",
                                style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 2,decoration: TextDecoration.none))),
                            const SizedBox(width: 10),
                            Text(data.totalHeureDuMois,
                                style: GoogleFonts.poppins(textStyle: const TextStyle(color: primary,fontSize: 14,height: 1.8,decoration: TextDecoration.none))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Ionicons.stats_chart_outline,color: primary,size: 18),
                            const SizedBox(width: 10),

                            Text("Modulation de fin de mois :",
                                style: GoogleFonts.poppins(textStyle: const TextStyle(color: black,fontSize: 14,height: 2,decoration: TextDecoration.none))),

                            const SizedBox(width: 10),
                            SizedBox(
                              width: 60,
                              child: (data.totalModuleDuMois.contains('-'))
                                  ? Text(data.totalModuleDuMois,
                                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: red,fontSize: 14,height: 1.8,decoration: TextDecoration.none, overflow: TextOverflow.ellipsis)))
                                  : Text(data.totalModuleDuMois,
                                  style: GoogleFonts.poppins(textStyle: const TextStyle(color: primary,fontSize: 14,height: 1.8,decoration: TextDecoration.none, overflow: TextOverflow.ellipsis))),


                            ),
                          ],),
                      ),],),
                ],
              ),

              (data.notifs1.isNotEmpty || data.notifs2.isNotEmpty || data.notifs3.isNotEmpty || data.notifs4.isNotEmpty || data.notifs5.isNotEmpty)
                  ? const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.message,color: grey,size: 25),
              )
                  : Container(),

            ],
          ),
        ),
      ),
    );
 }

 Future openDialog(BuildContext context,data) {
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        backgroundColor: white,
        contentPadding: const EdgeInsets.all(20),
        title: Text("Supprimer ce mois ?", style: GoogleFonts.oswald( textStyle: const TextStyle(color: primary,fontSize: 20,decoration: TextDecoration.none))),
        content: Text("Il sera supprimé définitivement, Il sera donc impossible de récupérer les données.", style: GoogleFonts.poppins( textStyle: const TextStyle(color: black,fontSize: 13,decoration: TextDecoration.none))),
        elevation: 5,
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width /2,
                child: ElevatedButton(
                    onPressed: () {
                      deleteHoraire(data);
                      Navigator.of(context).pop();
                      },
                    style: ElevatedButton.styleFrom(primary: red),
                    child: Text("Supprimer", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width /2,
                child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pop();},
                    style: ElevatedButton.styleFrom(primary: grey),
                    child: Text("Annuler", style: GoogleFonts.poppins( textStyle: const TextStyle(color: white,fontSize: 13,decoration: TextDecoration.none)),)
                ),
              ),
            ],
          )
        ],
      );
    });
  }




 }


