import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {
  const new({super.key});

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        title: Text("STUDENT'S LIST",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}