import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testingexample1/TimeHelper.dart';


main() {  
  group("TimeHelper", () {
    group("getTimeOfTheDat", () {
      test("Time helper should return night ", () {
        //Arrange
        DateTime currentTime = DateTime(2020, 1, 1, 5);
        // Act
        String timeToDate = TimeHelper.getTimeOfTheDay(currentTime);
        // Assert

        expect(timeToDate, "Night");
      });
      test("Time helper should return Morning ", () {
        //Arrange
        DateTime currentTime = DateTime(2020, 1, 1, 8);
        // Act
        String timeToDate = TimeHelper.getTimeOfTheDay(currentTime);
        // Assert

        expect(timeToDate, "Morning");
      });

      test("Time helper should return Afternoon", () {
        //Arange
        DateTime currnetTime = DateTime(2020, 1, 1, 16);
        //Act
        String timeToDate = TimeHelper.getTimeOfTheDay(currnetTime);
        // Assert
        expect(timeToDate, "Afternoon");
      });

      test('Time Helper should return Evening', () {
        // Arrange
        DateTime currentTime = DateTime(2020, 1, 1, 19);
        //Act
        String timeToDate = TimeHelper.getTimeOfTheDay(currentTime);
        //Assert

        expect(timeToDate, "Evening");
      });
    });
  });
}
