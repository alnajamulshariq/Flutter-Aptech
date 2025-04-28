import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// checked animation

class CheckedAnimation extends StatelessWidget {
  const CheckedAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Lottie.asset(
          'assets/animations/checked.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

// music animation

class MusicAnimation extends StatelessWidget {
  const MusicAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animations/music.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

//wrong things animation

class WrongThingsAnimation extends StatelessWidget {
  const WrongThingsAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animations/wrongthings.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

//loader animation

class LoaderAnimation extends StatelessWidget {
  const LoaderAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animations/loader.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

//bounce animation

class BounceAnimation extends StatelessWidget {
  const BounceAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animations/bounce.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
