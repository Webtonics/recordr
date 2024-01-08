import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recordr/hive/pages/home.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //step 0: get path
  final documentdir = await getApplicationDocumentsDirectory();
  // final downloadDir = await getDownloadsDirectory();

  // step 1: init hive to the path in step 0
  Hive.init(documentdir.path);

  print(documentdir);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "RECORDR",
      
      home: InitApp(),
    );
  }
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homepage();
  }
}