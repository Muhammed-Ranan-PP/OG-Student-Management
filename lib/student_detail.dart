import 'package:flutter/material.dart';
import 'package:student_management/model/student_model.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({super.key,required this.student});
  final Student student;

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
        title: Text("STUDENT'S DETAIL",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),"Name : ${widget.student.name}"),
              Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),"AGE : ${widget.student.age}"),
              Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),"DOMAIN : ${widget.student.domain}"),
              Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),"ADDRESS : ${widget.student.address}")
            ],
          ),
        ),
      )
    );
  }
  
}