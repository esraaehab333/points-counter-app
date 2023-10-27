import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late var teamA = 0;

  var teamB = 0;
  Color selected_color = Color.fromRGBO(119, 177, 141,100);
  Color wh = Colors.black;
  Color b = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Points Counter" , style: TextStyle(color: wh),),
          backgroundColor: selected_color,
          elevation: 5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 32),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    teamA.toString(),
                    style: const TextStyle(fontSize: 100),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA = teamA + 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 1 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA = teamA + 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 2 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamA = teamA + 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 3 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 32),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    teamB.toString(),
                    style: const TextStyle(fontSize: 100),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB = teamB + 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 1 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB = teamB + 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 2 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamB = teamB + 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selected_color,
                    ),
                    child: Text(
                      "Add 3 point",
                      style: TextStyle(fontSize: 18, color: wh),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  teamA = 0;
                  teamB = 0;
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selected_color,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10)
            ),
            child:  Text("Reset",style: TextStyle(fontSize: 18, color: wh),),
          )
        ],
      ),
    );
  }
}
