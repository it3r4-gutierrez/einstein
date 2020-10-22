import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   
    return MaterialApp(   
        
      home: new Scaffold(   
         backgroundColor: Colors.cyan,
           
        body: Center(   
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/top.png'),
                    fit: BoxFit.fill,
                  ),
              
                ),
              ),
              Container(
                height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/welcome.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/center.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              Container(
               height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/learn.png'),
                    fit: BoxFit.fill,
                  ),
                
                ),
              ),
              IconButton(
                  icon: Image.asset('assets/images/button.jpg'),
                  iconSize: 100,
                  onPressed: () {
            _navigateToNextScreen(context);
          },
              ),
              IconButton(
                  icon: Image.asset('assets/images/exit.png'),
                  iconSize: 100,
                  onPressed: () {},
              ),
            ]
          )
        ),   
      ),   
    );   
  }   
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(
      
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('SCIENCE is FUN',
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                color: new Color(0xDD000000))
                )
            ),
            new Container(
              child: Text('click to learn'),
            ),
            new Container(
               decoration: new BoxDecoration(
               color: Colors.blue ),
               child: new Text('categories',
               textAlign: TextAlign.center,
               style: new TextStyle(
                  fontSize: 30.0
                ),)
            ),
            new Container(
          
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          shrinkWrap: true,
          
          
          children: <Widget>[
            Image.asset("assets/images/human_body.png",),
            Image.asset("assets/images/food.png"),
            Image.asset("assets/images/animals.png"),
            Image.asset("assets/images/plants.png"),
            Image.asset("assets/images/planets.png"),
            Image.asset("assets/images/games.png"),

          ],
        )
            )

          ],
        ),
      )

      ),


    );
  }
}

// home: new Scaffold(
//     backgroundColor: Colors.cyan,

//     body: Stack(
//       children: [
//     Positioned(
//       top: 50,
//       right: 50,
//       child: Text('SCIENCE is FUN',
//       style: new TextStyle(
//                 fontSize: 35.0,
//                 fontFamily: 'Roboto',
//                 color: new Color(0xDD000000))
//                 )
//             ),
//             Positioned(
//               top: 80,
//               right: 100,
//               child: Text('click to learn',
//                 style: new TextStyle(
//                   fontSize: 25.0,
//                   fontFamily: 'Roboto',
//                   color: new Color(0xDD000000))
//                 )
//           ),
//           new Positioned(
//             top: 120,
//             right: 80,
//             child: new Container(
//               width: 200.0,
//               height: 40.0,
//               decoration: new BoxDecoration(
//                 color: Colors.blue ),
//                 child: new Text('categories',
//                 textAlign: TextAlign.center,
//                 style: new TextStyle(
//                   fontSize: 30.0
//                 ),)
//             ),
//           ),
//           ]
//         ),
//       ),















//  home: Scaffold(
//       backgroundColor: Colors.cyan,
      
      
//         body: Container(
//           padding: EdgeInsets.all(16.0),
//           child: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10.0,
          
          
//           children: <Widget>[
//             Image.asset("assets/images/human_body.png",),
//             Image.asset("assets/images/food.png"),
//             Image.asset("assets/images/animals.png"),
//             Image.asset("assets/images/plants.png"),
//             Image.asset("assets/images/planets.png"),
//             Image.asset("assets/images/games.png"),

//           ],
//         )),
//       ),




//   return Stack(children: [
//     Positioned(
//       top: 50,
//       right: 50,
//       child: Text('SCIENCE is FUN',
//       style: new TextStyle(
//                 fontSize: 35.0,
//                 fontFamily: 'Roboto',
//                 color: new Color(0xDD000000))
//                 )
//     ),
//      Positioned(
//       top: 80,
//       right: 100,
//       child: Text('click to learn',
//       style: new TextStyle(
//                 fontSize: 25.0,
//                 fontFamily: 'Roboto',
//                 color: new Color(0xDD000000))
//                 )
//     ),
// ],
   
//   );