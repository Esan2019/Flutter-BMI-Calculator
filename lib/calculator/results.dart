enum Result {
  SEVERELY_UNDERWEIGHT,
  UNDERWEIGHT,
  NORMAL,
  OVERWEIGHT,
  OBESE_CLASS_1,
  OBESE_CLASS_2,
  OBESE_CLASS_3
}

Result getResult(var bmi) {
  if (bmi < 17.0) {
    return Result.SEVERELY_UNDERWEIGHT;
  } else if (bmi >= 17 && bmi <= 18.49) {
    return Result.UNDERWEIGHT;
  } else if (bmi >= 18.50 && bmi <= 24.99) {
    return Result.NORMAL;
  } else if (bmi >= 25 && bmi <= 29.99) {
    return Result.OVERWEIGHT;
  } else if (bmi >= 30.0 && bmi <= 34.99) {
    return Result.OBESE_CLASS_1;
  } else if (bmi >= 35.0 && bmi <= 39.99) {
    return Result.OBESE_CLASS_2;
  } else {
    return Result.OBESE_CLASS_3;
  }
}