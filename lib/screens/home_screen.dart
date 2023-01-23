import 'package:flutter/material.dart';
import 'package:local_notification_exercice/services/notification_service.dart';

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
        title: const Text("Local Notification"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NotificationService().displayNotification();
              },
              child: const Text("Display Notification"),
            ),

            ElevatedButton(
              onPressed: () {
                NotificationService().scheduleNotification();
              },
              child: const Text("Scheduled Notification"),
            ),

              ElevatedButton(
              onPressed: () {
                NotificationService().periodicallyShowNotification();
              },
              child: const Text("Periodically Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
