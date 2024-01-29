import 'package:flutter/material.dart';

class SliderImages extends StatefulWidget {
  int index;
  SliderImages({required this.index,super.key});

  @override
  State<SliderImages> createState() => _SliderImagesState(index);
}

class _SliderImagesState extends State<SliderImages> {

  int index;
  _SliderImagesState(this.index);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Slider"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/${index}.jpg",
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FloatingActionButton(
                    onPressed: () {
                      if (index == 1) {
                        index = 4;
                      } else {
                        index--;
                      }

                      setState(() {});
                    },
                    child: Icon(Icons.arrow_back_ios)),
                Spacer(),
                FloatingActionButton(
                    onPressed: () {
                      if (index == 4) {
                        index = 1;
                      } else {
                        index++;
                      }

                      setState(() {});
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
