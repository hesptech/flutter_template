import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[


  MenuItem(
    title: 'Home', 
    subTitle: 'Galleries House/Condo', 
    link: '/', 
    icon: Icons.home
  ),

  MenuItem(
    title: 'Search', 
    subTitle: 'Search by address, MLS number, Location', 
    link: '/search', 
    icon: Icons.search
  ),

  MenuItem(
    title: 'Filters', 
    subTitle: 'by Price, Location, Type..', 
    link: '/filters', 
    icon: Icons.filter
  ),

  MenuItem(
    title: 'Map', 
    subTitle: 'Generales y controlados', 
    link: '/map', 
    icon: Icons.map
  ),

  MenuItem(
    title: 'Login', 
    subTitle: 'Stateful widget animado', 
    link: '/auth', 
    icon: Icons.login
  ),

  /* MenuItem(
    title: 'Cambiar tema', 
    subTitle: 'Cambiar tema de la aplicación', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ), */
];



