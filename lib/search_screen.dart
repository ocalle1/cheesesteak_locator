// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

//! Connect to Google API for searches

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Kiwi',
    'Lemon',
  ];
  List<String> searchResults = [];

// updates setState when user inputs a query in the search field; data = the List of fruits
  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sass'),
      ),
      body: Column(
        children: [
          SearchBar(onQueryChanged: onQueryChanged),
          Expanded(
              child: ListView.builder(
            itemCount: searchResults.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(searchResults[index]),
              );
            },
          )),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key, required void Function(String query) onQueryChanged});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: TextField(
        onChanged: onQueryChanged,
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          prefix: Icon(Icons.search),
        ),
      ),
    );
  }
}
