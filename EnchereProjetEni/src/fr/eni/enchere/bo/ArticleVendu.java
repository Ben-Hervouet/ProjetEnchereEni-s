package fr.eni.enchere.bo;



import java.time.LocalDateTime;
import java.util.List;

public class ArticleVendu {

	private int idArticle;
	private String nomArticle;
	private String description;
	private LocalDateTime dateDebutEnchere;
	private LocalDateTime dateFinEnchere;
	private int prixInitial;
	private int prixVente;
	private boolean etatVente;
	private Retrait LieuRetrait;
	private Categorie categorie;	
	private int idCategorie;
	private Utilisateur vendeur;
	private int idUtilisateur;

	private List<Utilisateur> listeUtilisateur;
	private List<Retrait> listeRetrait;
	private List<Categorie> listeCategorie;


	public ArticleVendu() {
		// TODO Auto-generated constructor stub
	}
	
	public ArticleVendu(int idArticle, String nomArticle, String categorie, String description, int prixVente, LocalDateTime dateDebutEnchere,
			LocalDateTime dateFinEnchere, Retrait LieuRetrait) {
		super();
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.dateDebutEnchere = dateDebutEnchere;
		this.dateFinEnchere = dateFinEnchere;
		this.LieuRetrait = LieuRetrait;
	}
	
	public ArticleVendu(int idArticle, String nomArticle, String description, LocalDateTime dateDebutEnchere,
			LocalDateTime dateFinEnchere, int prixInitial, int prixVente, boolean etatVente, Categorie categorie,
			Utilisateur utilisateur, Enchere enchere) {
		super();
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.dateDebutEnchere = dateDebutEnchere;
		this.dateFinEnchere = dateFinEnchere;
		this.prixInitial = prixInitial;
		this.prixVente = prixVente;
		this.etatVente = etatVente;
	}
	
	

	public ArticleVendu(int idArticle, String nomArticle, String description, LocalDateTime dateDebutEnchere,
			LocalDateTime dateFinEnchere, int prixInitial, int prixVente, int idUtilisateur, int idCategorie) {
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.dateDebutEnchere = dateDebutEnchere;
		this.dateFinEnchere = dateFinEnchere;
		this.prixInitial = prixInitial;
		this.prixVente = prixVente;
		this.idUtilisateur = idUtilisateur;
	}



	public List<Utilisateur> getListeUtilisateur() {
		return listeUtilisateur;
	}

	public void setListeUtilisateur(List<Utilisateur> listeUtilisateur) {
		this.listeUtilisateur = listeUtilisateur;
	}

	public List<Retrait> getListeRetrait() {
		return listeRetrait;
	}


	public void setListeRetrait(List<Retrait> listeRetrait) {
		this.listeRetrait = listeRetrait;
	}

	public List<Categorie> getListeCategorie() {
		return listeCategorie;
	}

	public void setListeCategorie(List<Categorie> listeCategorie) {
		this.listeCategorie = listeCategorie;
	}

	public int getIdCategorie() {
		return idCategorie;
	}

	public void setIdCategorie(int idCategorie) {
		this.idCategorie = idCategorie;
	}

	public int getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(int idArticle) {
		this.idArticle = idArticle;
	}

	public String getNomArticle() {
		return nomArticle;
	}

	public void setNomArticle(String nomArticle) {
		this.nomArticle = nomArticle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDateTime getDateDebutEnchere() {
		return dateDebutEnchere;
	}

	public void setDateDebutEnchere(LocalDateTime dateDebutEnchere) {
		this.dateDebutEnchere = dateDebutEnchere;
	}

	public LocalDateTime getDateFinEnchere() {
		return dateFinEnchere;
	}

	public void setDateFinEnchere(LocalDateTime dateFinEnchere) {
		this.dateFinEnchere = dateFinEnchere;
	}

	public int getPrixInitial() {
		return prixInitial;
	}

	public void setPrixInitial(int prixInitial) {
		this.prixInitial = prixInitial;
	}

	public int getPrixVente() {
		return prixVente;
	}

	public void setPrixVente(int prixVente) {
		this.prixVente = prixVente;
	}

	public boolean isEtatVente() {
		return etatVente;
	}

	public void setEtatVente(boolean etatVente) {
		this.etatVente = etatVente;
	}

	public Retrait getLieuRetrait() {
		return LieuRetrait;
	}

	public void setLieuRetrait(Retrait lieuRetrait) {
		LieuRetrait = lieuRetrait;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	/**
	 * @return the idUtilisateur
	 */
	public int getIdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(int idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public Utilisateur getVendeur() {
		return vendeur;
	}

	public void setVendeur(Utilisateur vendeur) {
		this.vendeur = vendeur;
	}

	@Override
	public String toString() {
		return "Article{" + "idArticle=" + idArticle + ", nomArticle='" + nomArticle + '\'' + ", description='"
				+ description + '\'' + ", dateDebutEnchere=" + dateDebutEnchere + ", dateFinEnchere=" + dateFinEnchere
				+ ", prixInitial=" + prixInitial + ", prixVente=" + prixVente + ", etatVente=" + etatVente + '}';
	}

}