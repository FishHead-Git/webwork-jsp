package webworks;

public class GuessNumber {

	private int answerRand = 0;
	private int numberMine = 0;
	private boolean resultBool = false;
	private String resultShow = "";
	private int countGuess = 0;
	
	private String factor(int n) {
		String msg = "(����"+n+"�������У���)";
		
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
		msg = "(����"+n+"�������У�"+msg+".)";
		
		return msg;
	}
	
	public int getAnswerRand() {
		return answerRand;
	}
	public void setAnswerRand(int answerRand) {
		this.answerRand = (int)(Math.random() * (21 - 2) + 2);
		System.out.println("�𰸣�"+this.answerRand);
		
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
			resultShow = "��ϲ���¶���";
			resultBool = true;
		}else if(numberMine > answerRand) {
			resultShow = "��´���";
			resultBool = false;
		}else {
			resultShow = "���С��";
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
