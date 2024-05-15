import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifi {
  static Future initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        const AndroidInitializationSettings("mipmap/ic_launcher");
    //  var iosInitialize = new IOSInitializationSettings();
    var initializationsSettings =
        InitializationSettings(android: androidInitialize,
        // iOS: iosInitialize
        );
    await flutterLocalNotificationsPlugin.initialize(initializationsSettings);
  }

  static Future showBigTextNotification(
      {var id = 0,
      required String title,
      required String body,
      var payload,
      required FlutterLocalNotificationsPlugin fin}) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        const AndroidNotificationDetails(
      "channel5",
      "channelname",
      playSound: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    var not=NotificationDetails(android: androidPlatformChannelSpecifics
    // // iOS: IOSNotificaionDetails()
    );
    await fin.show(0, title, body,not);
  }
}
