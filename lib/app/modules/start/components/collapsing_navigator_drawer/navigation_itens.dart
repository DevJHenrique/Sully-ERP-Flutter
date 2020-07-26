import 'package:flutter/material.dart';

import 'navigation_tile_model.dart';

List<NavigationTileModel> navigationItems = [
  NavigationTileModel(title: "Home", icon: Icons.insert_chart, routeMenu: "/home"),
  NavigationTileModel(title: "Calendário", icon: Icons.calendar_today, routeMenu: "/calendario"),
  NavigationTileModel(title: "Equipe", icon: Icons.group, routeMenu: "/team"),
  NavigationTileModel(title: "Clientes", icon: Icons.assignment_ind, routeMenu: "/clientes"),
  NavigationTileModel(title: "Produtos", icon: Icons.admin_panel_settings, routeMenu: "/produtos"),
  NavigationTileModel(title: "Lista Mestra", icon: Icons.settings, routeMenu: "/lista-mestra"),
];
