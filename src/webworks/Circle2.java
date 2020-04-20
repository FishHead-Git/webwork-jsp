package webworks;

public class Circle2 {
	private double radius;
	private double c;
	private double area;

	public double getC() {
		c = Math.PI * 2 * radius;
		return c;
	}

	public void setC(double c) {
		this.c = c;
	}

	public double getArea() {
		area = Math.PI * radius * radius;
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}
	
	
}
