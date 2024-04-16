import 'package:flutter/material.dart';

class ContentScroll extends StatelessWidget {
  final List<String>? images;
  final String? title;
  final double? imageHeight;
  final double? imageWidth;

  ContentScroll({
    this.images,
    this.title,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  title.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Container(
          height: imageHeight,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: imageHeight,
              width: imageWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(images![index].toString()),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            itemCount: images!.length,
          ),
        )
      ],
    );
  }
}
