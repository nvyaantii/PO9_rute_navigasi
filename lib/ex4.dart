import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Home(),
        '/produk': (BuildContext context) => const Produk(),
        '/profil': (BuildContext context) => const Profil(),
      },
    );
  }
}

// Drawer widget
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1480055732926-6c325a55ddd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: null,
        ),
        const UserAccountsDrawerHeader(
          accountName: Text('Nama User', style: TextStyle(fontSize: 20.0)),
          accountEmail: Text('user@example.com'), // Wajib diisi
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, size: 40),
          ),
          decoration: BoxDecoration(color: Colors.black87),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Produk'),
          leading: const Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/produk');
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Profil'),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/profil');
          },
        ),
      ],
    ),
  );
}

// Home screen
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Halaman Home')),
    );
  }
}

// Produk screen
class Produk extends StatelessWidget {
  const Produk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(title: const Text('Produk')),
      body: const Center(child: Text('Halaman produk')),
    );
  }
}

// Profil screen
class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(title: const Text('Profil')),
      body: const Center(child: Text('Halaman profil')),
    );
  }
}
