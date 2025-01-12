import 'package:flutter/cupertino.dart';
import 'package:mall/constant/app_dimens.dart';
import 'package:mall/ui/page/guide/guide_page.dart';
import 'package:mall/ui/page/home/home_page.dart';
import 'package:mall/view_model/user_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(AppDimens.MAX_WIDTH, AppDimens.MAX_HEIGHT));
    return Provider.of<UserViewModel>(context).isFirst
        ? GuidePage()
        : HomePage();
  }
}
