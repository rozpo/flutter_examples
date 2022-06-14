import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_pattern/src/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    // Note:
    // We’ve set listen to false because we don’t need to listen to any values here.
    // We’re just dispatching an action to be performed.
    Provider.of<CounterProvider>(context, listen: false).incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterProvider>(context).counter;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
