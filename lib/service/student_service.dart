import 'package:student_management/model/student_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StudentService {
  final Box<Student> studentBox = Hive.box<Student>("student");
Future<void>addStudent(Student student)async{
await studentBox.add(student);
}
List<Student>getStudent(){
  return studentBox.values.toList();
}
Future<void>updateStudent(int key,Student student)async{
await studentBox.put(key, student);
}
Future<void>deleteStudent(int key)async{
  await studentBox.delete(key);
}
}

