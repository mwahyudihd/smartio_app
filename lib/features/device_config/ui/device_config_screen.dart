import 'package:flutter/material.dart';
import 'package:smartio_app/features/device_config/ui/change_device_screen.dart';
import 'package:smartio_app/features/device_config/ui/components/option.dart';
import 'package:smartio_app/features/device_config/ui/components/route_animate.dart';
import 'package:smartio_app/features/device_config/ui/device_info_screen.dart';
import 'package:smartio_app/features/device_config/ui/time_config_screen.dart';

class DeviceConfigScreen extends StatefulWidget {
  const DeviceConfigScreen({super.key});

  @override
  State<DeviceConfigScreen> createState() => _DeviceConfigScreenState();
}

class _DeviceConfigScreenState extends State<DeviceConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListComponents("Change Device", "machine").render(() {
            Navigator.of(context)
                .push(AnimateRoute().createRoute(ChangeDeviceScreen()));
          }),
          ListComponents("Info Device", "info").render(() {
            Navigator.of(context)
                .push(AnimateRoute().createRoute(DeviceInfoScreen()));
          }),
          ListComponents("Time mode settings", "time").render(() {
            Navigator.of(context)
                .push(AnimateRoute().createRoute(TimeConfigScreen()));
          }),
          ListComponents("Logout", "exit").render(() => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Are You Sure?'),
                  content: const Text('Your session will be ended!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
