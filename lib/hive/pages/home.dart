import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recordr/hive/pages/records.dart';
import 'package:recordr/utils/spacer.dart';
// import 'package:hive/hive.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // step 3: create a box
   Box? records;

   TextEditingController _titleController = TextEditingController();
   TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //step 4: Open box, then aassign null
    Hive.openBox("Records").then((box) {
      setState(() {
        records = box;
      });
    });
    _titleController = TextEditingController();
    _contentController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Record It",
          
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold          
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ReportView()));
          }, icon: const Icon(Icons.receipt_rounded))
        ],
      ),
      body: _buildUi(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: const Text(" Add record"),
            content: Container(
              height: 500,
              width: 500,
              child: Column(
                children: [
                  
                  TextFormField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      label: Text("TITLE"),                 
                      border: OutlineInputBorder(),
                    ),
                  ),
                  myspacer,
                  TextFormField(
                    controller: _contentController,
                    decoration: const InputDecoration(
                      label: Text("CONTENT", ),  
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 15,
                  ),
                  myspacer,
                ],
              ),
            ),
            actions: [
              ElevatedButton(onPressed: (){
                records!.add({
                  'title': _titleController.text,
                  'content': _contentController.text,
                  'time': DateTime.now().toIso8601String(),
                  'isDone':false,

                });
                Navigator.pop(context);
                _titleController.clear();
                _contentController.clear();
              }, child: const Text("Save"))
            ],
          );
        });
      }, child: const Icon(Icons.add_circle),),
    );

    
  }

  Widget _buildUi (){
    if (records == null) {
      return const CircularProgressIndicator();
    }
    return ValueListenableBuilder(
      valueListenable: records!.listenable(),
      builder: (context, box, Widget){
         return  ReportView( db: records,);
      });

    }
}


