import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          
          background: Color(0xFF2F3345), 
          
          primary: Color(0xFF2F3345),
          secondary: Color(0xFF6447E0),
        ),
      ),
      home: const MyHomePage(title: 'Te recomiendo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF2F3345), 
      
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title),
      ),
      
      body: Column(
        children: [
         Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          width: double.infinity,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
            Text("Restaurantes, Pubs, y discotecas", style: TextStyle(fontSize: 20)),
             Text("Restaurantes, Pubs, y discotecas", style: TextStyle(fontSize: 20)),
            ],),
         ),
          Padding(
            padding: const EdgeInsets.only(top:40.0, bottom: 40.0),
            child: Swiper(
              loop: true,
              itemWidth: 300,
              itemHeight: 380,
              viewportFraction: 0.4,
              layout: SwiperLayout.STACK,
              axisDirection: AxisDirection.right,
              scale: 0.9,
              itemBuilder: (BuildContext context,int index){
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:  Stack(children: [ 
                    Image.network("https://via.placeholder.com/300x380",fit: BoxFit.contain,), 
                  Positioned(
                    bottom: 20,
                    left: 20,
                    width: 240,
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("Restaurantes, Pubs, y discotecas", style: TextStyle(fontSize: 20)),
                      Text("Hello", style: TextStyle(fontSize: 12)),
                  ]))],),);
              },
              itemCount: 10,
              
              
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
