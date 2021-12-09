import 'package:flutter/material.dart';
//import 'package:mobile_int/create_todo.dart';
import 'package:mobile_int/home.dart';


// here is my main function
void main() {
  runApp(const Mymap());
}

//first class (stateless)

class Mymap extends StatelessWidget {

//a constructor
  const Mymap({Key? key}) : super(key: key);

//this portion is to out play the first function
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
title:  'My First App',
home: HomePage(),);
  }
}
