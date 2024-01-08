
import 'package:flutter/material.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({super.key, required this.title, required this.subtitle, required this.deleteF});
  final String title;
  final String subtitle;
  final VoidCallback deleteF;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      decoration:  BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(21)
      ),
      child:  ListTile(
        
        title:  Text(title, style: const TextStyle( fontSize: 18, fontWeight: FontWeight.w500),),
        subtitle:  Text(subtitle, overflow: TextOverflow.ellipsis,maxLines:2),
        trailing: IconButton(onPressed:deleteF, icon: const Icon(Icons.delete))
      ),
    );
  }
}