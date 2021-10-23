import 'package:flutter/material.dart';
// all code block have the same name is one project

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline1: TextStyle(
              fontSize: 60.0, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
      title: appTitle,
      home: HomeView(title: appTitle),
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;

  HomeView({required this.title});

  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;

  void increaseCounter() {
    setState(() => {
          _counter++,
        });
  }

  void decreaseCounter() {
    setState(() => {
          if (_counter > 0)
            {
              _counter--,
            }
        });
  }

  void resetCounter() {
    setState(() => {
          _counter = 0,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Tapped button this many times: ',
                        style: Theme.of(context).textTheme.bodyText1),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain
              ),
              Image.asset('assets/avatar.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.contain
              )
            ]),
          ]),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              resetCounter();
            },
            child: Icon(Icons.refresh),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              decreaseCounter();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              increaseCounter();
            },
            child: Icon(Icons.add),
          )
        ],
      ),
      drawer: Drawer(
          child: Center(
        child: RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 30, color: Colors.blue),
                children: [
              TextSpan(text: 'Hello '),
              TextSpan(
                  text: 'bold ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: 'world!',
              )
            ])),
      )),
    );
  }
}

//   @override
//   Widget build(BuildContext context) { //name: project 2
//     return MaterialApp(
//         theme: ThemeData(
//           primaryColor: Colors.white,
//           accentColor: Colors.blue[300],
//           scaffoldBackgroundColor: Colors.black,
//           textTheme: TextTheme(
//               headline1: TextStyle(
//             fontSize: 40,
//             fontWeight: FontWeight.w600,
//             color: Colors.white,
//           )),
//         ),
//         home: Scaffold(
//           backgroundColor: Theme.of(context).backgroundColor,
//           body: ExampleHome(),
//         ));
//   }
// }

// Widget build(BuildContext context){// name: project3
//   return MaterialApp(
//     title: appTitle,
//     home: Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.lightBlue,
//           width: 300,
//           height: 300,
//
//           child: Column(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'TextField 1'
//                 ),
//               ),
//
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'TextField 2'
//                 ),
//               ),
//
//               SizedBox(height: 20),
//
//               Text('Text Widget '),
//
//               SizedBox(height: 20),
//
//               RaisedButton(
//                 child: Text('Raise Button'),
//                 onPressed: () {  },
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class ExampleHome extends StatelessWidget { // name: project2
//   const ExampleHome({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Container(
//           child: Text(
//             'Hello world',
//             style: Theme.of(context).textTheme.headline1,
//           ),
//         )
//     );
//   }
// }

// class HomeView extends StatelessWidget { //name: project1
//   final String title;
//
//   HomeView({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title),),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Tapped button this many times: ',
//                 style: Theme
//                     .of(context)
//                     .textTheme
//                     .bodyText1),
//             Text(
//               '0',
//               style: Theme
//                   .of(context)
//                   .textTheme
//                   .headline1,
//             )
//           ]
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             onPressed: () {
//
//             },
//             child: Icon(Icons.refresh),
//           ),
//           SizedBox(width: 10.0,),
//           FloatingActionButton(
//             onPressed: () {
//
//             },
//             child: Icon(Icons.remove),
//           ),
//           SizedBox(width: 10.0,),
//           FloatingActionButton(
//             onPressed: () {
//
//             },
//             child: Icon(Icons.add),
//           )
//         ],
//       ),
//     );
//   }
// }
