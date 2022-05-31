import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

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
            //Memanggil objek chatCard
            chatCard("Gibah Goroh Cantik", "Anda: Lol xD", "06:17", Icons.done, Colors.grey, NetworkImage('https://i.ibb.co/vkvHp3P/Whats-App-Image-2022-05-31-at-12-56-52.jpg')),
            chatCard("Gojo Satoru", "Your gift has been received", "03:19", Icons.done_all, Colors.blue, NetworkImage('https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg')),
            chatCard("Gorou", "I met ur mom lol xD", "01:39", Icons.done_all, Colors.grey, NetworkImage('https://staticg.sportskeeda.com/editor/2021/12/757fa-16385797744711-1920.jpg')),
            chatCard("Kamisato Ayato", "Let's meet up at usual place", "23:49", Icons.done_all, Colors.grey, NetworkImage('https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg')),
            chatCard("Kaedehara Kazuha", "Hello...", "22:19", Icons.done, Colors.grey, NetworkImage('https://pbs.twimg.com/profile_images/1441938154080985088/q1ejAf4n_400x400.jpg')),
            chatCard("Kamisato Ayaka", "Hiya ", "19:51", Icons.done_all, Colors.grey, NetworkImage('https://foto.kontan.co.id/eQpBGeMMmMkhHSwU5oO1RAn-Gjw=/smart/2021/07/15/2100661850p.jpg')),
            chatCard("Raiden Shogun", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://berita.yodu.id/wp-content/uploads/2022/01/Header.webp')),
            chatCard("Klee", "Boom Boom Bakudan!!", "18:12", Icons.done, Colors.grey, NetworkImage('https://statics.indozone.news/content/2021/12/06/n0sZWL0/tampil-sakit-melawan-musuh-inilah-daftar-3-artifacts-yang-harus-kamu-miliki16_700.jpg')),
            chatCard("Xiao", "PLEASE MARRY ME XIAO-SAMA", "18:19", Icons.done_all, Colors.blue, NetworkImage('https://gamebrott.com/wp-content/uploads/2022/04/featured.jpg')),
            chatCard("Sangonomiya Kokomi", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://gamebrott.com/wp-content/uploads/2021/09/5-Hal-yang-Perlu-Kamu-Ketahui-Tentang-Sangonomiya-Kokomi-dari-Genshin-Impact-Sebelum-Rilis-4-1024x576.jpg')),
            chatCard("Gibah Goroh Cantik", "Anda: Lol xD", "06:17", Icons.done, Colors.grey, NetworkImage('https://i.ibb.co/vkvHp3P/Whats-App-Image-2022-05-31-at-12-56-52.jpg')),
            chatCard("Gojo Satoru", "Your gift has been received", "03:19", Icons.done_all, Colors.blue, NetworkImage('https://www.greenscene.co.id/wp-content/uploads/2021/09/Jujutsu-Kaisen-4.jpg')),
            chatCard("Gorou", "I met ur mom lol xD", "01:39", Icons.done_all, Colors.grey, NetworkImage('https://staticg.sportskeeda.com/editor/2021/12/757fa-16385797744711-1920.jpg')),
            chatCard("Kamisato Ayato", "Let's meet up at usual place", "23:49", Icons.done_all, Colors.grey, NetworkImage('https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg')),
            chatCard("Kaedehara Kazuha", "Hello...", "22:19", Icons.done, Colors.grey, NetworkImage('https://pbs.twimg.com/profile_images/1441938154080985088/q1ejAf4n_400x400.jpg')),
            chatCard("Kamisato Ayaka", "Hiya ", "19:51", Icons.done_all, Colors.grey, NetworkImage('https://foto.kontan.co.id/eQpBGeMMmMkhHSwU5oO1RAn-Gjw=/smart/2021/07/15/2100661850p.jpg')),
            chatCard("Raiden Shogun", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://berita.yodu.id/wp-content/uploads/2022/01/Header.webp')),
            chatCard("Klee", "Boom Boom Bakudan!!", "18:12", Icons.done, Colors.grey, NetworkImage('https://statics.indozone.news/content/2021/12/06/n0sZWL0/tampil-sakit-melawan-musuh-inilah-daftar-3-artifacts-yang-harus-kamu-miliki16_700.jpg')),
            chatCard("Xiao", "PLEASE MARRY ME XIAO-SAMA", "18:19", Icons.done_all, Colors.blue, NetworkImage('https://gamebrott.com/wp-content/uploads/2022/04/featured.jpg')),
            chatCard("Sangonomiya Kokomi", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://gamebrott.com/wp-content/uploads/2021/09/5-Hal-yang-Perlu-Kamu-Ketahui-Tentang-Sangonomiya-Kokomi-dari-Genshin-Impact-Sebelum-Rilis-4-1024x576.jpg')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }

  //Membuat chatCard
  Widget chatCard(String name, String desk, String time, IconData iconD, Color iconC, NetworkImage ntimg) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: ntimg,
          radius: 30,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(children: [
          Icon(
            iconD,
            size: 16,
            color: iconC,
          ),
          SizedBox(width: 5),
          Text(
            desk,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ]),
        trailing: Text(time),
      ),
    );
  }
}
