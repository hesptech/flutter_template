import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/gallery',
      name: GalleryScreen.name,
      builder: (context, state) => const GalleryScreen(),
    ),

    GoRoute(
      path: '/auth',
      name: AuthScreen.name,
      builder: (context, state) => const AuthScreen(),
    ),

    GoRoute(
      path: '/listings',
      name: ListingsScreen.name,
      builder: (context, state) => const ListingsScreen(),
    ),
  ],
);