import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  //StreamController for input events
  final _generateRandomController = StreamController<void>();
  //StreamController for output
  final _randomNumberController = StreamController<int>();
  //Input sink
  Sink<void> get generateRandom => _generateRandomController.sink;
  //Output stream
  Stream<int> get randomNumber => _randomNumberController.stream;

RandomNumberBloc() {
  _generateRandomController.stream.listen((_) {
    final random = Random().nextInt(10);
    _randomNumberController.sink.add(random);
  });
}

void dispose() {
  _generateRandomController.close();
  _randomNumberController.close();
}
}