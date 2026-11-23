import 'package:flutter/material.dart';

import 'model/tabs.dart';
// import 'package:pop_up_et_nav/model/tabs.dart';
// import 'package:pop_up_et_nav/widgets/first_page.dart';
// import 'package:pop_up_et_nav/widgets/body.dart';

//Ce fichier contient un Sacffold donce sera une page ==> va dans le dossier pages
class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<HomePage> {

  int index = 0;

  final List<Tabs> _tabs =  [
    Tabs(name: "Accueil", widget: const Center(child: Text("Page Accueil "),)),
    Tabs(name: "Réalisations", widget: const Center(child: Text("Page Réalisation"),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pop Up et Nav"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Icon(Icons.pool),
                      const SizedBox(height: 30,),
                      Text("Mon jardin idéal")
                    ],
                  )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _tabs.map((t){
                  return TextButton(onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                      index = _tabs.indexOf(t);
                    });
                  }, child: Text(t.name));
                }).toList(),
              )
            ],
          ),
        ),
        body: _tabs[index].widget
    );
  }
}