import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(90, 86, 17, 17, 10);
  assert(Policy.score(signalcase_1) == 126);
  assert(Policy.classify(signalcase_1) == 'review');
  const signalcase_2 = Signal(88, 74, 19, 5, 12);
  assert(Policy.score(signalcase_2) == 180);
  assert(Policy.classify(signalcase_2) == 'accept');
  const signalcase_3 = Signal(82, 88, 20, 12, 12);
  assert(Policy.score(signalcase_3) == 136);
  assert(Policy.classify(signalcase_3) == 'review');
}
