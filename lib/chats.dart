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
            chatCard("+62 838-7365-0774", "I met ur mom lol xD", "01:39", Icons.done_all, Colors.grey, NetworkImage('https://staticg.sportskeeda.com/editor/2021/12/757fa-16385797744711-1920.jpg')),
            chatCard("Kamisato Ayato", "Let's meet up at usual place", "23:49", Icons.done_all, Colors.grey, NetworkImage('https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2022/03/Ayato-Best-Build.jpg')),
            chatCard("Kaedehara Kazuha", "Hello...", "22:19", Icons.done, Colors.grey, NetworkImage('https://pbs.twimg.com/profile_images/1441938154080985088/q1ejAf4n_400x400.jpg')),
            chatCard("Kamisato Ayaka", "Hiya ", "19:51", Icons.done_all, Colors.grey, NetworkImage('https://foto.kontan.co.id/eQpBGeMMmMkhHSwU5oO1RAn-Gjw=/smart/2021/07/15/2100661850p.jpg')),
            chatCard("Raiden Shogun", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://berita.yodu.id/wp-content/uploads/2022/01/Header.webp')),
            chatCard("Klee", "Boom Boom Bakudan!!", "18:12", Icons.done, Colors.grey, NetworkImage('https://statics.indozone.news/content/2021/12/06/n0sZWL0/tampil-sakit-melawan-musuh-inilah-daftar-3-artifacts-yang-harus-kamu-miliki16_700.jpg')),
            chatCard("Xiao", "PLEASE MARRY ME XIAO-SAMA", "18:19", Icons.done_all, Colors.blue, NetworkImage('https://gamebrott.com/wp-content/uploads/2022/04/featured.jpg')),
            chatCard("Sangonomiya Kokomi", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://gamebrott.com/wp-content/uploads/2021/09/5-Hal-yang-Perlu-Kamu-Ketahui-Tentang-Sangonomiya-Kokomi-dari-Genshin-Impact-Sebelum-Rilis-4-1024x576.jpg')),
            chatCard("Jean", "What?", "06:17", Icons.done, Colors.grey, NetworkImage('https://img.esportsku.com/wp-content/uploads//2021/01/genshin-impact-jean-acting-grand-master-2-1200x675.jpg')),
            chatCard("Dilucard", "Your gift has been received", "03:19", Icons.done_all, Colors.blue, NetworkImage('https://br.atsit.in/id/wp-content/uploads/2022/02/kebocoran-genshin-impact-mengungkapkan-skin-diluc-dan-fischl-baru.jpg')),
            chatCard("Barats", "I met ur mom lol xD", "01:39", Icons.done_all, Colors.grey, NetworkImage('https://dailyspin.id/wp-content/uploads/2020/10/barats-build-tersakit.jpg')),
            chatCard("Keqing", "Let's meet up at usual place", "23:49", Icons.done_all, Colors.grey, NetworkImage('https://gamezero.id/wp-content/uploads/2021/03/genshin-impact-keqing-1.jpg')),
            chatCard("Layla", "Hello...", "22:19", Icons.done, Colors.grey, NetworkImage('https://gamefinity.id/wp-content/uploads/2021/07/layla-mobile-legends.jpg')),
            chatCard("Ningguang", "Hiya ", "19:51", Icons.done_all, Colors.grey, NetworkImage('https://www.calaxed.com/wp-content/uploads/2021/04/Genshin-Impact_2020_03-05-20_Top.jpg')),
            chatCard("Barbara", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://img.esportsku.com/wp-content/uploads//2020/10/barbara-genshin-impact-uhdpaper.com-4K-3.2973-wp.thumbnail-1200x675.jpg')),
            chatCard("Shenhe", "Hey there Beauty", "18:12", Icons.done, Colors.grey, NetworkImage('https://gamedaim.com/wp-content/uploads/2022/01/Shenhe-Genshin-Impact-Build-1.jpg')),
            chatCard("Venti", "Hey Gramp!!", "18:19", Icons.done_all, Colors.blue, NetworkImage('https://obs.line-scdn.net/0hs0VFlTYSLB9rPzhCk61TSFNpIG5YWTYWSV42ekdvIH1AEzxIAlF_fB5oITMWBmNASw5kKhs-cSpCW2tIVQ/w644')),
            chatCard("Zhongli", "Hello, I'm new on WhatsApp", "18:39", Icons.done, Colors.grey, NetworkImage('https://id.jugomobile.com/wp-content/uploads/2022/01/Dampak-Genshin-Sahabat-yang-Hilang-dari-Zhongli.jpg')),
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
