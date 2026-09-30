import 'package:flutter/material.dart';
import 'package:student_management/model/student_model.dart';
import 'package:student_management/service/student_service.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  
  final service = StudentService();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final domainController = TextEditingController();
  final addressController = TextEditingController();

  void saveStudent() {
    final student = Student(
      name: nameController.text.trim(),
      age: int.parse(ageController.text.trim()),
      domain: domainController.text.trim(),
      address: addressController.text.trim(),
    );
    service.addStudent(student);
    nameController.clear();
    ageController.clear();
    domainController.clear();
    addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Add Student",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(hintText: "Age"),
            ),
            TextField(
              controller: domainController,
              decoration: InputDecoration(hintText: "Domain"),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(hintText: "Address"),
            ),
            ElevatedButton(
              onPressed: () {
                saveStudent();
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
