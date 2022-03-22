import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchBar"),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: SearchBarDelegate()),
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = "")
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, ""));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100.0,
        height: 100.0,
        child: Card(
          color: Colors.redAccent,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                query = suggestionList[index];
                showResults(context);
              },
              title: RichText(
                  text: TextSpan(
                      text: suggestionList[index].substring(0, query.length),
                      style: const TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: const TextStyle(color: Colors.grey))
                  ])),
            ));
  }
}
