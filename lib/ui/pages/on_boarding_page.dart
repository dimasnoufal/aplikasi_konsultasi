import 'package:aplikasi_konsultasi/bloc/export.dart';
import 'package:aplikasi_konsultasi/shared/string.dart';
import 'package:aplikasi_konsultasi/shared/theme.dart';
import 'package:aplikasi_konsultasi/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SliderBloc sliderB = context.read<SliderBloc>();
    CarouselSliderController carouselController = CarouselSliderController();

    Widget onBoadingImageSLider() {
      return CarouselSlider(
        items: [
          Image.asset(
            'assets/on_boarding/on_boarding1.png',
            width: 200,
            height: 200,
          ),
          Image.asset(
            'assets/on_boarding/on_boarding2.png',
            width: 225,
            height: 225,
          ),
          Image.asset(
            'assets/on_boarding/on_boarding3.png',
            width: 200,
            height: 200,
          ),
        ],
        options: CarouselOptions(
          height: 250,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) {
            sliderB.add(UpdateSliderIndex(index));
          },
        ),
        carouselController: carouselController,
      );
    }

    Widget onBoardingInformation() {
      return BlocBuilder<SliderBloc, SliderState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultHorizontalMargin),
            child: Column(
              children: [
                Text(
                  titlesOnBoarding[state.pageIndex],
                  style: darkGreyTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: defaultVerticalMargin,
                ),
                Text(
                  descriptionsOnBoarding[state.pageIndex],
                  style: lightGreyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      );
    }

    Widget onboardingIndicator() {
      Widget IndicatorOnboarding(index) {
        return BlocBuilder<SliderBloc, SliderState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                carouselController.animateToPage(index);
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: state.pageIndex == index ? kPrimaryColor : kWhiteColor,
                  border: state.pageIndex != index
                      ? Border.all(color: kPrimaryColor)
                      : null,
                ),
              ),
            );
          },
        );
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndicatorOnboarding(0),
          IndicatorOnboarding(1),
          IndicatorOnboarding(2),
        ],
      );
    }

    Widget onboardingNavigation() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state.pageIndex == 2,
                child: Opacity(
                  opacity: state.pageIndex == 2 ? 0.0 : 1.0,
                  child: CustomButton(
                    text: 'Skip',
                    width: 100,
                    height: 40,
                    onPressed: () {
                      carouselController.animateToPage(2);
                    },
                  ),
                ),
              );
            },
          ),
          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              if (state.pageIndex == 2) {
                return CustomButton(
                  text: 'Get Started',
                  width: 125,
                  height: 40,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/login');
                  },
                );
              } else {
                return IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                    color: kPrimaryColor,
                  ),
                  iconSize: 50,
                  onPressed: () {
                    carouselController.nextPage();
                  },
                );
              }
            },
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              onBoadingImageSLider(),
              SizedBox(
                height: defaultVerticalMargin,
              ),
              onBoardingInformation(),
              SizedBox(
                height: defaultVerticalMargin,
              ),
              onboardingIndicator(),
              SizedBox(
                height: 100,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: defaultVerticalMargin),
            alignment: Alignment.bottomCenter,
            child: onboardingNavigation(),
          ),
        ],
      )),
    );
  }
}
