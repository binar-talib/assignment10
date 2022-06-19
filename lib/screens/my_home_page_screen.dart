import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String image = 'https://wallpapercave.com/wp/wp2668082.jpg';

  String image1 = 'https://wallpapercave.com/wp/wp2668082.jpg';
  String image2 =
      "https://www.basnews.com/media/k2/items/cache/481ddd73145553a85d833b367570fa92_L.jpg?1576743128";
  String image3 =
      "https://upload.wikimedia.org/wikipedia/commons/5/5d/Flag_of_Kurdistan_2.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Slider',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
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
                  child: Image.network(image),
                ),
              ),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageButton(
                    image: image1,
                    onTap: () {
                      setState(() {
                        image = image1;
                      });
                    },
                  ),
                  ImageButton(
                    image: image2,
                    onTap: () {
                      setState(() {
                        image = image2;
                      });
                    },
                  ),
                  ImageButton(
                    image: image3,
                    onTap: () {
                      setState(() {
                        image = image3;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.network(
        image,
        height: MediaQuery.of(context).size.width / 4,
        width: MediaQuery.of(context).size.width / 4,
        fit: BoxFit.cover,
      ),
    );
  }
}
