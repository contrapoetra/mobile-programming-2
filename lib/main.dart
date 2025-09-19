import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alignment',
      home: Scaffold(
        appBar: AppBar(title: Text('Alignment')),
        body: const Center(
          child: WeatherPage(),
        ),
      ),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Malang', style: TextStyle(fontSize: 50)),
        Text('20\u00B0', style: TextStyle(fontSize: 100)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WeatherOfDay(day: 'Minggu', temperature: '20\u00B0C', icon: Icons.sunny),
            WeatherOfDay(day: 'Senin', temperature: '23\u00B0C', icon: Icons.cloudy_snowing),
            WeatherOfDay(day: 'Selasa', temperature: '22\u00B0C', icon: Icons.cloud),
          ],
        ),
      ],
    );
  }
}

class WeatherOfDay extends StatelessWidget {
  final String day;
  final String temperature;
  final IconData icon;

  WeatherOfDay({super.key, required this.day, required this.temperature, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(day, style: TextStyle(fontSize: 20)), Icon(icon, size: 50), Text(temperature, style: TextStyle(fontSize:20))],
    );
  }
}
