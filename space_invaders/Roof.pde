public class Roof {
	private static final int NUM_PIXELS = 170;
	private static final int PIXEL_SIZE = 4;

	private int posX;
	private int posY;
	private Rectangle[] rectangles;

	/**
	   Construct a Roof object with the given X and Y cordinates.

	   @param x the X cordinate of the upper-left corner of this Roof.
	   @param y the Y cordinate of the upper-left corner of this Roof.
	 */
	public Roof(int x, int y) {
		this.posX = x;
		this.posY = y;
		this.rectangles = new Rectangle[NUM_PIXELS];
		this.setRectangles();
	}

	/**
	   Construct all of the rectangles to draw this Roof
	 */
	private void setRectangles() {
		rectMode(CORNERS);
		int index = 0;

		// First Row
		for(int i = 0; i < 10; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (3 * PIXEL_SIZE)),
				posY,
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}

		// Second Row
		for(int i = 0; i < 12; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (2 * PIXEL_SIZE)),
				posY + PIXEL_SIZE,
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}

		// Third Row
		for(int i = 0; i < 14; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + PIXEL_SIZE),
				posY + (2 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}

		// Middle
		for(int i = 0; i < 6; i++) {
			for(int k = 0; k < 16; k++){
				this.rectangles[index] = new Rectangle(
				posX + (k * PIXEL_SIZE),
				posY + (i * PIXEL_SIZE + (3 * PIXEL_SIZE)),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

				index++;
			}
		}

		// Bottom part
		// --Left bottom
		for(int i = 0; i < 6; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE),
				posY + (9 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 5; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE),
				posY + (10 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 4; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE),
				posY + (11 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 4; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE),
				posY + (12 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}

		// --Right bottom
		for(int i = 0; i < 6; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (10 * PIXEL_SIZE)),
				posY + (9 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 5; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (11 * PIXEL_SIZE)),
				posY + (10 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 4; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (12 * PIXEL_SIZE)),
				posY + (11 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
		for(int i = 0; i < 4; i++) {
			this.rectangles[index] = new Rectangle(
				posX + (i * PIXEL_SIZE + (12 * PIXEL_SIZE)),
				posY + (12 * PIXEL_SIZE),
				PIXEL_SIZE,
				PIXEL_SIZE
			);

			index++;
		}
	}

	/**
	   Draw this roof
	 */
	public void render() {
		for(int i = 0; i < NUM_PIXELS; i++){
			this.rectangles[i].render();
		}
	}

	/**
	   Return the X cordinate of the upper-left corner of this Roof

	   @return x cordinate of this Roof
	 */
	public int getX() {
		return this.posX;
	}

	/**
	   Return the Y cordinate of the upper-left corner of this Roof

	   @return y cordinate of this Roof
	 */
	public int getY() {
		return this.posY;
	}

	/**
	   Return the array that contains all of the Rectangles making up this Roof

	   @return all Rectangles in this Roof
	 */
	public Rectangle[] getRectangles() {
		return this.rectangles;
	}
}
