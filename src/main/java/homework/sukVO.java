package homework;

public class sukVO {
	String product;
	int price;
	int su;
	int tot;
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	@Override
	public String toString() {
		return "sukVO [product=" + product + ", price=" + price + ", su=" + su + ", tot=" + tot + "]";
	}
	public sukVO(String product, int price, int su, int tot) {
		super();
		this.product = product;
		this.price = price;
		this.su = su;
		this.tot = tot;
	}
	
	
}
