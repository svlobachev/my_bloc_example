import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { event_red, event_green }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc(Color initialColor) : super(initialColor) {
    on<ColorEvent>((event, Emitter<Color> emit) {
      emit(
        (event == ColorEvent.event_red) ? Colors.red : Colors.green,
      );
    });
  }
}
