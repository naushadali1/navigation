import 'package:flutter/material.dart';
import 'package:navigation/home_screen.dart';

class ScreenThree extends StatelessWidget {
  static String id = 'screen_three';
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyHome.id);
                },
                child: const Text("Home screen")),
          ),
          Center(
            child: Text('This is screen three'),
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
                    title: Text('This is my page3 '),
                  );
                }),
          ),
        ],
      ),
    );
    ;
  }
}
