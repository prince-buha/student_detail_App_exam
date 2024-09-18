import 'package:exam_core_flutter/src/adddeatilpage/add_detail_page.dart';
import 'package:exam_core_flutter/src/homepage/home_page.dart';
import 'package:exam_core_flutter/src/speshscreen/spesh_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static String Speshscreen = '/';
  static String Homepage = 'home_page';
  static String Detailpage = 'detail_page';
  static String Adddeatilpage = 'add_detail_page';

  static Map<String, WidgetBuilder> myRoutes = {
    Speshscreen: (context) => speshscreen(),
    Homepage: (context) => homePage(),
    Adddeatilpage: (context) => adddetailpage(),
  };
}
