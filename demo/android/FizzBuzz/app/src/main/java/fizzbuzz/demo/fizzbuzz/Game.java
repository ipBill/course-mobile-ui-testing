package fizzbuzz.demo.fizzbuzz;

public class Game {

    private int score = 0;

    public boolean play(Move currentMove) {
        Brain brain = new Brain();
        Move nextMove = brain.check(score+1);
        if(currentMove == nextMove) {
            score++;
            return true;
        }
        return false;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}
