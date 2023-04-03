import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = 'Marvelous';
  final String title = 'Rio de Janeiro';
  final String description = 'A cidade maravilhosa';
  final String tourist = 'Acabrina Boina';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          //1
          padding: const EdgeInsets.all(16),
          //2
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          //3
          decoration: const BoxDecoration(
            //4
            image: DecorationImage(
              //5
              image: NetworkImage(
                  'https://media.staticontent.com/media/pictures/e63f71e3-03fb-4c1b-a1e6-c8b1586a7e73'),
              //6
              fit: BoxFit.cover,
            ),
            //7
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Text(
                category,
                style: GpsdoMundoTheme.darkTextTheme.bodyText1,
              ),
              Positioned(
                top: 20,
                child: Text(
                  title,
                  style: GpsdoMundoTheme.darkTextTheme.headline2,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  description,
                  style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  tourist,
                  style: GpsdoMundoTheme.darkTextTheme.bodyText1,
                ),
              ),

              /*Text(
                title,
                style: GpsdoMundoTheme.darkTextTheme.headline5,
              ),
              Text(
                description,
                style: GpsdoMundoTheme.darkTextTheme.bodyText1,
              ),
              Text(
                tourist,
                style: GpsdoMundoTheme.darkTextTheme.bodyText1,
              ),*/
            ],
          )),
    );
  }
}
