import 'package:flutter/material.dart';

class SearchEx extends StatefulWidget {
  const SearchEx({Key? key}) : super(key: key);

  @override
  _SearchExState createState() => _SearchExState();
}

class _SearchExState extends State<SearchEx> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomDelegate())
                      .then((value) {
                    print("Search Result : $value");
                  });
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}

class CustomDelegate extends SearchDelegate {
  var searchItems = ["Red", "green", "pink", "blue", "yellow", "white"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    var userSuggest = [];

    for (var item in searchItems) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        userSuggest.add(item);
      }
    }

    return ListView.builder(
        itemCount: userSuggest.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userSuggest[index]),
            onTap: () {
              close(context, userSuggest[index]);
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var userSuggest = [];

    for (var item in searchItems) {
      // userSuggest.add(item);
      if (item.toLowerCase().contains(query.toLowerCase())) {
        userSuggest.add(item);
      }
    }
    return ListView.builder(
        itemCount: userSuggest.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userSuggest[index]),
            subtitle: Text("suggested"),
            onTap: () {
              close(context, userSuggest[index]);
            },
          );
        });
  }
}
