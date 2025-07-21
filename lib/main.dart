import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bloc_app_template/common/app.dart';
import 'package:bloc_app_template/utilities/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await Stetho.initialize();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await injectServices();

  runApp(const App());
}
