import 'package:hive/hive.dart';
part 'note_model.g.dart'; //لازم الاسم يكون زي اسم الفايل بالظبط
//generate file typeadapter to deal with obj
//flutter packages pub run build_runner build

@HiveType(typeId: 0) //each obj must have uniqe id 0:255
class NoteModel extends HiveObject {
  @HiveField(0) //uniqe for each class
   String title;
  @HiveField(1)
    String subTitle;
  @HiveField(2)
   final String date;
  @HiveField(3)
    int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
