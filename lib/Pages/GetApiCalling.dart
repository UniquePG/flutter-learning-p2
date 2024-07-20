import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiCalling extends StatefulWidget {
  const GetApiCalling({super.key});

  @override
  State<GetApiCalling> createState() => _GetApiCallingState();
}

class _GetApiCallingState extends State<GetApiCalling> {
  List<dynamic> users = [];

  void fetchUser() async {
    print("calling api");
    var api = "https://randomuser.me/api/?results=20";
    var uri = Uri.parse(api);
    final response = await http.get(uri);
    final json = response.body;

    final data = jsonDecode(json);

    users = data['results'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var user = users[index];
          var email = user["email"];
          var first = user["name"]["first"];
          var last = user["name"]["last"];
          var img = user["picture"]["thumbnail"];

          print("imgg $img");
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(img),
            ),
            // leading: Text("${index + 1}"),
            title: Text("$email"),
            subtitle: Row(
              children: [Text("$first $last")],
            ),
          );
        },
        itemCount: users.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchUser();
        },
        child: Text("CallApi"),
      ),
    );
  }
}
