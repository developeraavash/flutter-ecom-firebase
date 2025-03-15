import 'package:logger/web.dart';

class TLoggerHelper {
  static final Logger _loggers = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String msg) {
    _loggers.d(msg);
  }

  static void info(String msg) {
    _loggers.i(msg);
  }

  static void warning(String msg) {
    _loggers.w(msg);
  }

  static void error(String msg, [dynamic error]) {
    _loggers.e(msg, error: error, stackTrace: StackTrace.current);
  }


}
