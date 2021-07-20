import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Icon(Icons.close),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert)
        ],
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        children: [
          Divider(),
          MaterialBanner(
              leading: CircleAvatar(
                child: Icon(Icons.delete),
              ),
              content: const Text("hello message"),
              actions: [
                TextButton(onPressed: () {}, child: Text("action 1")),
                TextButton(onPressed: () {}, child: Text("action 2"))
              ]),
          MaterialBanner(
              leading: CircleAvatar(
                child: Icon(Icons.delete),
              ),
              content: const Text("hello message"),
              actions: [
                OutlinedButton(
                  child: Text("OUTLINED"),
                  onPressed: () {},
                ),
                ElevatedButton(onPressed: () {}, child: Text("Contant button")),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.safety_divider),
                    label: Text('您好'))
              ]),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: Text('Card Title'),
                  subtitle: Text(
                    "subtitle",
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('1123131232312313123123123'),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Action"))
                  ],
                ),
                Image.asset('assets/example/squirrel.jpg'),
              ],
            ),
          ),
          Column(
            children: [
              Checkbox(value: false, onChanged: (bool) {}),
              Checkbox(value: false, onChanged: (bool) {}),
              Checkbox(value: false, onChanged: (bool) {}),
              Row(
                children: [
                  FilterChip(
                    label: Text('Filter 1'),
                    selected: true,
                    onSelected: (bool value) {},
                  ),
                  ChoiceChip(
                    label: Text('Choice 1'),
                    selected: true,
                  ),
                  ActionChip(
                    avatar: Icon(Icons.favorite),
                    label: Text('Action 1'),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
          // PaginatedDataTable(
          //   header: Text('Header Text'),
          //   rowsPerPage: 4,
          //   columns: [
          //     DataColumn(label: Text('Header A')),
          //     DataColumn(label: Text('Header B')),
          //     DataColumn(label: Text('Header C')),
          //     DataColumn(label: Text('Header D')),
          //   ],
          //   source: ,
          // ),
          AlertDialog(
            title: Text('Reset settings?'),
            content: Text(
                'This will reset your device to its default factory settings.'),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('ACCEPT'),
              ),
            ],
          ),
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // This trailing comma makes auto-formatting nicer for build methods.
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     children: [
      //       IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      //       IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      //       IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
      //     ],
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites')
        ],
        onTap: (value) => {setState(() => _currentIndex = value)},
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
      ),
    );
  }
}
