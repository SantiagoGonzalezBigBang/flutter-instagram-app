import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {

    on<HomeEvent>((event, emit) {});

  }

  final PageController pageViewController = PageController(
    initialPage: 1
  );

  Future<void> animateToPage(int index) async {
    pageViewController.animateToPage(
      index, 
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear
    );
  }

}
