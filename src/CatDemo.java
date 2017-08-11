
public class CatDemo {
	public static void main(String[] args) {
		/* Do the following things without changing the Cat class */
		Cat billy = new Cat("billy");
		// 1. Make the Cat meow
		billy.meow();
		// 2. Get the Cat to print it's name
		billy.printName();
		// 3. Kill the Cat!
		for (int i = 0; i < 10; i++) {
			billy.kill();
		}
	}
}
