import 'package:flutter/material.dart';

class SearchController extends StatelessWidget {

  final Function updateInputReceived;

  final TextEditingController _searchController = TextEditingController();

  SearchController(this.updateInputReceived) {
    _searchController.addListener(searchListener);
  }

  searchListener() {
    updateInputReceived(_searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: new TextField(
        controller: _searchController,
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
            hintText: 'Type keywords to search',
            labelText: 'Search',
            suffixText: "USD",
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.green,
            ),
            prefixText: ' ',
            suffixStyle: const TextStyle(color: Colors.green)),
      ),
    );
  }
}
