package fizzbuzz.demo.fizzbuzz;

import android.support.test.rule.ActivityTestRule;

import org.junit.Rule;
import org.junit.Test;

import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.junit.Assert.*;

public class MainActivityTest {


    @Rule
    public ActivityTestRule<MainActivity> activityTestRule = new ActivityTestRule(MainActivity.class);

    @Test
    public void start_new_game_should_score_is_0() {
        onView(withId(R.id.score)).check(matches(withText("0")));
    }


    @Test
    public void play_with_number_should_score_is_1() {
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.score)).check(matches(withText("1")));
    }

    @Test
    public void play_with_fizz_should_score_is_3() {
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.score)).check(matches(withText("3")));
    }

    @Test
    public void play_with_fizz_after_fizz_should_score_is_3() {
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.score)).check(matches(withText("3")));
    }

    @Test
    public void play_with_buzz_should_score_is_5() {
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.buzzButton)).perform(click());
        onView(withId(R.id.score)).check(matches(withText("5")));
    }

    @Test
    public void play_with_fizzbuzz_should_score_is_15() {
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.buzzButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.buzzButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.numberButton)).perform(click());
        onView(withId(R.id.fizzBuzzButton)).perform(click());
        onView(withId(R.id.score)).check(matches(withText("15")));
    }

}