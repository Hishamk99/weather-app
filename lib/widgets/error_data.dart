import 'package:flutter/material.dart';
import 'package:weather_application/screens/search_page.dart';

class ErrorData extends StatelessWidget {
  const ErrorData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchPage.id);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: const Center(
          child: Text(
            'There was an error',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
