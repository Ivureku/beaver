// Kervi Kent C. Asombrado
import 'package:flutter/material.dart';
import 'package:proj1/screens/index.dart';
import 'package:proj1/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryTextTheme:
            TextTheme(titleLarge: TextStyle(color: Colors.white24)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 41, 71),
        title: const Text("Asombrado", style: TextStyle(color: Colors.white)),
      ),
      drawer: Container(
        color: Color.fromARGB(255, 101, 109, 144),
        width: 400,
        height: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [SizedBox()],
        ),
      ),
      body: Container(
          width: 400,
          height: 600,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  height: 250,
                  margin: EdgeInsets.all(2),
                  color: const Color.fromARGB(255, 150, 146, 146),
                  child:
                      Stack(alignment: AlignmentDirectional.topEnd, children: [
                    Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.white,
                    )
                  ]),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Double Cheese Potato Borgir",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 12)),
                    Text("Borgir",
                        style: TextStyle(
                          color: Color.fromARGB(255, 47, 78, 234),
                        )),
                    Padding(padding: EdgeInsets.only(bottom: 29)),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("220-280 Kcal",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 51, 51))),
                        Container(
                          alignment: Alignment.center,
                          height: 27,
                          width: 39,
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.green.shade500,
                          ),
                          child: Text(
                            "Veg",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "5.99",
                      style: TextStyle(
                          color: Colors.amber.shade800,
                          fontSize: 35,
                          fontWeight: FontWeight.w600),
                    ),
                    Container()
                  ],
                )
              ],
            ),
          )),
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