import 'package:flutter/material.dart';
import '../models/bt_mode.dart';

class DeviceListScreen extends StatefulWidget {
  final BtMode mode;

  const DeviceListScreen({Key? key, required this.mode}) : super(key: key);

  @override
  State<DeviceListScreen> createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends State<DeviceListScreen> {
  List<String> devices = ['Device A', 'Device B', 'Device C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Devices (${widget.mode == BtMode.classic ? "Classic" : "BLE"})',
        ),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(devices[index]),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, devices[index]);
              },
              child: const Text('Connect'),
            ),
          );
        },
      ),
    );
  }
}
