import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_alt_outlined),
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Billabong', fontSize: 32, color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.live_tv,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.send,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          //Stories section
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://picsum.photos/200/300?grayscale'),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'username',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(),
          //Post section
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/id/870/200/300?grayscale&blur=2'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'username',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Tokyo',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert)
                  ],
                ),
                const SizedBox(),
                Container(
                  height: 300,
                  color: Colors.grey[300],
                  child: PageView(
                    children: [
                      Image.network('https://picsum.photos/id/237/200/300',
                          fit: BoxFit.cover),
                      Image.network('https://picsum.photos/200/300?grayscale',
                          fit: BoxFit.cover)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.comment),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.send),
                    Spacer(),
                    Icon(Icons.bookmark_border),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    'Liked by craig_love and 44,686 others',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                    'username The game in Japan was amazing and I want to share some photos'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
      ),
    );
  }
}
