import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_counter/app/model/counter.dart';
import 'package:simple_counter/app/utils/utils.dart';
import 'package:simple_counter/app/views/home/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext contextProvider) => CounterProvider()..fetchCounter(),
      child: Builder(
        builder: (contextProvider) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${contextProvider.watch<CounterProvider>().counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            persistentFooterButtons: [
              Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () => contextProvider.read<CounterProvider>().decrementCounter(),
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    onPressed: () => contextProvider.read<CounterProvider>().setCounter(),
                    tooltip: 'set',
                    child: const Icon(Icons.done),
                  ),
                  FloatingActionButton(
                    onPressed: () => contextProvider.read<CounterProvider>().incrementCounter(),
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          );
        }
      ),
    );
  }
}
