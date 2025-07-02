import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_project/scaffold_with_navbat.dart';
import '../screens/home_screen.dart';
import '../screens/details_screen.dart';
import '../screens/search_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithNavBar(child: child),
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) =>
              MaterialPage(child: HomeScreen()),
          routes: [
            GoRoute(
              path: 'details/:id',
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                return DetailsScreen(id: id);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => SearchScreen(),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) =>
              MaterialPage(child: ProfileScreen()),
          routes: [
            GoRoute(
              path: 'settings',
              builder: (context, state) => SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
