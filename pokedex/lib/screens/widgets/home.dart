import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class home extends StatelessWidget {
  final recipe = Recipe(
      name: "Charmander",
      photo: "assets/2.0x/charmander.png",
      preparationTime: "45",
      numberOfFavorites: "212",
      numberofComments: "2000",
      yield: 10,
      sobre: [
        "Tem preferência por coisas quntes. Quando chove, diz-se que o vapor jorra da ponta da cauda."
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    appBar: AppBar(
     backgroundColor: orangetheme,
     title: Text(
       "Charmander"
       style: TextStyle(
        fontWeight: FontWeight.bold, 
       ),
     ),
     leading: Image.asset(
       "assets/logo.png",
     ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(recipe.photo),
          Details(recipe),
          MyTitle(
            title:"Performance",
            icon:FontAwesomeIcons.bookOpen,
          ),
          ListElements(
            title:"Altura",
            lisOfElements: recipe.ingredientsPaste,
          ),
          ListElements(
            title: "Peso",
            lisOfElements recipe.preparationModeTopping,
          ),
          ListElements(
            title:"Tipo",
            lisOfElements: recipe.ingredientsPaste,
          ),
          ListElements(
            title:"Habilidade"
            lisOfElements recipe.preparationModeTopping,
          ),
          Mytitle(
            icon: FontAwesomeIcons.utensilSpoon,
            title: "Fraquezas"
          ),
          ListElements(
            title: "Água"
            listOfElements: recipe.preparationModePaste,
          ),
          ListElements(
            titlle: "Terra"
            listOfElements: recipe.preparationModePaste,
          ),
          ListElements(
            title: "Rocha"
            listOfElements: recipe.preparationModePaste,
          ),
        ],
      ),
    ),
    );
  }

  static Recipe(
      {name,
      photo,
      required String preparationTime,
      required String numberOfFavorites,
      required String numberofComments,
      required int yield,
      required List<String> sobre}) {
    assert(sobre != null);
    assert(yield != null);
    assert(photo != null);
  }
}
