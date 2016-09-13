package fizzbuzz.demo.fizzbuzz;

import org.junit.Test;

import static org.junit.Assert.*;


public class GameTest {

    Game game = new Game();

    @Test
    public void start_new_game_should_score_is_0() {
        assertEquals(0, game.getScore());
    }

    @Test
    public void play_with_number_should_score_is_1() {
        game.play(Move.Number);
        assertEquals(1, game.getScore());
    }

    @Test
    public void play_with_fizz_should_score_is_0() {
        game.play(Move.Fizz);
        assertEquals(0, game.getScore());
    }

    @Test
    public void play_with_fizz_should_score_is_3() {
        game.play(Move.Number);
        game.play(Move.Number);
        game.play(Move.Fizz);
        assertEquals(3, game.getScore());
    }

    @Test
    public void play_with_buzz_should_score_is_5() {
        game.setScore(4);
        game.play(Move.Buzz);
        assertEquals(5, game.getScore());
    }

}