import 'package:flutter/material.dart';

void main() {
  runApp( Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhomepage(),
    );
  }
}
class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
         leading:Icon(Icons.menu),
          title:Text("Alert system"),
        actions:<Widget>[
          IconButton(onPressed: (){
            
          },
            icon:Icon(Icons.account_circle_outlined),
          tooltip: 'account',
          )
        ],),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(context: context, builder:(context){
                return AlertDialog(
                  title: const Text('Alert'),
                  content: Text("this is alert system"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        child: Text("cancel")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Ok")),

                  ],

                );

              }
              );
            },
            child: Text("click",
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 45.00
              ),),

          ),
        ),
      ),
    );
  }
}

