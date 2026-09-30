import 'package:flutter/material.dart';
import 'package:student_management/model/student_model.dart';
import 'package:student_management/student_list.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
   await Hive.openBox<Student>("student");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: StudentList(),
    );
    
  }
}
