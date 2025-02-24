import 'package:flutter/material.dart';
import 'notification_service.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    NotificationService.initialize(); // Initialize on screen load
  }

  void _pickTimeAndScheduleNotification() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      DateTime now = DateTime.now();
      DateTime scheduledTime = DateTime(
        now.year,
        now.month,
        now.day,
        pickedTime.hour,
        pickedTime.minute,
      );

      NotificationService.scheduleNotificationAtTime(scheduledTime);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Notification scheduled at ${pickedTime.format(context)}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Settings & Notifications", style: TextStyle(fontSize: 20,)),
            const SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                elevation: 5,
                shadowColor: Colors.white,
              ),
              onPressed: () {
                NotificationService.showNotification();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Notification Sent!")),
                );
              },
              child: Text("Show Notification", style: TextStyle(color: Colors.black),),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                elevation: 5,
                shadowColor: Colors.white,
              ),
              onPressed: _pickTimeAndScheduleNotification,
              child: const Text("Schedule Notification",style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}