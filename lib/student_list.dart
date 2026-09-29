import 'package:flutter/material.dart';
import 'package:student_management/add_student.dart';
import 'package:student_management/model/student_model.dart';
import 'package:student_management/service/student_service.dart';
import 'package:student_management/student_detail.dart';

class StudentList extends StatefulWidget {
  const new({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  final service = StudentService();
  List<Student> student = [];
  @override
  void initState() {
    super.initState();
    student = service.getStudent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "STUDENT'S LIST",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddStudent()),
              );
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder
            (itemCount: student.length,
            itemBuilder: (context,index){
              final currentStudent = student[index];
              return ListTile(
                title: Text(currentStudent.name),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDetail()
                  )
                  );
                },
              );
            })),
        ],
      ),
    );
  }
}
