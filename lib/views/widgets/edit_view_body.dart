import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(height: 50,),
        CustomAppBar(
          title: 'Edit Note',icon:Icons.check),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title'),
           SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxLines: 5,)
      ],),
    );
  }
}