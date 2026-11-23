import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
        children : [
         Image.asset("assets/images/piscine 4.jpeg",
           // width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           fit: BoxFit.cover,
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 10
                ),
                    child: Text("Accueil", style: TextStyle(color: Colors.lightGreen, fontSize: 30),),
                )
              ),

              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                child: Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20
                ),
                    child: Text("Une expertise unique en Provence au service de tous les jardins du monde. \n Rapprochons nous de la nature.", textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                )
              ),
            ],
          ),

        ]
    );
  }
}