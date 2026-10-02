import 'package:flutter/material.dart';
import 'package:student_management/service/student_service.dart';

class EditStudent extends StatefulWidget {
  const new({super.key});

  @override
  State<EditStudent> createState() => _EditStudentState();
}

class _EditStudentState extends State<EditStudent> {
  final service = StudentService();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final domainController = TextEditingController();
  final addressController = TextEditingController();
  @override
  // void initState() {
  //   super.initState();
  //   if(widget.student != null){
  //     nameController.text = widget.student!.name;
  //     ageController.text = widget.student!.age.toString();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        title: Text("EDIT  STUDENT'S",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            
          ),
          TextField(
            
          ),
           TextField(
            
          ),
           TextField(
            
          ), 
          ElevatedButton(onPressed: (){
             Navigator.pop(context);
          }, child: Text("Save"))
        ],
      ),
      
    ),
    
    );
    
  }
}