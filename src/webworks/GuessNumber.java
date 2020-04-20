package webworks;

public class GuessNumber {

	private int answerRand = 0;
	private int numberMine = 0;
	private boolean resultBool = false;
	private String resultShow = "";
	private int countGuess = 0;
	
	private String factor(int n) {
		String msg = "(整数"+n+"的因数有：略)";
		
		if(n<1||n>20) {
			return msg;
		}
		
		msg = "";
		for(int i=1;i<=n;i++) {
			if(n%i==0) {
				msg += ", " + i;
			}
		}
		msg = msg.substring(2);
		msg = "(整数"+n+"的因数有："+msg+".)";
		
		return msg;
	}
	
	public int getAnswerRand() {
		return answerRand;
	}
	public void setAnswerRand(int answerRand) {
		this.answerRand = (int)(Math.random() * (21 - 2) + 2);
		System.out.println("答案："+this.answerRand);
		
		numberMine = 0;
		resultBool = false;
		resultShow = "";
		countGuess = 0;
	}
	public int getNumberMine() {
		return numberMine;
	}
	public void setNumberMine(int numberMine) {
		this.numberMine = numberMine;
		if(numberMine == answerRand) {
			resultShow = "恭喜，猜对了";
			resultBool = true;
		}else if(numberMine > answerRand) {
			resultShow = "你猜大了";
			resultBool = false;
		}else {
			resultShow = "你猜小了";
			resultBool = false;
		}
		
		countGuess++;
		resultShow += factor(numberMine);
	}
	public boolean isResultBool() {
		return resultBool;
	}
	public void setResultBool(boolean resultBool) {
		this.resultBool = resultBool;
	}
	public String getResultShow() {
		return resultShow;
	}
	public void setResultShow(String resultShow) {
		this.resultShow = resultShow;
	}
	public int getCountGuess() {
		return countGuess;
	}
	public void setCountGuess(int countGuess) {
		this.countGuess = countGuess;
	}
	
	
}
