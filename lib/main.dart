import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:middle_aged_dating/app/features/register/views/signup_screen.dart';
import 'app/core/routes/route_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(462, 982),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteHandler.handleRoute,
        home: const SignUpScreen(),
        builder: (context, widget) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!),
      ),
    );
  }
}

extension ItemAtIndexOrNull<T> on Iterable<T> {
  itemAtIndexOrNull(int index) {
    try {
      final data = this.elementAt(index);
      return data;
    } catch (e) {
      return null;
    }
  }
}
