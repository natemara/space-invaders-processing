public class Invader {
	private final int MOVE_FACTOR = 3;
	private final int LEVEL = 10;

	private int posX;
	private int posY;
	private int originX;
	private int originY;
	private boolean alive = true;
	private boolean moveRight = true;

	/**
	   A single "space invader" object
	   @param posX the the left bound of this invader
	   @param posY the right bound of this invader
	 */
	public Invader(int posX, int posY) {
		this.posX = posX;
		this.posY = posY;
		this.originX = posX;
		this.originY = posY;
	}

	/**
	   Draw this space invader
	 */
	public void render() {
		if (this.alive) {
			rect(this.posX, this.posY + 5, 28, 8);
			rect(this.posX, this.posY, 12, 16);
			rect(this.posX - 12, this.posY + 10, 4, 4);
			rect(this.posX + 12, this.posY + 10, 4, 4);
			rect(this.posX - 6, this.posY + 14, 8, 4);
			rect(this.posX + 6, this.posY + 14, 8, 4);
			rect(this.posX - 8, this.posY - 10, 4, 4);
			rect(this.posX + 8, this.posY - 10, 4, 4);
			rect(this.posX - 12, this.posY - 14, 4, 4);
			rect(this.posX + 12, this.posY - 14, 4, 4);
			rect(this.posX - 10, this.posY - 6, 8, 4);
			rect(this.posX + 10, this.posY - 6, 8, 4);
			rect(this.posX - 12, this.posY - 1, 4, 6);
			rect(this.posX + 12, this.posY - 1, 4, 6);
			rect(this.posX - 16, this.posY - 0, 4, 8);
			rect(this.posX + 16, this.posY - 0, 4, 8);
			rect(this.posX - 20, this.posY + 6, 4, 12);
			rect(this.posX + 20, this.posY + 6, 4, 12);
		}
	}

	/**
	   Reset the position of this invader to its original position
	 */
	private void reset() {
		this.posX = this.originX;
		this.posY = this.originY;
	}

	/**
	   sets the life status to false
	 */
	public void kill() {
		this.alive = false;
	}

	/**
	   Reverse the direction of this space invader
	 */
	public void flip() {
		this.moveRight = !this.moveRight;
	}

	/**
	   Update the location of this space invader
	 */
	public void update() {
		if (this.moveRight) {
			this.posX += MOVE_FACTOR;
		} else {
			this.posX -= MOVE_FACTOR;
		}
	}

	/**
	   Increment the Y cordinate of this Invader by LEVEL
	 */
	public void downLevel() {
		this.posY += LEVEL;
	}

	/**
	   Return the alive status of this Invader

	   @return alive status of this Invader
	 */
	public boolean isAlive() {
		return this.alive;
	}

	/**
	   Reset the position of this Invader and bring it back to life
	 */
	public void resurrect() {
		this.reset();
		this.alive = true;
	}

	/**
	   Return the X cordinate of the center of this invader

	   @return X cordinate of this invader
	 */
	public int getX() {
		return this.posX;
	}

	/**
	   Return the Y cordinate of the center of this invader

	   @return Y cordinate of this invader
	 */
	public int getY() {
		return this.posY;
	}

}
