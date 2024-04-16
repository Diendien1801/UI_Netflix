import 'package:flutter/material.dart';
import 'package:netflix_ui/models/movie_model.dart';
import 'package:netflix_ui/screen/detailScreen.dart';
import 'package:netflix_ui/widget/content_scroll.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<HomeScreen> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 90),
            child: Container(
              child: Image.asset('assets/img/netflix_logo.png'),
              height: 60,
              width: 100,
            ),
          ),
          actions: [
            InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    )),
                onTap: () {}),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 280.0,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detailScreen(
                            movie: movies[index],
                          ),
                        ),
                      );
                    },
                    child: MovieCard(index),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: labels.length,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFD45253),
                        Color(0xFF9E1F28),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    labels[index].toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            ContentScroll(
              images: myList,
              title: 'My List',
              imageHeight: 250,
              imageWidth: 150,
            ),
            ContentScroll(
              images: popular,
              title: 'Popular',
              imageHeight: 250,
              imageWidth: 150,
            ),
          ],
        ),
      ),
    );
  }
}

MovieCard(int index) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 5.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Hero(
            tag: movies[index].imageUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                movies[index].imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          child: Text('${movies[index].title}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            '${movies[index].categories}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    ),
  );
}
