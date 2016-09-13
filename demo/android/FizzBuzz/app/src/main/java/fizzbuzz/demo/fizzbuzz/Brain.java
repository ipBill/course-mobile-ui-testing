package fizzbuzz.demo.fizzbuzz;


public class Brain {

    public Move check(int number) {
        Move result = Move.Number;
        if(isFizzBuzz(number)) {
            result = Move.FizzBuzz;
        } else if(isFizz(number)) {
            result = Move.Fizz;
        } else if(isBuzz(number)) {
            result = Move.Buzz;
        }
        return  result;
    }

    private boolean isFizz(int number) {
        return number%3 ==0;
    }

    private boolean isBuzz(int number) {
        return number%5 ==0;
    }

    private boolean isFizzBuzz(int number) {
        return number%15 ==0;
    }

}

