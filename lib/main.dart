import 'package:flutter/material.dart';
import 'constants.dart';
import 'dummy.dart';
import 'models/plants.dart';
import 'presentation_layer/screens/details/details_screen.dart';
import 'presentation_layer/screens/home/home_screen.dart';

void main() {
  runApp(MyAPP());
}

//List<Plants> _availableMeals = DUMMY_PLANTS;

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'plant app',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        DetailsScreen.routeName: (ctx) => DetailsScreen(),
      },
      //home: HomeScreen(),
    );
  }
}
