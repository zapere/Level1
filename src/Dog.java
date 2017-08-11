
public class Dog {
	public int x;
	private int y;
	Dog(int x, int y){
		this.x = x;
		this.y = y;
	}
	public void moveFoward(){
		System.out.println("move foward");
	}
	public void jump(){
		System.out.println("Jump!");
	}
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
}
