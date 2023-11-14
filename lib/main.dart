import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const hed_bot = 0xFFB71C1C;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("flutterApp1"),
        ),
        backgroundColor: const Color(hed_bot),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.star,
              color: Colors.white,
            ),
          )
        ],
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,

                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Colors.red,
                    ),
                    //color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 120,
                    // color: Colors.red,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            offset: Offset(3, 5),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset('assets/images/dim.png'),
                      // height: 200,
                      // width: 120,
                      // color: const Color.fromARGB(255, 34, 29, 29),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              //color: Colors.black12,
              child: const Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      labelText: "Veillez entrer le nom",
                      labelStyle: TextStyle(color: Colors.purple),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      labelText: "Entrer votre email ",
                      labelStyle: TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      labelText: "Entrer votre mot de  passe",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.face,
                color: Colors.amber,
              ),
              accountName: Text('Tartaglia'),
              accountEmail: Text("tartagliarinasciamento@gmail.com"),
              otherAccountsPictures: [
                Icon(Icons.bookmark_border),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/vr.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color(hed_bot),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
