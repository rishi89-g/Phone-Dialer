import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "dialer",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["rishiraj giri", "seeru bc", " shyam hamal"];
  var phoneNumber = [
    "9861978152",
    "98617896",
    "98617896",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("phone dialer"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(contactList[index]),
          subtitle: Text(phoneNumber[index]),
          leading: Icon(Icons.supervised_user_circle),
          trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              launch("tel:// ${phoneNumber[index]}");
            },
          ),
        );
      }),
    );
  }
}
