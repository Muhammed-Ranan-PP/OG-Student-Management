import 'package:flutter/material.dart';
import 'package:student_management/model/student_model.dart';
import 'package:student_management/service/student_service.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key,this.student});
final Student? student;
  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  
  final service = StudentService();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final domainController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.student != null){
      nameController.text = widget.student!.name;
      ageController.text = widget.student!.age.toString();
      domainController.text = widget.student!.domain;
      addressController.text = widget.student!.address;
    }
  }

  Future<void> saveStudent()async {
    final student = Student(
      name: nameController.text.trim(),
      age: int.parse(ageController.text.trim()),
      domain: domainController.text.trim(),
      address: addressController.text.trim(),
    );
    if(widget.student == null){
    await service.addStudent(student);
    }else{
      service.updateStudent(widget.student!.key, student);
    }
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
              onPressed: () async{
                await saveStudent();
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
