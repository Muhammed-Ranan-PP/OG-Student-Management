import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const new({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final domainController = TextEditingController();
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           backgroundColor: Colors.black,
          centerTitle: true,
        title: Text("Add Student",
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
                controller: nameController,
                decoration: InputDecoration(
                hintText: "Name"
              ),),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  hintText: "Age"
                ),
              ),
               TextField(
                controller: domainController,
                decoration: InputDecoration(
                  hintText: "Domain"
                ),
              ),
               TextField(
                controller: addressController,
                decoration: InputDecoration(
                  hintText: "Address"
                ),
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