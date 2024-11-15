import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedra Papel Tesoura',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(),
          text('Vamos jogar Pedra papel tesoura?'),
          text('Levando em consideração:'),
          text('O número 1 = Pedra'),
          text('O número 2 = Tesoura'),
          text('O número 3 = Papel')
        ],
      ),
    );
  }

  Text text(String text) {
    return Text(text);
  }
}
