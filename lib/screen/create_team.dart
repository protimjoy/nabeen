import 'package:flutter/material.dart';
import 'package:nabeen/model/user_model.dart';
import 'package:nabeen/theme.dart';

class TeamPage extends StatelessWidget {
  TeamPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();
  final userData = UserModel.users();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text("CREATE YOUR TEAM",
                    style: nabeenFontStyle(20, black, fw500)),
                SizedBox(
                  width: 385,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: black),
                          border: OutlineInputBorder())),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: userData.length,
                    itemBuilder: (context, index) {
                      var user = userData[index];
                      return Card(
                        child: ListTile(
                          title: Text("${user.name}"),
                          subtitle:Text("${user.status}"),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
