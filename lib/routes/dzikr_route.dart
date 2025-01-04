part of 'routes.dart';

@TypedGoRoute<DzikrRoute>(
  path: '/',
)
class DzikrRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const DzikrPage();
}
