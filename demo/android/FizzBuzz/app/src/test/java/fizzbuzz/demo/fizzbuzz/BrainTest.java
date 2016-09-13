package fizzbuzz.demo.fizzbuzz;

import org.junit.Test;

import static org.junit.Assert.*;

public class BrainTest {

    Brain brain = new Brain();

    @Test
    public void number() {
        assertEquals(Move.Number, brain.check(1));
        assertEquals(Move.Number, brain.check(2));
        assertEquals(Move.Number, brain.check(4));
        assertEquals(Move.Number, brain.check(7));
        assertEquals(Move.Number, brain.check(8));
        assertEquals(Move.Number, brain.check(11));
        assertEquals(Move.Number, brain.check(13));
        assertEquals(Move.Number, brain.check(14));
    }

    @Test
    public void fizz() {
        assertEquals(Move.Fizz, brain.check(3));
        assertEquals(Move.Fizz, brain.check(6));
        assertEquals(Move.Fizz, brain.check(9));
        assertEquals(Move.Fizz, brain.check(12));
    }

    @Test
    public void buzz() {
        assertEquals(Move.Buzz, brain.check(5));
        assertEquals(Move.Buzz, brain.check(10));
    }

    @Test
    public void fizzbuzz() {
        assertEquals(Move.FizzBuzz, brain.check(15));
        assertEquals(Move.FizzBuzz, brain.check(30));
    }



}