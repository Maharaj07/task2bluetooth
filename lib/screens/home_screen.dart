import 'package:flutter/material.dart';
import '../models/bt_mode.dart';
import 'device_list_screen.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BtMode selectedMode = BtMode.classic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bluetooth Messaging App')),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Mode Selection Dropdown
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Select Mode: '),
              DropdownButton<BtMode>(
                value: selectedMode,
                items: const [
                  DropdownMenuItem(
                    value: BtMode.classic,
                    child: Text('Bluetooth Classic'),
                  ),
                  DropdownMenuItem(
                    value: BtMode.ble,
                    child: Text('Bluetooth Low Energy (BLE)'),
                  ),
                ],
                onChanged: (mode) {
                  setState(() => selectedMode = mode!);
                },
              ),
            ],
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            child: const Text('View Devices'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DeviceListScreen(mode: selectedMode),
                ),
              );
            },
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Go to Chat'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ChatScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
