import 'package:flutter/material.dart';

void main() => runApp(KSinghApp());

class KSinghApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KSingh',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> posts = [
    "Welcome to K Singh App! 🔥",
    "Aaj ka vlog mast hai! 😍",
    "New photo upload ❤️",
    "Dosto ke saath masti 😎",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('K Singh', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 15),
          Icon(Icons.send),
          SizedBox(width: 15),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(child: Text('K'), backgroundColor: Colors.purple),
                  title: Text('ksingh_official', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Basti, UP'),
                  trailing: Icon(Icons.more_vert),
                ),
                Container(
                  height: 300,
                  color: Colors.purple[100],
                  child: Center(
                    child: Icon(Icons.image, size: 100, color: Colors.purple[300]),
                  ),
                ),
                ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.favorite_border, size: 28),
                      SizedBox(width: 10),
                      Icon(Icons.chat_bubble_outline, size: 28),
                      SizedBox(width: 10),
                      Icon(Icons.send, size: 28),
                    ],
                  ),
                  trailing: Icon(Icons.bookmark_border),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text('${(index+1)*128} likes', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(posts[index]),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
