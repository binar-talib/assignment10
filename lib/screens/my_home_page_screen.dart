import 'package:flutter/material.dart';
import 'package:hello_kurdistan_center/necessary_files/dummy_data.dart';
import 'package:hello_kurdistan_center/widgets/details_screen.dart';
import 'package:hello_kurdistan_center/widgets/image_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text('Assignment'),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: someDummyData.length,
          itemBuilder: (context, index) {
            return ImageButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      title: someDummyData[index]['title'],
                      image: someDummyData[index]['image'],
                      description: someDummyData[index]['description'],
                    ),
                  ),
                );
              },
              title: someDummyData[index]['title'],
              image: someDummyData[index]['image'],
            );
          },
        ),
      ),
    );
  }
}
