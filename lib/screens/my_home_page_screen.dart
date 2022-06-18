import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 24,
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child:
                    Image.network('https://wallpapercave.com/wp/wp2668082.jpg'),
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'Hello Kurdistan',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                    color: Colors.black.withOpacity(0.15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
