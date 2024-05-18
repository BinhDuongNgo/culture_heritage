import 'package:flutter/material.dart';

class settingModal {
  final IconData icon;
  final String name;
  final String route;
  settingModal({
    required this.icon,
    required this.name,
    required this.route,
  });
}

List<settingModal> settings = [
  settingModal(
    icon: Icons.translate,
    name: "Language",
    route: "/",
  ),
  settingModal(
    icon: Icons.notifications,
    name: "Notification settings",
    route: "/",
  ),
  settingModal(
    icon: Icons.help,
    name: "Help center",
    route: "/",
  ),
  settingModal(
    icon: Icons.logout,
    name: "Logout",
    route: "/",
  ),
];
