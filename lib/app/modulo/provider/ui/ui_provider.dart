import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeProvider extends StatefulWidget {
  const MyHomeProvider({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomeProvider> createState() => _MyHomeProviderState();
}

class _MyHomeProviderState extends State<MyHomeProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              // ignore: unnecessary_brace_in_string_interps
              "",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
