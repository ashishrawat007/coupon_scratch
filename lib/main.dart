

import './common/file_exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => CouponsProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: CouponScreen(),
      ),
    );
  }
}
