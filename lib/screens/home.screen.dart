import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   Widget floatingIcon(IconData iconData, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(iconData),
        Text(
          value,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 30,
                  width: 90,
                  child: Center(
                    child: Text(
                      'Following',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  right: 0,
                  top: 0,
                  child: CircleAvatar(backgroundColor: Colors.red, radius: 5),
                )
              ],
            ),
            const SizedBox(width: 20),
            Stack(
              children: [
                SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'For You',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: 56,
                    child: Center(
                      child: SizedBox(
                        width: 30,
                        child: Divider(
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        actions: const [Icon(Icons.search), SizedBox(width: 10)],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children: const [
              SizedBox(
                height: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add, size: 12),
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          floatingIcon(Icons.favorite, '8488'),
          const SizedBox(height: 15),
          floatingIcon(Icons.comment, '159'),
          const SizedBox(height: 15),
          floatingIcon(Icons.bookmark, '84'),
          const SizedBox(height: 15),
          floatingIcon(Icons.reply, '25'),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '@user567593339229',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Original sound - helen_habeshawit05',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/bottom.jpeg'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'friends'),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(105, 201, 208, 1),
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Color.fromRGBO(238, 29, 82, 1),
                    ],
                  )),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.inbox), label: 'inbox'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
