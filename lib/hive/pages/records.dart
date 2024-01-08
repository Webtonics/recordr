import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recordr/hive/pages/record_details.dart';

import '../../widget/card.dart';

class ReportView extends StatefulWidget {
  const ReportView({super.key, this.db});
  final Box? db;

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 226),
      
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
               
                itemCount: widget.db!.keys.toList().length,
                itemBuilder: (context, index){
                  // Map records = widget.db!.toMap();
                   final recordkey = widget.db!.keys.toList();
                  Map records = widget.db!.get(recordkey[index]);
                return  Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RecordDetailView(title: records["title"], content: records["content"], date: records['date'].toString(),),),);
                    },
                    child: RecordCard(
                      title: '${records['title']}',
                      subtitle: " ${records['content']}",
                      
                      deleteF: () {
                        print("working");
                         widget.db!.delete(recordkey[index]);
                      },
                      ),
                  ),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }


}
