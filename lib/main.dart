// Kervi Kent C. Asombrado
import 'package:flutter/material.dart';
import 'package:proj1/models/card.dart';
import 'package:proj1/screens/about.dart';
import 'package:proj1/screens/index.dart';
import 'package:proj1/screens/signup.dart';
import 'package:proj1/widgets/card-widget.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 600;

    return MaterialApp(
      initialRoute: '/', // This sets the main screen as the first screen

      routes: {
        'lib/': (context) => HomePage(),
        '/signup': (context) => SignupScreen(),
        '/about': (context) => AboutScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryTextTheme:
            TextTheme(titleLarge: TextStyle(color: Colors.white24)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IndexScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardModel> myProducts = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    var response = await http.get(Uri.parse(
        "https://www.themealdb.com/api/json/v1/1/filter.php?a=Indian"));
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      List<CardModel> fromJson = [];
      for (var i = 0; i < jsonResponse['meals'].length; i++) {
        CardModel oneProduct = CardModel(
          id: i.toString(),
          name: jsonResponse['meals'][i]['strMeal'],
          picture: jsonResponse['meals'][i]['strMealThumb'],
        );
        fromJson.add(oneProduct);
      }
      setState(() {
        myProducts = fromJson;
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 61, 248, 1),
        title: const Text("Asombrado", style: TextStyle(color: Colors.white)),
      ),
      drawer: SizedBox(
        child: SidebarX(
            extendedTheme: const SidebarXTheme(
              width: 200,
            ),
            controller: SidebarXController(selectedIndex: 0, extended: true),
            items: [
              SidebarXItem(icon: Icons.home, label: 'Home'),
              SidebarXItem(icon: Icons.newspaper_sharp, label: 'News'),
              SidebarXItem(
                icon: Icons.question_mark_outlined,
                label: 'About',
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
              SidebarXItem(icon: Icons.person_rounded, label: 'My Account'),
              SidebarXItem(
                icon: Icons.logout_outlined,
                label: 'Logout',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ]),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          children: myProducts.map((oneProduct) {
            return CardWidget(
                card: oneProduct); // Correctly instantiate CardWidget
          }).toList(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
