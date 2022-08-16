import 'package:flutter/material.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute
        .of(context)!
        .settings
        .arguments as List;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${data[0]}"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data[1].length,
              itemBuilder: (context, index) =>
                  Card(
                    elevation: 10,
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          InkWell(
                          onTap: (){
                            List pass = [];
                            pass.add(data[1][index]);
                            Navigator.pushNamed(context, '/final',arguments: pass);
                          },
                          child: Text(data[1][index], style: Theme
                              .of(context)
                              .textTheme
                              .titleSmall,)),
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
    ),);
  }
}
