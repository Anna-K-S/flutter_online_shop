import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class MyBlocObserver extends BlocObserver {
  final Logger _logger;

  MyBlocObserver(this._logger);

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    _logger.d(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger.e(error);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.d(change);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.d(event);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    _logger.d(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.d(bloc);
  }
}
