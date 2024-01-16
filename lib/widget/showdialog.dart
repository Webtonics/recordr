// // import 'package:flutter/material.dart';

// // import '../utils/spacer.dart';



// //   class ShowMyDialog extends StatefulWidget {
// //   const ShowMyDialog({super.key});

// //   @override
// //   State<ShowMyDialog> createState() => _ShowMyDialogState();
// // }

// // class _ShowMyDialogState extends State<ShowMyDialog> {
// //   TextEditingController _titleController = TextEditingController();
// //    TextEditingController _contentController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
       
// //     _titleController = TextEditingController();
// //     _contentController = TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //      return s    
// //   }
  
// // }

// // }
// import 'package:flutter/material.dart';

// import '../utils/spacer.dart';

// class ShowMyDialog extends StatefulWidget {
//   const ShowMyDialog({super.key});

//   @override
//   State<ShowMyDialog> createState() => _ShowMyDialogState();
// }

// class _ShowMyDialogState extends State<ShowMyDialog> {

//   TextEditingController _titleController = TextEditingController();
//   TextEditingController _contentController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
       
//     _titleController = TextEditingController();
//     _contentController = TextEditingController();
//   }

//   Future<void>showMyDialogF(BuildContext context){
//      return showDialog(context: context, builder: (context){
//       return AlertDialog(
//             title: const Text(" Add record"),
//             content: Container(
//               height: 500,
//               width: 500,
//               child: Column(
//                 children: [
                  
//                   TextFormField(
//                     controller: _titleController,
//                     decoration:  InputDecoration(
//                       label: Text("title"),                 
//                       border: const OutlineInputBorder(),
//                     ),
//                   ),
//                   myspacer,
//                   TextFormField(
//                     controller: _contentController,
//                     decoration:  InputDecoration(
//                       label: Text("content", ),  
//                       border: const OutlineInputBorder(),
//                     ),
//                     maxLines: 15,
//                   ),
//                   myspacer,
//                 ],
//               ),
//             ),
//             actions: [
//               ElevatedButton(onPressed: (){
//                 // records!.add({
//                 //   'title': _titleController.text,
//                 //   'content': _contentController.text,
//                 //   'time': DateTime.now().toIso8601String(),
//                 //   'isDone':false,

//                 // });
//                 // Navigator.pop(context);
//                 // _titleController.clear();
//                 // _contentController.clear();
//               }, child: const Text("Save"))
//             ],
//           );
//     });
    
//   }
//   @override
//   Widget build(BuildContext context) {
//     return showMyDialogF();
//   }
// }
