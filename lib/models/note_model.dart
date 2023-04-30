import 'package:hive/hive.dart';
part 'note_model.g.dart'; //لازم الاسم يمون زي اسم الفايل بالظبط
//generate file type adapter
//flutter packages pub run build_runner build

@HiveType(typeId: 0) //each obj must have uniqe id 0:255
class NoteModel extends HiveObject {
  @HiveField(0) //uniqe per class
  final String title;
  @HiveField(1)
  late final String subTitle;
  @HiveField(2)
  late final String date;
  @HiveField(3)
  late final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
