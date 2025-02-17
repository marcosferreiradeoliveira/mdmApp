import 'dart:async';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:app_museu_das_mulheres/pages/intro.dart';
import 'package:app_museu_das_mulheres/utils/next_screen.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000))
        .then((_) => nextScreenReplace(context, IntroPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: RiveAnimation.asset(
            'assets/rive/success.riv', // Certifique-se de que o caminho do arquivo está correto
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
