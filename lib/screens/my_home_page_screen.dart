import 'package:flutter/material.dart';
import 'package:hello_kurdistan_center/necessary_files/data_model.dart';
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
            List<DataModel> _data = someDummyData.map(
              (element) {
                return DataModel.fromMap(element);
              },
            ).toList();
            return ImageButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      title: _data[index].title,
                      image: _data[index].image,
                      description: _data[index].description,
                    ),
                  ),
                );
              },
              title: _data[index].title,
              image: _data[index].image,
            );
          },
        ),
      ),
    );
  }
}
