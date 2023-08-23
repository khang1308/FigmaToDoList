import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:quizz_app/screen/intro.dart';
import 'package:quizz_app/screen/loginscreen.dart';
import 'package:quizz_app/screen/more_list.dart';
import 'package:quizz_app/screen/splash.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'gen/localization/l10n.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool? repeat = prefs.getBool('report1');

  // ignore: avoid_print
  print(repeat);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = const Locale("vi");
  List<Locale> supp = [const Locale("vi"), const Locale("en")];
  // This widget is the root of your application.
  void toggleLanguage() {
    setState(() {
      if (locale.languageCode == "vi") {
        locale = const Locale("en");
      } else {
        locale = const Locale("vi");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeCreen(),
      initialRoute: '/',
      routes: {
        Splash.routeName: (context) => const Splash(),
        Introduce.routeName: (context) => const Introduce(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        Morelist.routeName: (context) => const Morelist(),
        // AddList.routeName: (context) => const AddList(),
      },
      debugShowCheckedModeBanner: false,
      supportedLocales: Str.delegate.supportedLocales,
      // ignore: unnecessary_const
      localizationsDelegates: const [
        Str.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: Results(),

      // home: ProductDetail(),
      // home: YourCourses(),
      // home: ChooseLessonsCourse(),
      // home: CourseLesson(),
      // home: CourseTests(),
      // home: TestQuestion(),
      // home: Results1(),
      // home: NotSaved(),
      // home: NotFound(),
      // home: NoPayment(),
      // home: Saved(),
      // home: Payment()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.press});
  final VoidCallback press;
  static const String routeName = "/HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(Str.of(context).asd)),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.press.call();
                    });
                  },
                  child: const Text('Change'))),
        ],
      ),
    );
  }
}
//launchr icon
