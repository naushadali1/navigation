import 'package:flutter/material.dart';
import 'package:navigation/screen_2.dart';
import 'package:navigation/screen_3.dart';

class MyHome extends StatelessWidget {
  static String id = 'my_home';
  MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Naushad Ali'),
            ),
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent-mct1-1.xx.fbcdn.net/v/t39.30808-6/356112377_960304918357260_5712363054646979346_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFW5FtBOo1VLd0UZzTOTBr_tehJJwU-oIe16EknBT6ghzoBKjXLZfPsG3oyVhhqj8GvfBIahzkRk6EFRtVOEiOx&_nc_ohc=nQFBvlztcBQAX_A-79_&_nc_ht=scontent-mct1-1.xx&oh=00_AfAaconZuZqkhONtQ5NZebVoa_f6hENbxg4U-G1X5mQgwg&oe=658908B7'),
                ),
                accountName: Text('Naushad Ali'),
                accountEmail: Text('ali@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, MyHome.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.two_k),
              title: const Text('Screen 2'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.three_k),
              title: const Text('Screen Three'),
              onTap: () {
                Navigator.pushNamed(context, ScreenThree.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
                child: const Text("Screen 2")),
          ),
          const Center(
            child: Text('This is Home screen'),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-mct1-1.xx.fbcdn.net/v/t39.30808-6/356112377_960304918357260_5712363054646979346_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFW5FtBOo1VLd0UZzTOTBr_tehJJwU-oIe16EknBT6ghzoBKjXLZfPsG3oyVhhqj8GvfBIahzkRk6EFRtVOEiOx&_nc_ohc=nQFBvlztcBQAX_A-79_&_nc_ht=scontent-mct1-1.xx&oh=00_AfAaconZuZqkhONtQ5NZebVoa_f6hENbxg4U-G1X5mQgwg&oe=658908B7'),
                    ),
                    title: Text('This is my Home Page '),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
