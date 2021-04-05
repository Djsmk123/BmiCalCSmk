import 'constants.dart';
double bmi=0;
void bmiReturn(){
  bmi=(weight*10000)/(height*height);
  if(bmi<18.5)
    {
      category='UNDERWEIGHT';
      msg='Your are underweight!!,you may not be eating enough healthy foods with key nutrients to fuel your body.';
    }
  else if(bmi<24.9 && bmi>18.5)
    {
      category='NORMAL';
      msg='Congratulations!! Your are Normal.';
    }
  else if(bmi<29.9 && bmi>24.9) {
    category = 'OVERWEIGHT';
    msg = 'Your are overweight.Take care of your diet and do exercise.';
  }
    else if(bmi>29.9)
    {
      category='OBESE';
      msg='Your BMI is to high.You should contact to doctor .It may lead to you serious health problems.';
    }
}
