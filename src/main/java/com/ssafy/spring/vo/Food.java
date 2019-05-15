package com.ssafy.spring.vo;

/** 식품 정보 */
public class Food {
	/**식품을 구별하는 코드 */
	protected int food_code;
	/**식품 이름*/
	protected String food_name;
	
	/**일회 제공 량*/
	protected double serving_wt;
	
	/**일회 제공되는 칼로리*/
	protected double nutr_cont1;
	/**일회 제공되는 탄수화물*/
	protected double nutr_cont2;
	/**일회 제공되는 단백질*/
	protected double nutr_cont3;
	/**일회 제공되는 지방*/
	protected double nutr_cont4;
	/**일회 제공되는 당류*/
	protected double nutr_cont5;
	/**일회 제공되는 나트륨*/
	protected double nutr_cont6;
	/**일회 제공되는 콜레스테롤*/
	protected double nutr_cont7;
	/**일회 제공되는 포화지방산*/
	protected double nutr_cont8;
	/**일회 제공되는 트렌스지방*/
	protected double nutr_cont9;
	/**제조사*/
	protected String food_maker;
	/**원료*/
	protected String food_material;
	/**이미지 경로*/
	protected String food_image;
	protected String food_allergy;
	protected int food_count;
	
	
	public Food() {	}

	public Food(int food_code, String food_name, double serving_wt, double nutr_cont1, double nutr_cont2,
			double nutr_cont3, double nutr_cont4, double nutr_cont5, double nutr_cont6, double nutr_cont7,
			double nutr_cont8, double nutr_cont9, String food_maker, String food_material, String food_image,
			String food_allergy, int food_count) {
		super();
		this.food_code = food_code;
		this.food_name = food_name;
		this.serving_wt = serving_wt;
		this.nutr_cont1 = nutr_cont1;
		this.nutr_cont2 = nutr_cont2;
		this.nutr_cont3 = nutr_cont3;
		this.nutr_cont4 = nutr_cont4;
		this.nutr_cont5 = nutr_cont5;
		this.nutr_cont6 = nutr_cont6;
		this.nutr_cont7 = nutr_cont7;
		this.nutr_cont8 = nutr_cont8;
		this.nutr_cont9 = nutr_cont9;
		this.food_maker = food_maker;
		this.food_material = food_material;
		this.food_image = food_image;
		this.food_allergy = food_allergy;
		this.food_count = food_count;
	}

	
	public int getFood_code() {
		return food_code;
	}

	public void setFood_code(int food_code) {
		this.food_code = food_code;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public double getServing_wt() {
		return serving_wt;
	}

	public void setServing_wt(double serving_wt) {
		this.serving_wt = serving_wt;
	}

	public double getNutr_cont1() {
		return nutr_cont1;
	}

	public void setNutr_cont1(double nutr_cont1) {
		this.nutr_cont1 = nutr_cont1;
	}

	public double getNutr_cont2() {
		return nutr_cont2;
	}

	public void setNutr_cont2(double nutr_cont2) {
		this.nutr_cont2 = nutr_cont2;
	}

	public double getNutr_cont3() {
		return nutr_cont3;
	}

	public void setNutr_cont3(double nutr_cont3) {
		this.nutr_cont3 = nutr_cont3;
	}

	public double getNutr_cont4() {
		return nutr_cont4;
	}

	public void setNutr_cont4(double nutr_cont4) {
		this.nutr_cont4 = nutr_cont4;
	}

	public double getNutr_cont5() {
		return nutr_cont5;
	}

	public void setNutr_cont5(double nutr_cont5) {
		this.nutr_cont5 = nutr_cont5;
	}

	public double getNutr_cont6() {
		return nutr_cont6;
	}

	public void setNutr_cont6(double nutr_cont6) {
		this.nutr_cont6 = nutr_cont6;
	}

	public double getNutr_cont7() {
		return nutr_cont7;
	}

	public void setNutr_cont7(double nutr_cont7) {
		this.nutr_cont7 = nutr_cont7;
	}

	public double getNutr_cont8() {
		return nutr_cont8;
	}

	public void setNutr_cont8(double nutr_cont8) {
		this.nutr_cont8 = nutr_cont8;
	}

	public double getNutr_cont9() {
		return nutr_cont9;
	}

	public void setNutr_cont9(double nutr_cont9) {
		this.nutr_cont9 = nutr_cont9;
	}

	public String getFood_maker() {
		return food_maker;
	}

	public void setFood_maker(String food_maker) {
		this.food_maker = food_maker;
	}

	public String getFood_material() {
		return food_material;
	}

	public void setFood_material(String food_material) {
		this.food_material = food_material;
	}

	public String getFood_image() {
		return food_image;
	}

	public void setFood_image(String food_image) {
		this.food_image = food_image;
	}

	public String getFood_allergy() {
		return food_allergy;
	}

	public void setFood_allergy(String food_allergy) {
		this.food_allergy = food_allergy;
	}
	
	public int getFood_count() {
		return food_count;
	}

	public void setFood_count(int food_count) {
		this.food_count = food_count;
	}

	
	@Override
	public String toString() {
		return "Food [food_code=" + food_code + ", food_name=" + food_name + ", serving_wt=" + serving_wt
				+ ", nutr_cont1=" + nutr_cont1 + ", nutr_cont2=" + nutr_cont2 + ", nutr_cont3=" + nutr_cont3
				+ ", nutr_cont4=" + nutr_cont4 + ", nutr_cont5=" + nutr_cont5 + ", nutr_cont6=" + nutr_cont6
				+ ", nutr_cont7=" + nutr_cont7 + ", nutr_cont8=" + nutr_cont8 + ", nutr_cont9=" + nutr_cont9
				+ ", food_maker=" + food_maker + ", food_material=" + food_material + ", food_image=" + food_image
				+ ", food_allergy=" + food_allergy + ", food_count=" + food_count + "]";
	}
	
}
