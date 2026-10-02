import 'package:flutter/material.dart';
import 'package:student_management/add_student.dart';
import 'package:student_management/edit_student.dart';
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
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () async{
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddStudent()),
              );
              setState(() {
                student = service.getStudent();
              });
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
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditStudent()));
                    }, 
                    icon: Icon(Icons.edit)),

                    IconButton(onPressed: ()async{
                        await service.deleteStudent(currentStudent.key);
                    
                        setState(() {
                          student = service.getStudent();
                        });
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
                
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDetail(
                    student: currentStudent,
                    
                  )
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
