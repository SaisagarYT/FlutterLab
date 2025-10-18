part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

final class IncrementTheCounter extends CounterEvent {
}
