// import 'package:flutter/material.dart';

// // ignore: use_key_in_widget_constructors
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//    return ListView.builder(
//     itemCount: 10,
//     itemBuilder: (BuildContext context, int count){
//       return Container(
//         padding: const EdgeInsets.symmetric(),
//         child: const Placeholder(
//           fallbackHeight: 100,
//           color: Colors.blue,
//         ),
//       );
//     },
//   }
  
// }

import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        hintColor: Color(0xFF25D366),
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Camera')),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Action du bouton
          },
          child: Icon(Icons.chat),
          backgroundColor: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Exemple avec 10 discussions
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'), // Image par défaut
          ),
          title: Text('Contact $index'),
          subtitle: Text('Dernier message ici...'),
          trailing: Text('12:30 PM'),
        );
      },
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'), // Image par défaut
          ),
          title: Text('My Status'),
          subtitle: Text('Tap to add status update'),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Recent updates', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          title: Text('Contact 1'),
          subtitle: Text('Today, 12:00 PM'),
        ),
      ],
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          title: Text('Contact 1'),
          subtitle: Text('Today, 11:00 AM'),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          title: Text('Contact 2'),
          subtitle: Text('Yesterday, 5:30 PM'),
          trailing: Icon(Icons.videocam, color: Colors.green),
        ),
      ],
    );
  }
}
