import 'package:flutter/material.dart';
import 'package:student_management/add_student.dart';

class StudentList extends StatefulWidget {
  const new({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
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
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddStudent()));
      }, child: Text("Add")),
    );
  }
}