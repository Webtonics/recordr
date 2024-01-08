import 'package:flutter/material.dart';
import 'package:recordr/widget/showdialog.dart';

class RecordDetailView extends StatefulWidget {
  const RecordDetailView({super.key, required this.title, required this.content, required this.date});
  final String title;
  final String content;
  final String date;
  @override
  State<RecordDetailView> createState() => _RecordDetailViewState();
}

class _RecordDetailViewState extends State<RecordDetailView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Center(
            child: Text(
              widget.content
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        const ShowMyDialog();
      }, child: const Icon(Icons.add_circle),),
    );
  }
}