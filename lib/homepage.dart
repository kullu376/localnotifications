import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


import 'notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
    Notifi.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HomePage")),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Notifi.showBigTextNotification(
                title: "Message",
                body: " body",
                fin: flutterLocalNotificationsPlugin);
            print("1");
          },
          child: Container(
            width: 200,
            height: 100,
            color: Colors.lightGreen,
            child: const Center(
              child: Text(
                "Click",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
