package webworks;

public class Lader {
	private double above;
	private double bottom;
	private double area;
	public double getAbove() {
		return above;
	}
	public void setAbove(double above) {
		this.above = above;
	}
	public double getBottom() {
		return bottom;
	}
	public void setBottom(double bottom) {
		this.bottom = bottom;
	}
	public double getArea() {
		this.area = (above + bottom)/2.0;
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	
	
}
