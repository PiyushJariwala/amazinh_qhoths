import 'package:amazinh_qhoths/model/database.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List l1 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async{
    DBHalper db = DBHalper();
    l1 = await db.retrivData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("titel"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: l1.length,
              itemBuilder: (context, index) => Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            List pass = [];
                            pass.add("${l1[index]["fav"]}");
                            Navigator.pushNamed(context, '/final',
                                arguments: pass);
                          },
                          child: Text(
                            "${l1[index]["fav"]}",
                            style: Theme.of(context).textTheme.titleSmall,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.done_all, size: 20),
                          Icon(Icons.star, size: 20),
                          Icon(Icons.copy, size: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
