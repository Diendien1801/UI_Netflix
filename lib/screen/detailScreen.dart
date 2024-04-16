import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_ui/models/movie_model.dart';
import 'package:netflix_ui/widget/content_scroll.dart';
import 'package:netflix_ui/screen/main_screen.dart';

class detailScreen extends StatelessWidget {
  Movie movie;

  detailScreen({required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(movie.imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 0),
                    child: Image.asset(
                      'assets/img/netflix_logo.png',
                      width: 100,
                      height: 70,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                child: Align(
                  alignment: const Alignment(0.0, 1.25),
                  child: FloatingActionButton(
                    onPressed: () {},
                    shape: CircleBorder(),
                    splashColor: Colors.grey,
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.play_arrow,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: const Icon(
                  Icons.share_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${movie.title?.toUpperCase()}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('${movie.categories}'),
                ),
                Text('⭐ ⭐ ⭐ ⭐', style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Year',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          '${movie.year}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Country',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          '${movie.country}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Length',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          '${movie.length}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 230,
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Text(
                      movie.description!,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ContentScroll(
            images: movie.screenshots,
            title: 'Screenshots',
            imageHeight: 200,
            imageWidth: 250,
          ),
        ],
      ),
    );
  }
}
