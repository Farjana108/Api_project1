import 'package:flutter/material.dart';

var watherInfo = [
  {
    "city": "New York",
    "temperature": 20,
    "condition": "Clear",
    "humidity": 60,
    "windSpeed": 5.5
  },
  {
    "city": "Los Angeles",
    "temperature": 25,
    "condition": "Sunny",
    "humidity": 50,
    "windSpeed": 6.8
  },
  {
    "city": "London",
    "temperature": 15,
    "condition": "Partly Cloudy",
    "humidity": 70,
    "windSpeed": 4.2
  },
  {
    "city": "Tokyo",
    "temperature": 28,
    "condition": "Rainy",
    "humidity": 75,
    "windSpeed": 8.0
  },
  {
    "city": "Sydney",
    "temperature": 22,
    "condition": "Cloudy",
    "humidity": 55,
    "windSpeed": 7.3
  },
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Info app '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: watherInfo.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  title: Text('City: ${watherInfo[index]['city']}'),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'temperature: ${watherInfo[index]['temperature']}⁰C'),
                      Text('condition: ${watherInfo[index]['condition']}'),
                      Text('humidity: ${watherInfo[index]['humidity']}%'),
                      Text('windSpeed: ${watherInfo[index]['windSpeed']} m/s'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
