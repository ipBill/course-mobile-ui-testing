package fizzbuzz.demo.fizzbuzz;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    TextView scoreTextView;
    Game game;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        scoreTextView = (TextView) findViewById(R.id.score);
        game = new Game();
    }

    private void updateScore(Move nextMove) {
        game.play(nextMove);
        scoreTextView.setText(String.valueOf(game.getScore()));
    }

    public void pressNumber(View view) {
        updateScore(Move.Number);
    }

    public void pressFizz(View view) {
        updateScore(Move.Fizz);
    }

    public void pressBuzz(View view) {
        updateScore(Move.Buzz);
    }

    public void pressFizzBuzz(View view) {
        updateScore(Move.FizzBuzz);
    }
}
