// TODO(devkabiir): auto create screenshots for all routes (`flutter run --route` can run a specific route), https://github.com/devkabiir/flutter_advanced_template/issues/3
// TODO(devkabiir): check for commit message, https://github.com/devkabiir/flutter_advanced_template/issues/4

import 'dart:io';
import 'dart:isolate';

final ci = Platform.environment.containsKey('TRAVIS');

/// One of `push`, `pull_request`, `api`, `cron`
final travisEventType = Platform.environment['TRAVIS_EVENT_TYPE'];

// for single commit pushes
final travisCommitMessage = Platform.environment['TRAVIS_COMMIT_MESSAGE'] ?? '';

String get travisCommitRange {
  final range = (Platform.environment['TRAVIS_COMMIT_RANGE'] ?? '').split('..');

  // to include the start commit itself add `~1` to go 1 commit before it.
  return range.isNotEmpty ? '${range[0]}~1..${range[1]}' : '';
}

final scriptPath = Platform.script.toFilePath(windows: Platform.isWindows);

final scriptName =
    scriptPath.substring(scriptPath.lastIndexOf(Platform.pathSeparator) + 1);

final projectRoot = scriptPath.substring(
  0,
  scriptPath.lastIndexOf('${Platform.pathSeparator}bin'),
);

final Map<String, List<String>> cmds = {
  'dartfmt': [
    '-n',
    '--set-exit-if-changed',
    '$projectRoot${Platform.pathSeparator}lib',
    '$projectRoot${Platform.pathSeparator}test'
  ],
  'dartanalyzer': [
    '--fatal-warnings',
    '$projectRoot${Platform.pathSeparator}lib',
    '$projectRoot${Platform.pathSeparator}test'
  ],
  'flutter': ['test'],
};

void main([List<String> args]) async {
  print(''.padLeft(80, '#'));
  print('Executing $scriptName script');
  print('Project root: $projectRoot');
  print('Is CI: $ci');
  print('\n'.padLeft(81, '#'));

  for (String cmd in cmds.keys) {
    print('Running "$cmd ${cmds[cmd].join(' ')}"');

    final process =
        Process.runSync(cmd, cmds[cmd], runInShell: Platform.isWindows);

    print(process.stdout);
    print(process.stderr);

    if (process.exitCode != 0) {
      print('Failed $cmd with exit code: ${process.exitCode}');

      exit(process.exitCode);
    }
  }

  exit(0);
}
