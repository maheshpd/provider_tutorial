import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/example_one_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context, values, child) {
            return Slider(
                min: 0,
                max: 1,
                value: values.value,
                onChanged: (val) {
                  values.setValue(val);
                });
          }),
          Consumer<ExampleOneProvider>(builder: (context, values, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(values.value)),
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(values.value)),
                    child: const Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
