import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/ui/common/app_colors.dart';

class HomeMeetingButton extends StatelessWidget{
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  const HomeMeetingButton({Key? key,required this.onPressed,required this.icon,required this.text}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                blurRadius: 10,
                color: CupertinoColors.black.withOpacity(0.06),
                offset: Offset(0, 4)
            )]
          ),
            width: 60,
            height: 60,
            child: Icon(icon,color: Colors.white),
          ),
          SizedBox(height: 10,),
          Text(text,style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),)
              ]
          )
    );
  }
}