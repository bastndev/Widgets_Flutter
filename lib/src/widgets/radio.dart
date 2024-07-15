import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String groupValue = "Yes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Radio Button in Flutter'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Are you developer ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: "Yes",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Text("Yes"),
                Radio<String>(
                  value: "No",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Text("No")
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
