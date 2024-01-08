import 'package:flutter/material.dart';
import 'package:recordr/widget/showdialog.dart';

class RecordDetailView extends StatefulWidget {
  const RecordDetailView({super.key});

  @override
  State<RecordDetailView> createState() => _RecordDetailViewState();
}

class _RecordDetailViewState extends State<RecordDetailView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        const ShowMyDialog();
      }, child: const Icon(Icons.add_circle),),
    );
  }
}