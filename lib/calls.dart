import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            callCard("Raiden Shogun", Icons.call_missed, Colors.red, "July 18, 14:02", NetworkImage("https://berita.yodu.id/wp-content/uploads/2022/01/Header.webp")),
            callCard("Gojo Satoru", Icons.call_made, Colors.green, "July 02, 18:33", NetworkImage("https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg")),
            callCard("Kamisato Ayato", Icons.call_received, Colors.green, "Mei 31, 07:15", NetworkImage("https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg")),
            callCard("Kirigaya Kazuto", Icons.call_made, Colors.green, "July 18, 18:33", NetworkImage("https://static.wikia.nocookie.net/swordartonline/images/6/67/Kirito_SAO.png/revision/latest?cb=20140228021241")),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget callCard(String name, IconData iconData, Color iconColor, String Time, NetworkImage networkImage) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: networkImage,
          radius: 26,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 20,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
