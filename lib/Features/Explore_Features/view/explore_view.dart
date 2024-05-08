import 'package:flutter/material.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button press
              // You can navigate to a dedicated search screen here
              print("Search button pressed! Search query: $searchText");
            },
          ),
          TextField(
            decoration:const InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none, // removes default border
              contentPadding: EdgeInsets.zero, // removes padding
            ),
            onChanged: (value) {
              setState(() {
                searchText = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
