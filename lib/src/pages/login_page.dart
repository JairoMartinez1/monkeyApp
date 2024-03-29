import 'dart:ui';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: <Widget>[
        Image.asset('lib/src/img/Sustracción2.png',
            fit: BoxFit.fill, width: _width),
        Image.asset(
          'lib/src/img/Shapedsubtraction.png',
          fit: BoxFit.fill,
          width: _width,
          height: 350.0,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.asset('lib/src/img/background_gradient.png', width: 180.0),
              Image.asset('lib/src/img/Monkey_face.png'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Meal',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              const SizedBox(width: 3.0),
              Text('Monkey',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary))
            ],
          ),
          const SizedBox(height: 5.0),
          const Text('FOOD DELIVERY')
        ]),
        Positioned(
            bottom: 190.0,
            left: 164.0,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          onPrimary: Colors.white),
                      onPressed: () => {},
                      child: const Text('Entrar',
                          style: TextStyle(fontSize: 20.0))),
                ),
              ],
            ))
      ]),
    );
  }
}