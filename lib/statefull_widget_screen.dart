import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({super.key});

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(count.toString(),
                    style: const TextStyle(fontSize: 50))),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {
            
          });
          print(count);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
