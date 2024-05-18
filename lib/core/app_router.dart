import 'package:go_router/go_router.dart';
import 'package:examen_1/screens/books_screen.dart';
import 'package:examen_1/screens/book_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const BookListScreen();
      },
    ),
    GoRoute(
      path: '/book/:id',
      builder: (BuildContext context, GoRouterState state) {
        final bookId = state.pathParameters['id']!;
        return BookScreen(bookId: bookId);
      },
    ),
  ],
);
