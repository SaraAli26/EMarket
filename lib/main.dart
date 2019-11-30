import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePAgeState createState()=> _HomePAgeState();

}

class _HomePAgeState extends State<HomePage>{
  int _conuter = 0;
  void _increment(){
    setState(() {
      _conuter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Test Title"),
        backgroundColor: Colors.blue,
        elevation: 5,
        actions: <Widget>[
          IconButton(
            onPressed: (){
              setState(() {
                _conuter = 0;
              });
            },
            icon: Icon(Icons.clear),
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("omer@omer.com"),
              accountName: Text("Ahmed Ail"),
              decoration: BoxDecoration(color: Colors.purple),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/logo.png"),
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out"),
              onTap: (){},
            ),ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out"),
              onTap: (){},
            ),ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Log out"),
              onTap: (){},
            ),



          ],
        ),
      ),
      
      
      body: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.green,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
            )
          ],
        ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: _increment,
      ),
    );
  }
}