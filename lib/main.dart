import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blockcert',
      home: CommandCentre(),
    );
  }
}

class CommandCentre extends StatefulWidget {
  const CommandCentre({Key? key}) : super(key: key);

  @override
  _CommandCentreState createState() => _CommandCentreState();
}

class _CommandCentreState extends State<CommandCentre> {
  Widget _buttons() {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 45,
            width: 70,
          ),
          ElevatedButton(
              onPressed: _keygen(), child: const Text('Generate Key pair')),
          const SizedBox(
            height: 45,
            width: 70,
          ),
          ElevatedButton(
              onPressed: _genCert(), child: const Text('Create certificate')),
          const SizedBox(
            height: 45,
            width: 70,
          ),
          ElevatedButton(
              onPressed: _chkCert(), child: const Text('Check certificate')),
          const SizedBox(
            height: 45,
            width: 70,
          ),
          ElevatedButton(
              onPressed: _verify(), child: const Text('Verify blockchain')),
          const SizedBox(
            height: 45,
            width: 70,
          ),
          ElevatedButton(
              onPressed: _showCert(),
              child: const Text('Display Info in blockchain')),
        ],
      ),
    );
  }

  _keygen() {}

  _genCert() {}

  _chkCert() {}

  _verify() {}

  _showCert() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BlockCert',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey,
      body: _buttons(),
    );
  }
}
