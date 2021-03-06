import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/common_widgets/show_alert_dialog.dart';
import '../services/auth.dart';

class HomePage extends StatelessWidget {

  Future<void> _signOut(BuildContext context) async {
    final auth = Provider.of<AuthBase>(context, listen: false);
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(context,
        title: 'Logout',
        content: 'Are you sure you want to logout?',
        cancelActionText: 'Cancel',
        defaultActionText: 'Logout'
    );
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
        actions: [
          ElevatedButton(
            onPressed: () => _confirmSignOut(context),
            child: const Text(
              'Log out',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
