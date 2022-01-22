import 'package:meta/meta.dart';

class GridItemModel {
  String name;
  String path;
  bool hasNotification;
  Function function;
  GridItemModel({
    @required this.name,
    @required this.path,
    @required this.hasNotification,
    @required this.function
  });
}
