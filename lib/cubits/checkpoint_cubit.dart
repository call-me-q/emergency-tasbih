part of 'cubits.dart';

class CheckpointCubit extends Cubit<int> {
  CheckpointCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void reset() {
    emit(0);
  }
}
