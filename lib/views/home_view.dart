import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                ' Clound',
                style: TextStyle(color: Color.fromARGB(255, 174, 137, 25)),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          height: 85,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(child: Text('hello')),
        ));
  }
}
