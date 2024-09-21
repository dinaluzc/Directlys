import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const PerfilClienteWidget() : const HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const PerfilClienteWidget()
              : const HomePageWidget(),
          routes: [
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => const HomePageWidget(),
            ),
            FFRoute(
              name: 'Registrotelefonico',
              path: 'registrotelefonico',
              builder: (context, params) => const RegistrotelefonicoWidget(),
            ),
            FFRoute(
              name: 'PinCode',
              path: 'pinCode',
              builder: (context, params) => const PinCodeWidget(),
            ),
            FFRoute(
              name: 'Localizador',
              path: 'localizador',
              builder: (context, params) => const LocalizadorWidget(),
            ),
            FFRoute(
              name: 'PerfilPrestador1',
              path: 'perfilPrestador1',
              builder: (context, params) => const PerfilPrestador1Widget(),
            ),
            FFRoute(
              name: 'SeleccionaRol',
              path: 'seleccionaRol',
              builder: (context, params) => const SeleccionaRolWidget(),
            ),
            FFRoute(
              name: 'PerfilCliente',
              path: 'perfilCliente',
              builder: (context, params) => const PerfilClienteWidget(),
            ),
            FFRoute(
              name: 'PerfilPrestador2',
              path: 'perfilPrestador2',
              builder: (context, params) => const PerfilPrestador2Widget(),
            ),
            FFRoute(
              name: 'PersonaNat_Jurid',
              path: 'personaNatJurid',
              builder: (context, params) => const PersonaNatJuridWidget(),
            ),
            FFRoute(
              name: 'PerfilPrestador3',
              path: 'perfilPrestador3',
              builder: (context, params) => const PerfilPrestador3Widget(),
            ),
            FFRoute(
              name: 'PginaInicialdelprestador',
              path: 'pginaInicialdelprestador',
              builder: (context, params) => const PginaInicialdelprestadorWidget(),
            ),
            FFRoute(
              name: 'SolicitarServicio',
              path: 'solicitarServicio',
              builder: (context, params) => const SolicitarServicioWidget(),
            ),
            FFRoute(
              name: 'PerfilPrestadorInf',
              path: 'perfilPrestadorInf',
              builder: (context, params) => const PerfilPrestadorInfWidget(),
            ),
            FFRoute(
              name: 'PerfilPrestador',
              path: 'perfilPrestador',
              builder: (context, params) => const PerfilPrestadorWidget(),
            ),
            FFRoute(
              name: 'Directoriotelefonico',
              path: 'directoriotelefonico',
              builder: (context, params) => const DirectoriotelefonicoWidget(),
            ),
            FFRoute(
              name: 'Catalogodeservicios',
              path: 'catalogodeservicios',
              builder: (context, params) => const CatalogodeserviciosWidget(),
            ),
            FFRoute(
              name: 'PerfilPeluqueraMostradoacliente',
              path: 'perfilPeluqueraMostradoacliente',
              builder: (context, params) =>
                  const PerfilPeluqueraMostradoaclienteWidget(),
            ),
            FFRoute(
              name: 'Solicitarservicios',
              path: 'solicitarservicios',
              builder: (context, params) => const SolicitarserviciosWidget(),
            ),
            FFRoute(
              name: 'NumerostelefonicosPeluqueria',
              path: 'numerostelefonicosPeluqueria',
              builder: (context, params) =>
                  const NumerostelefonicosPeluqueriaWidget(),
            ),
            FFRoute(
              name: 'SolicitarservicioCopy',
              path: 'solicitarservicioCopy',
              builder: (context, params) => const SolicitarservicioCopyWidget(),
            ),
            FFRoute(
              name: 'Publicaranuncio',
              path: 'publicaranuncio',
              requireAuth: true,
              builder: (context, params) => const PublicaranuncioWidget(),
            ),
            FFRoute(
              name: 'PerfilEmpresa',
              path: 'perfilEmpresa',
              builder: (context, params) => const PerfilEmpresaWidget(),
            ),
            FFRoute(
              name: 'PginaInicial',
              path: 'pginaInicial',
              builder: (context, params) => const PginaInicialWidget(),
            ),
            FFRoute(
              name: 'PginaInicialdelprestadorCopy',
              path: 'pginaInicialdelprestadorCopy',
              builder: (context, params) =>
                  const PginaInicialdelprestadorCopyWidget(),
            ),
            FFRoute(
              name: 'SolicitarCotizacion',
              path: 'solicitarCotizacion',
              builder: (context, params) => const SolicitarCotizacionWidget(),
            ),
            FFRoute(
              name: 'NumerostelefonicosFerrererias',
              path: 'numerostelefonicosFerrererias',
              builder: (context, params) =>
                  const NumerostelefonicosFerrereriasWidget(),
            ),
            FFRoute(
              name: 'ServicioDomstico',
              path: 'servicioDomstico',
              builder: (context, params) => const ServicioDomsticoWidget(),
            ),
            FFRoute(
              name: 'RemodelacinyConstruccin',
              path: 'remodelacinyConstruccin',
              builder: (context, params) => const RemodelacinyConstruccinWidget(),
            ),
            FFRoute(
              name: 'ServicioTcnico',
              path: 'servicioTcnico',
              builder: (context, params) => const ServicioTcnicoWidget(),
            ),
            FFRoute(
              name: 'Mecnica',
              path: 'mecnica',
              builder: (context, params) => const MecnicaWidget(),
            ),
            FFRoute(
              name: 'ServicioparaMascotas',
              path: 'servicioparaMascotas',
              builder: (context, params) => const ServicioparaMascotasWidget(),
            ),
            FFRoute(
              name: 'CuidadoBelleza',
              path: 'cuidadoBelleza',
              builder: (context, params) => const CuidadoBellezaWidget(),
            ),
            FFRoute(
              name: 'ClasesParticulares',
              path: 'clasesParticulares',
              builder: (context, params) => const ClasesParticularesWidget(),
            ),
            FFRoute(
              name: 'AsesorasEspecializadas',
              path: 'asesorasEspecializadas',
              builder: (context, params) => const AsesorasEspecializadasWidget(),
            ),
            FFRoute(
              name: 'ServiciosdeEventosyEntretenimiento',
              path: 'serviciosdeEventosyEntretenimiento',
              builder: (context, params) =>
                  const ServiciosdeEventosyEntretenimientoWidget(),
            ),
            FFRoute(
              name: 'CocinerosyMeseros',
              path: 'cocinerosyMeseros',
              builder: (context, params) => const CocinerosyMeserosWidget(),
            ),
            FFRoute(
              name: 'ArreglosLocativos',
              path: 'arreglosLocativos',
              builder: (context, params) => const ArreglosLocativosWidget(),
            ),
            FFRoute(
              name: 'SaludyBienestar',
              path: 'saludyBienestar',
              builder: (context, params) => const SaludyBienestarWidget(),
            ),
            FFRoute(
              name: 'DiseoyCostura',
              path: 'disenoyCostura',
              builder: (context, params) => const DiseoyCosturaWidget(),
            ),
            FFRoute(
              name: 'ProfesionalesenEnsayoInspeccinyCertificacindeProductos',
              path: 'profesionalesenEnsayoInspeccinyCertificacindeProductos',
              builder: (context, params) =>
                  const ProfesionalesenEnsayoInspeccinyCertificacindeProductosWidget(),
            ),
            FFRoute(
              name: 'EbanistayCarpintero',
              path: 'ebanistayCarpintero',
              builder: (context, params) => const EbanistayCarpinteroWidget(),
            ),
            FFRoute(
              name: 'DiseoyMultimedia',
              path: 'disenoyMultimedia',
              builder: (context, params) => const DiseoyMultimediaWidget(),
            ),
            FFRoute(
              name: 'Sectordelturismo',
              path: 'sectordelturismo',
              builder: (context, params) => const SectordelturismoWidget(),
            ),
            FFRoute(
              name: 'GruposyOrquestasMusicales',
              path: 'gruposyOrquestasMusicales',
              builder: (context, params) => const GruposyOrquestasMusicalesWidget(),
            ),
            FFRoute(
              name: 'PerfilPeluqueraMostradoaclienteCopy',
              path: 'perfilPeluqueraMostradoaclienteCopy',
              builder: (context, params) =>
                  const PerfilPeluqueraMostradoaclienteCopyWidget(),
            ),
            FFRoute(
              name: 'proveedoreserva',
              path: 'proveedoreserva',
              builder: (context, params) => const ProveedoreservaWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).tertiary,
                  child: Image.asset(
                    'assets/images/descarga_(1).png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
