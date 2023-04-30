import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 24,),
            CustomTextField(hint: 'Content',maxLines: 5,),
            SizedBox(height: 16,),
            CustomButton(),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: KPrimaryColor,borderRadius: BorderRadius.circular(16)),
      
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}