import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(child: Text("Nos réalisations", style: TextStyle(color: Colors.lightGreen, fontSize: 22),)),
            ),
            Divider(),
            Text("Piscines"),
            Image.asset("assets/images/piscine 1.jpeg",
             width: MediaQuery.of(context).size.width,
             height: 200,
             fit: BoxFit.fill,
           ),
            Divider(),
            Image.asset("assets/images/piscine 2.jpeg",
             width: MediaQuery.of(context).size.width,
             height: 200,
             fit: BoxFit.fill,
           ),

            //ScrollView horizontal pour afficher les jarfdin
            Text("Jardins"),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child:  Row(
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0
                                    ),
                                    child: Image.asset(
                                          "assets/images/jardin 1.jpeg",
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                    ),
Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0
                                    ),
                                    child: Image.asset(
                                          "assets/images/jardin 2.jpeg",
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                    ),
Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0
                                    ),
                                    child: Image.asset(
                                          "assets/images/jardin 3.jpeg",
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                    ),
Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0
                                    ),
                                    child: Image.asset(
                                          "assets/images/jardin 4.jpeg",
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                    ),
Card(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 0
                                    ),
                                    child: Image.asset(
                                          "assets/images/jardin 5.jpeg",
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                    ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      
      
          ]
      ),
    );
  }
}