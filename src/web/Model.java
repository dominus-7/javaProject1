package web;

import java.io.Serializable;

public class Model implements Serializable {
	private double capital;
	private double taux;
	private int duree;
	double resultat;
	public Model() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Model(double capital, double taux, int duree, double resultat) {
		super();
		this.capital = capital;
		this.taux = taux;
		this.duree = duree;
		this.resultat = resultat;
	}
	public double getCapital() {
		return capital;
	}
	public void setCapital(double capital) {
		this.capital = capital;
	}
	public double getTaux() {
		return taux;
	}
	public void setTaux(double taux) {
		this.taux = taux;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	public double getResultat() {
		return resultat;
	}
	public void setResultat(double resultat) {
		this.resultat = resultat;
	}
	
	

}
