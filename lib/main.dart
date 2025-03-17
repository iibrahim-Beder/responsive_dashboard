import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Optional: Removes the debug banner
      home: Scaffold(
        backgroundColor: Color(0xfff7f9fa),
        body: DashboardView(),
      ),
    );
  }
}
