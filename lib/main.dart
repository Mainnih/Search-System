import 'package:flutter/material.dart';
import 'package:newwave/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SearchAddressApp());
}



class SearchAddressApp extends StatefulWidget {
  const SearchAddressApp({super.key});

  @override
  State<SearchAddressApp> createState() => _SearchAddressAppState();
}

class _SearchAddressAppState extends State<SearchAddressApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    if (!mounted) return;
    WidgetsBinding.instance.addObserver(this);
    print('initState\'s running... ');
  }

  @override
  void dispose() {
    if (!mounted) return;
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
    print('dispose\'s running... ');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        print('app\'s in Foreground mode');
        break;
      case AppLifecycleState.paused:
        print('app\'s in background mode');
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build\'s running... ');
    return const MaterialApp(
      home: SpashScreen(),
    );
  }
}
