import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Button Types")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_alarm),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              onLongPress: () {
                debugPrint("Text Button Long Pressed");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
              ),
              child: Text("Text Button"),
            ),
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.red;
                  }
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.green;
                  }
                }),
              ),
              icon: Icon(Icons.add),
              label: Text("Icon Button"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.amber,
              ),
              child: Text("Elevated Button"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.remove),
              label: Text("Elevated Icon Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                side: BorderSide(color: Colors.pink, width: 4),
                shape: StadiumBorder(),
                backgroundColor: Colors.pink.withValues(alpha: 0.5),
                foregroundColor: Colors.white,
              ),
              child: Text("Outlined Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.all(16),
                side: BorderSide(color: Colors.black26, width: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: Colors.pink.withValues(alpha: 0.5),
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.refresh),
              label: Text("Outlined Icon Button"),
            ),
          ],
        ),
      ),
    );
  }
}
