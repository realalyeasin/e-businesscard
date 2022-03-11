import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/wall.png'))),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width - 40,
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front: Material(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16),
                        shadowColor: Colors.black.withOpacity(.5),
                        child: NameDetailsContainer(),
                      ),
                      back: Material(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16),
                        shadowColor: Colors.black.withOpacity(.5),
                        child: SocialContainer(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget NameDetailsContainer() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(.9),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Container(
                    height: 100,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/me.jpg'))),
                  ),
                  title: const Text(
                    'Al Yeasin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    'Flutter Developer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                DetailContainer1(),
                const ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 30,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Dhaka',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'realalyeasin@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget SocialContainer() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(.8),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Container(
                    height: 100,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/me.jpg'))),
                  ),
                  title: const Text(
                    'Social Connection',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
                child: Column(
              children: const [
                ListTile(
                  leading: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text('www.facebook.com'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.youtube_searched_for,
                    color: Colors.red,
                    size: 40,
                  ),
                  title: Text('www.youtube.com'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.wb_twilight,
                    color: Colors.amberAccent,
                    size: 40,
                  ),
                  title: Text('www.prothomalo.com'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.signal_cellular_connected_no_internet_0_bar,
                    color: Colors.green,
                    size: 40,
                  ),
                  title: Text('www.internet.com'),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget DetailContainer1() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes (also known as modes of discourse), along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes. Wikipedia',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                    backgroundColor: Colors.black.withOpacity(.6)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
