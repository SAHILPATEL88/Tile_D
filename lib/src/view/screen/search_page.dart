import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../model/search_result.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<SearchResult> _searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Page"),
        actions: [
          Expanded(
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                // Handle text changes
              },
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              _performSearch();
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hiring.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display search results
              _searchResults.isNotEmpty
                  ? Column(
                children: _searchResults
                    .map((result) => ListTile(
                  title: Text(result.title),
                  subtitle: Text(result.description),
                  leading: Image.network(result.imageUrl),
                ))
                    .toList(),
              )
                  : Text("No search results"),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _performSearch() async {
    String query = _searchController.text.trim();

    if (query.isNotEmpty) {
      try {
        List<SearchResult> results = await Api.fetchSearchResults(query);
        setState(() {
          _searchResults = results;
        });
      } catch (e) {
        // Handle error
        print("Error: $e");
      }
    }
  }
}

class Api {
  static Future<List<SearchResult>> fetchSearchResults(String query) async {
    final response = await http.get(Uri.parse('YOUR_API_ENDPOINT?q=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => SearchResult(
        title: json['title'],
        description: json['description'],
        imageUrl: json['imageUrl'],
      )).toList();
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
