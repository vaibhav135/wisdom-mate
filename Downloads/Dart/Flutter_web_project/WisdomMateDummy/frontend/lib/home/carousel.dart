import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CarouselDemo extends StatelessWidget {
  static String routeName = '/misc/carousel';
  MediaQueryData queryData;
  static const List<String> fileNames = [
    "images/person1.jpg",
    "images/person2.jpg",
    "images/person3.jpg",
  ];

  final List<Widget> images =
      fileNames.map((file) => Image.asset(file, fit: BoxFit.cover)).toList();

  @override
  Widget build(context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: new AspectRatio(
          aspectRatio: 16/9,
          child: Carousel(itemBuilder: widgetBuilder),
        ),
      ),
    );
  }

  Widget widgetBuilder(BuildContext context, int index) {
    return images[index % images.length];
  }
}

typedef OnCurrentItemChangedCallback = void Function(int currentItem);

class Carousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  const Carousel({Key key, @required this.itemBuilder});

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _controller;
  int _currentPage;
  bool _pageHasChanged = false;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: 1,
      initialPage: _currentPage,
    );
  }

  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          _pageHasChanged = true;
          _currentPage = value;
        });
      },
      controller: _controller,
      itemBuilder: (context, index) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          var result = _pageHasChanged ? _controller.page : _currentPage * 1.0;

          // The horizontal position of the page between a 1 and 0
          var value = result - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0) as double;

          return Center(
            child: SizedBox(
              height: Curves.easeOut.transform(value) * (size.height),
              width: Curves.easeOut.transform(value) * size.width,
              child: child,
            ),
          );
        },
        child: widget.itemBuilder(context, index),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
// class Carousel extends StatefulWidget{
//   @override
//   _CarouselState createState() => _CarouselState();
// }

// class _CarouselState extends State<Carousel> {

//   PageController controller;

//   int _count = 0 , currentpage = 0;

//   List<String> _images = [
// "images/person1.jpg",
// "images/person2.jpg",
// "images/person3.jpg",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Row(
//           children: <Widget>[

//           ]
//         ),

//       ),
//     );
//   }

/*
  two type of animation - implicit and explicit
  implicit - not cotrolling totally means very much automatically 
  explicit - fully manually


  import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CarouselDemo extends StatelessWidget {
  static String routeName = '/misc/carousel';

  static const List<String> fileNames = [
    'assets/eat_cape_town_sm.jpg',
    'assets/eat_new_orleans_sm.jpg',
    'assets/eat_sydney_sm.jpg',
  ];

  final List<Widget> images =
      fileNames.map((file) => Image.asset(file, fit: BoxFit.cover)).toList();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AspectRatio(
            aspectRatio: 1,
            child: Carousel(itemBuilder: widgetBuilder),
          ),
        ),
      ),
    );
  }

  Widget widgetBuilder(BuildContext context, int index) {
    return images[index % images.length];
  }
}

typedef OnCurrentItemChangedCallback = void Function(int currentItem);

class Carousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  const Carousel({Key key, @required this.itemBuilder});

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController _controller;
  int _currentPage;
  bool _pageHasChanged = false;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: .85,
      initialPage: _currentPage,
    );
  }

  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          _pageHasChanged = true;
          _currentPage = value;
        });
      },
      controller: _controller,
      itemBuilder: (context, index) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          var result = _pageHasChanged ? _controller.page : _currentPage * 1.0;

          // The horizontal position of the page between a 1 and 0
          var value = result - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0) as double;

          return Center(
            child: SizedBox(
              height: Curves.easeOut.transform(value) * size.height,
              width: Curves.easeOut.transform(value) * size.width,
              child: child,
            ),
          );
        },
        child: widget.itemBuilder(context, index),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
  
  */

// @override
// Widget build(BuildContext context) {
//    return Center(
//        child: Container(
//           height: MediaQuery.of(context).size.height*0.30,
//           width: MediaQuery.of(context).size.width,
//          child: PageView.builder(
//               itemCount : ,
//               controller: PageController(viewportFraction: 0.7),
//               onPageChanged: (int index) => setState(() => _count ),
//               itemBuilder: (_, i) {
//                 return Transform.scale(
//                   scale: i == _count ? 1 : 0.95,
//                   child: Card(
//                     semanticContainer: true,
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     child: Image.asset(_images[i]),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     elevation: 5,
//                     margin: EdgeInsets.all(10),
//                   ),
//                 );
//               }),
//        )
//    );
// }

//   void _addImage() {
//     setState((){
//       _images.add(_images[_count % 3]); //divided by the no. of images
//       ++_count;
//     }
//     );
//   }
// }
