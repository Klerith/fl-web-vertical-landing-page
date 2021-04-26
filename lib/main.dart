import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/router/router.dart';
 
void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider() )
      ],
      child: MyApp(),
    );
  }
}



 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() { 
    super.initState();
    Flurorouter.configureRoutes();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      initialRoute: '/about',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}