import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Map<String, String>> posts = [
    {
      'image': 'assets/images/vol1.jpeg',
    },
    {
      'image': 'assets/images/vol2.jpeg',
    },
    {
      'image': 'assets/images/vol3.jpeg',
    },
    {
      'image': 'assets/images/vol4.jpeg',
    },
    {
      'image': 'assets/images/vol5.jpeg',
    },
    {
      'image': 'assets/images/vol6.jpg',
    },
  ];
    List<Map<String, String>> text = [
    {
      'text': 'Semifinal Bola Voli Bupati Cup di Jombang Diwarnai Kericuhan Suporter',
    },
    {
      'text': '5 Manfaat Bola Voli, Yang Jarang Diketahui Masyarakat Luas',
    },
    {
      'text': 'Upaya Produsen Alat Olahraga Jepang Memajukan Voli Indonesia',
    },
    {
      'text': 'Jeff Jiang Jie Latih Timnas Voli Putra Usai Bawa LavAni Juara Proliga',
    },
    {
      'text': 'Jaring Atlet Berprestasi, Polres Jombang Gelar Turnamen Voli',
    },
    {
      'text': 'Tim Voli Duduk Putri Indonesia Raih Emas ASEAN Para Games 2022',
    },
  ];

  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int _selectedNavbar) {
    setState(() {
      _selectedNavbar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Leading");
          },
        ),
        title: Text('Sport-Addicts'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          final post = posts[index];
          final isi = text[index];
          return Padding(
            padding: EdgeInsets.all(30),
            child: Card(
              elevation: 20,
              
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    post['image']!,
                  ),
                  Text(
                    isi['text']!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: posts.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.assignment),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                Navigator.pushNamed(context, '/inbox');
              },
            ),
            label: 'Kategori',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPage createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  int _selectedNavbar = 1;
  void _changeSelectedNavBar(int _selectedNavbar) {
    setState(() {
      _selectedNavbar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport-Addicts'),
      ),
      body: Center(child:
      ListView(
        children: [
        Container(
          margin: EdgeInsets.all(25),
          child: Image.asset('assets/images/vol1.jpeg'),
        ),
        Container(
          width: 350,
          margin: EdgeInsets.only(left:25,right: 25,bottom: 25),
          child: Text('Semifinal Bola Voli Bupati Cup di Jombang Diwarnai Kericuhan Suporter \n\nJombang - Pertandingan semifinal bola voli Bupati Cup antar SMA sederajat di Jombang diwarnai kericuhan antarsuporter. Kericuhan dipicu saling ejek antarsuporter.\n\nPertandingan semifinal bola voli Bupati Cup mempertemukan tim SMK Dwija Bhakti (DB) melawan SMKN 3 Jombang di GOR Merdeka Jombang, Jalan Gus Dur sekitar pukul 12.00 WIB. Pertandingan dimenangkan tim SMKN 3 Jombang dengan skor 3-2.\n\nKericuhan terjadi setelah wasit menipu peluit tanda berakhirnya pertandingan. Sebagian pendukung kedua tim terlihat memasuki lapangan. Sebagian suporter melemparkan botol air mineral dari tribun ke arah para pemain di lapangan.\n\nPanitia pertandingan bersama polisi pun turun tangan menenangkan suporter kedua tim. Sehingga baku hantam antar pendukung tidak sempat terjadi. Petugas lantas meminta para suporter keluar dari arena secara tertib."\n\nKericuhan berawal saling ejek antarsuporter dari SMK DB dan SMKN 3. Mungkin karena tim yang mereka dukung kalah, mereka kecewa dengan keadaan yang ada. Sebetulnya pertandingan di lapangan aman dan lancar," kata panitia pertandingan Agus Budi Hartono kepada wartawan di lokasi, Rabu (31/8/2022).\n\nAgus menjelaskan jumlah penonton laga seminfinal Bupati Cup ini mencapai sekitar 3.500 orang. Setelah saling ejek antarsuporter, kericuhan berlanjut ke aksi pelemparan botol air mineral. Ia memastikan tidak sampai terjadi baku hantam antarpendukung."\n\nAlhamdulillah Polres Jombang sudah mengamankan kondisi di lapangan sehingga kondusif. Fasilitas rusak hanya matras lantai lapangan voli, tapi bisa dipasang kembali," terang pria yang juga menjabat Wakil Ketua PBVSI Kabupaten Jombang ini.\n\nKapolres Jombang AKBP Moh Nurhidayat menuturkan pihaknya menerjunkan 50 personel untuk meredam kericuhan para penonton. Ia turun langsung ke lokasi pertandingan untuk melakukan peninjauan. Menurutnya, kericuhan siang tadi tidak sampai menimbulkan korban."\n\nTerjadi gesekan antar suporter. Alhamdulillah bisa kami redam. Saya tinjau langsung sudah kondusif. Panitia sudah kami minta menjaga kondusivitas," jelasnya.\n\nUntuk mencegah insiden serupa terulang, tambah Nurhidayat pertandingan semifinal berikutnya dipastikan tanpa penonton. Para pendukung baru diizinkan masuk ke tribun penonton pada pertandingan final malam nanti sekitar pukul 19.00 WIB. Pihaknya akan mengerahkan kekuatan penuh untuk menjaga keamanan pertandingan final."\n\nUntuk pertandingan final malam nanti kami batasi jumlah penontonnya. Nanti kami kerahkan kekuatan penuh," tandasnya.'),
        )
      ])
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.assignment),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                Navigator.pushNamed(context, '/inbox');
              },
            ),
            label: 'Inbox',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

class Inbox extends StatefulWidget {
  @override
  _Inbox createState() => _Inbox();
}

class _Inbox extends State<Inbox> {

  List<Map<String, String>> gambar = [
    {
      'image': 'assets/images/vol1.jpeg',
    },
    {
      'image': 'assets/images/vol2.jpeg',
    },
    {
      'image': 'assets/images/vol3.jpeg',
    },
    {
      'image': 'assets/images/vol4.jpeg',
    },
    {
      'image': 'assets/images/vol5.jpeg',
    },
    {
      'image': 'assets/images/vol6.jpg',
    },
  ];
    List<Map<String, String>> txt = [
    {
      'text': 'Semifinal Bola Voli Bupati Cup di Jombang Diwarnai Kericuhan Suporter',
    },
    {
      'text': '5 Manfaat Bola Voli, Yang Jarang Diketahui Masyarakat Luas',
    },
    {
      'text': 'Upaya Produsen Alat Olahraga Jepang Memajukan Voli Indonesia',
    },
    {
      'text': 'Jeff Jiang Jie Latih Timnas Voli Putra Usai Bawa LavAni Juara Proliga',
    },
    {
      'text': 'Jaring Atlet Berprestasi, Polres Jombang Gelar Turnamen Voli',
    },
    {
      'text': 'Tim Voli Duduk Putri Indonesia Raih Emas ASEAN Para Games 2022',
    },
  ];

  int _selectedNavbar = 2;
  void _changeSelectedNavBar(int _selectedNavbar) {
    setState(() {
      _selectedNavbar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport-Addicts'),
      ),
      body: Center(child:
      Container(
          margin: EdgeInsets.only(top: 25, bottom:25 , left: 25, right: 25),

          child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        final post = gambar[index];
                        final tx = txt[index];
                        return Column(
                          children: [
                          Container(
                          margin: EdgeInsets.only(bottom: 10),
                          color: Color.fromARGB(0, 0, 0, 0),
                          child: Image.asset(
                            post['image']!,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Text(
                    tx['text']!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                          ]
                        );
                      },
                      itemCount: gambar.length,
                    ),
              
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.assignment),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                Navigator.pushNamed(context, '/inbox');
              },
            ),
            label: 'Kategori',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
