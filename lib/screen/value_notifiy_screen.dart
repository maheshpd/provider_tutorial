import 'package:flutter/material.dart';

class NotifiyListenerScreen extends StatelessWidget {
  NotifiyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _counter,
          builder: (context, value, child) {
            return Text(_counter.value.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
