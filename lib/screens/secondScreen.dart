import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:provider_project/provider/counter.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key, required this.count}) : super(key: key);
  final int count;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void didUpdateWidget(covariant SecondScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("the old count was: ${oldWidget.count}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The count on the first screen is: ${widget.count}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, c, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${c.counter}",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    TextButton(
                      onPressed: () {
                        c.increment();
                      },
                      child: Text('increment'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
