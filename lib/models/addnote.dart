import 'package:hive/hive.dart';
part 'addnote.g.dart';

@HiveType(typeId: 0)
class addnote extends HiveObject {
  addnote({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
  @HiveField(0)
 String title;
  @HiveField(1)
 String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
 int color;
}
