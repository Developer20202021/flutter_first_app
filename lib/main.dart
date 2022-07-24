// import 'dart:html';
// ignore_for_file: unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabrina Shona I love you',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Sabrina Shona I love you'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FilePickAdd(),
      //  MyImage() //Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'Pagli shootti onek valobashi',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //       CustomButton(),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       CustomButton(),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       CustomButton(),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       CustomButton(),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       Liststruc(),
      //        SizedBox(
      //         height: 30,
      //       ),
      //       Listdone(),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('sabrina i love you');
      },
      child: Container(
        height: 40,
        width: 100,
        color: Colors.amber,
        child: Center(
          child: Text(
            'ok',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Liststruc extends StatefulWidget {
  const Liststruc({Key? key}) : super(key: key);

  @override
  State<Liststruc> createState() => _ListstrucState();
}

class _ListstrucState extends State<Liststruc> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Done",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        Text(
          "Done",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        Text(
          "Done",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ],
    );
  }
}

class Listdone extends StatefulWidget {
  const Listdone({Key? key}) : super(key: key);

  @override
  State<Listdone> createState() => _ListdoneState();
}

class _ListdoneState extends State<Listdone> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        ListTile(
          title: Text("done"),
          trailing: Icon(
            Icons.access_time_rounded,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
      ],
    );
  }
}

class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  String filePath = '';

  @override
  Widget build(BuildContext context) {
    void checkPermission() async {
      if (await Permission.storage.request().isGranted) {
        setState(() {
          filePath = '/storage/emulated/0/Download/myImage.jpg';
        });
      } else {
        await Permission.storage.request();
      }
    }

    checkPermission();
    return Container(
      width: 300,
      height: 300,
      color: Colors.grey,
      // child: Image.network("https://images.pexels.com/photos/12743163/pexels-photo-12743163.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      child: Image.file(File(filePath)),
    );
  }
}

class FilePickAdd extends StatefulWidget {
  const FilePickAdd({Key? key}) : super(key: key);

  @override
  State<FilePickAdd> createState() => _FilePickAddState();
}

class _FilePickAddState extends State<FilePickAdd> {
  @override
  Widget build(BuildContext context) {
    void _pickFile() async {
      final result = await ;

      // if no file is picked
      if (result == null) {
        
        print("null");
        return;
        }

      // we will log the name, size and path of the
      // first picked file (if multiple are selected)
     
    }

    return Center(
      child: MaterialButton(
        onPressed: () {
          _pickFile();
        },
        child: Text("OPEN ME"),
        color: Colors.amber,
      ),
    );
  }
}

class FilePicker {}
