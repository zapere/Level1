
public class DogDemo {
	public static void main(String[] args) {
		Dog felix = new Dog(100, 200);
		felix.moveFoward();
		felix.jump();
		System.out.println("x = "+felix.x);
	}
}
