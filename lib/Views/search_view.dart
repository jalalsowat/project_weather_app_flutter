import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onChanged: (value) {
              // log(value);
            },
            onSubmitted: (value) {},
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              labelText: "Serach",
              hintText: "Enter city name",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 105, 99, 199)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
