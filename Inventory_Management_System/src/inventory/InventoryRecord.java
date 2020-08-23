package inventory;


public class InventoryRecord {
	public int PID;
	public String PROD_NAME;
	public int PROD_QTY;
	public int PROD_COST;
	public int getPID() {
		return PID;
	}
	public void setPID(int pID) {
		PID = pID;
	}
	public String getPROD_NAME() {
		return PROD_NAME;
	}
	public void setPROD_NAME(String pROD_NAME) {
		PROD_NAME = pROD_NAME;
	}
	public int getPROD_QTY() {
		return PROD_QTY;
	}
	public void setPROD_QTY(int pROD_QTY) {
		PROD_QTY = pROD_QTY;
	}
	public int getPROD_COST() {
		return PROD_COST;
	}
	public void setPROD_COST(int pROD_COST) {
		PROD_COST = pROD_COST;
	}

}
