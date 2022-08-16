import 'dart:math';
import 'package:amazinh_qhoths/model/database.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {

  List images_full = [
    "https://images.unsplash.com/photo-1502899576159-f224dc2349fa?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGFyayUyMGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=800"
    "https://images.unsplash.com/photo-1611702700114-ac96de0952e2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZGFyayUyMGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1504608524841-42fe6f032b4b?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGRhcmslMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1517999144091-3d9dca6d1e43?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRhcmslMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1649605184337-c4dc52c6e32e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1652841611360-2deac1ff384c?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1652267990738-e78a61d72832?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800",
  ];

   List<TextStyle> gfonts = [
    GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.macondo(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.smooch(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.oswald(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.zenLoop(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.bebasNeue(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.lobster(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.dancingScript(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.permanentMarker(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
    GoogleFonts.amaticaSc(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
  ];

  int i = 0;
  int f = 0;

  bool selecte = false;

  Random random = Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    i=random.nextInt(6);
    f=random.nextInt(9);
  }

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("${images_full[i]}"), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,bottom: 150.0),
                  child: Text(
                    "${data[0]}",
                    style: gfonts[f],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            i = random.nextInt(6);
                          });
                        },
                        icon: Icon(
                          Icons.photo,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            f = random.nextInt(10);
                          });
                        },
                        icon: Icon(
                          Icons.font_download_sharp,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "${data[0]}"));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Copy")),
                          );
                        },
                        icon: Icon(
                          Icons.copy,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share("${data[0]}");
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () async{
                          DBHalper db = DBHalper();

                          setState(() {
                            selecte ? selecte=false:selecte=true;
                            if(selecte)
                              {
                                db.insertData("${data[0]}");
                              }
                            else{
                              db.deletedData("${data[0]}");
                            }
                          });
                        },
                        icon: Icon(
                          Icons.star,
                          color:selecte? Colors.amber:Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
