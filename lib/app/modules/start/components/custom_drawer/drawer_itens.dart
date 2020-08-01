import 'package:flutter/material.dart';

import 'model/custom_drawer_model.dart';

List<CustomDrawerModel> drawerItems = [
  CustomDrawerModel(title: "Home", icon: Icons.home, routeMenu: "/home"),
  CustomDrawerModel(title: "Finanças", icon: Icons.monetization_on, routeMenu: "/financas"),
  CustomDrawerModel(title: "Calendário", icon: Icons.calendar_today, routeMenu: "/calendario"),
  CustomDrawerModel(title: "Equipe", icon: Icons.folder_shared, routeMenu: "/equipe"),
  CustomDrawerModel(title: "Clientes", icon: Icons.business_center, routeMenu: "/clientes"),
  CustomDrawerModel(title: "NF-e", icon: Icons.content_paste, routeMenu: "/nfe"),
  CustomDrawerModel(title: "Opções", icon: Icons.settings, routeMenu: "/config"),
];
