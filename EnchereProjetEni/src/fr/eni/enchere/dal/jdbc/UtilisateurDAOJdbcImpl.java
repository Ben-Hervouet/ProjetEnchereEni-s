package fr.eni.enchere.dal.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fr.eni.enchere.bo.Utilisateur;
import fr.eni.enchere.dal.DALException;
import fr.eni.enchere.dal.UtilisateurDAO;

public class UtilisateurDAOJdbcImpl implements UtilisateurDAO {

	private final static String RECHERCHER = "select * from UTILISATEURS where pseudo = ? and mot_de_passe = ?;";
	private final static String INSERT_USER = "INSERT INTO UTILISATEURS(pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, administrateur) VALUES(?,?,?,?,?,?,?,?,?,?)";
	private static final String SELECT_USER_BY_ID = "SELECT no_utilisateur, pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit FROM UTILISATEURS WHERE no_utilisateur=?";
	private static final String UPDATE_USER = "UPDATE UTILISATEURS SET pseudo= ?, email=?, telephone=?, rue=?, code_postal=?, ville=?, mot_de_passe=?, credit=? WHERE no_utilisateur=?";
	private static final String DELETE_USER = "DELETE FROM UTILISATEURS WHERE no_utilisateur=?";
	private static final String SELECT_BY_PSEUDO = "SELECT * FROM UTILISATEURS WHERE pseudo = ?";
	private static final String SELECT_ALL = "SELECT * FROM UTILISATEURS";
	
	public UtilisateurDAOJdbcImpl() {

	}
	
	 public List<Utilisateur> selectAll() throws DALException {
		 
		 List<Utilisateur> utilisateurs = new ArrayList<>();
	       
		 try {Connection cnx = ConnectionProvider.getConnection();
	       
	        
	            Statement stmt = cnx.createStatement();
	     
	            stmt.execute(SELECT_ALL);
	            ResultSet rs = stmt.getResultSet();
	            while (rs.next()) {
	                utilisateurs.add(maps(rs));
	            }
	            cnx.close();
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
			 throw new DALException(e.getMessage());
		 }
	        return utilisateurs;
	    }
	
	
	public Utilisateur selectUtilisateurByPseudo(String pseudo) throws DALException {
		Utilisateur utilisateur = null;
		
			 try{Connection cnx = ConnectionProvider.getConnection();
			
        
            PreparedStatement stmt = cnx.prepareStatement(SELECT_BY_PSEUDO);
            stmt.setString(1, pseudo);
            stmt.execute();
            ResultSet rs = stmt.getResultSet();
            if (rs.next()) {
                utilisateur = maps(rs);
            }
            cnx.close();
			 }
			 
			 catch (SQLException e) {
				 e.printStackTrace();
				 throw new DALException(e.getMessage());
			 }
        
        return utilisateur;
    }
	public Utilisateur rechercher(String pseudo, String motDePasse) throws DALException {
		
		Connection cnx=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Utilisateur user = new Utilisateur();
		 
		try {
			cnx= ConnectionProvider.getConnection();
			pstmt=cnx.prepareStatement(RECHERCHER);
			pstmt.setString(1, pseudo);
			pstmt.setString(2, motDePasse);
			rs=pstmt.executeQuery();
		if (rs.next()){
			rs.getString("pseudo");
			user.setPseudo(rs.getString("pseudo"));
			rs.getString("motDePasse");
			user.setMotDePasse(rs.getString("motDePasse"));
			rs.getString("nom");
			user.setNom(rs.getString("nom"));
			rs.getString("prenom");
			user.setPrenom(rs.getString("prenom"));
			rs.getString("email");
			user.setEmail(rs.getString("email"));
			rs.getString("telephone");
			user.setTelephone(rs.getString("telephone"));
			rs.getString("rue");
			user.setRue(rs.getString("rue"));
			rs.getString("codePostal");
			user.setCodePostal(rs.getString("codePostal"));
			rs.getString("ville");
			user.setVille(rs.getString("ville"));
			rs.getInt("Credit");
			user.setCredit(Integer.parseInt(rs.getString("Credit")));
		}
		} catch (SQLException e) {
			
				throw new DALException ("Probleme - rechercherUtilisateur - " + e.getMessage());
		
		}finally{
			try{
				if (pstmt!=null) pstmt.close();
				if (cnx!=null) cnx.close();
			} catch (SQLException e) {
					throw new DALException ("Probleme - FermerConnexion - " + e.getMessage());
			}

		}
		return user;
		
	}
	
	

	@Override // Création d'un nouvel utilisateur
	public void insert(Utilisateur ajoutUtilisateur) throws DALException {

		try (Connection cnx = ConnectionProvider.getConnection()) {
			// Statement.RETURN_GENERATED_KEYS -> permet de r�cup�rer les cl�s primaires
			// g�n�r�es pendant la requ�te
			PreparedStatement pStmt = cnx.prepareStatement(INSERT_USER, Statement.RETURN_GENERATED_KEYS);
			pStmt.setString(1, ajoutUtilisateur.getPseudo());
			pStmt.setString(2, ajoutUtilisateur.getNom());
			pStmt.setString(3, ajoutUtilisateur.getPrenom());
			pStmt.setString(4, ajoutUtilisateur.getEmail());
			pStmt.setString(5, ajoutUtilisateur.getTelephone());
			pStmt.setString(6, ajoutUtilisateur.getRue());
			pStmt.setString(7, ajoutUtilisateur.getCodePostal());
			pStmt.setString(8, ajoutUtilisateur.getVille());
			pStmt.setString(9, ajoutUtilisateur.getMotDePasse());
			pStmt.setBoolean(10, ajoutUtilisateur.isAdministrateur());

			pStmt.executeUpdate();

			ResultSet rs = pStmt.getGeneratedKeys();
			if (rs.next()) {
				int idUtilisateur = rs.getInt(1); // 1 : premi�re colonne du r�sultat (qui n'en contient qu'une)
				ajoutUtilisateur.setIdUtilisateur(idUtilisateur);
			}

			cnx.close();

		} catch (SQLException e) {
			e.printStackTrace();
			throw new DALException(e.getMessage());
		}

	}

	@Override // Selection d'un utilisateur par son Id
	public Utilisateur selectById(int idUtilisateur) throws DALException {
		Utilisateur utilisateur = null;

		try (Connection cnx = ConnectionProvider.getConnection()) {

			PreparedStatement pStmt = cnx.prepareStatement(SELECT_USER_BY_ID);
			pStmt.setInt(1, idUtilisateur);

			pStmt.executeQuery();

			cnx.close();

		} catch (SQLException e) {
			e.printStackTrace();
			throw new DALException(e.getMessage());
		}

		return utilisateur;
	}

	@Override // Mise à jour d'un utilisateur
	public void update(Utilisateur MajUtilisateur) throws DALException {
		// TODO Auto-generated method stub
		try (Connection cnx = ConnectionProvider.getConnection()) {
			PreparedStatement pStmt = cnx.prepareStatement(UPDATE_USER);
			pStmt.setString(1, MajUtilisateur.getPseudo());
			pStmt.setString(2, MajUtilisateur.getNom());
			pStmt.setString(3, MajUtilisateur.getPrenom());
			pStmt.setString(4, MajUtilisateur.getEmail());
			pStmt.setString(5, MajUtilisateur.getTelephone());
			pStmt.setString(6, MajUtilisateur.getRue());
			pStmt.setString(7, MajUtilisateur.getCodePostal());
			pStmt.setString(8, MajUtilisateur.getVille());
			pStmt.setString(9, MajUtilisateur.getMotDePasse());

			pStmt.setInt(8, MajUtilisateur.getIdUtilisateur());

			pStmt.executeUpdate();

			cnx.close();

		} catch (SQLException e) {
			e.printStackTrace();
			throw new DALException(e.getMessage());
		}

	}

	@Override
	public void delete(int idUtilisateur) throws DALException {
		// Obtenir une connexion
		Connection cnx = ConnectionProvider.getConnection();

		// Obtient une objet de commande (Statement) = ordre SQL
		try {

			// Paramétrer l'objet de commande

			PreparedStatement pStmt = cnx.prepareStatement(DELETE_USER);

			pStmt.setInt(1, idUtilisateur);

			// Execute l'ordre SQL
			pStmt.executeUpdate();

			cnx.close();

		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}

	}
	
	   private Utilisateur maps(ResultSet rs) throws SQLException {
	        return new Utilisateur(
	                rs.getInt("idUtilisateur"),
	                rs.getString("pseudo"),
	                rs.getString("nom"),
	                rs.getString("prenom"),
	                rs.getString("email"),
	                rs.getString("telephone"),
	                rs.getString("rue"),
	                rs.getString("codePostal"),
	                rs.getString("ville"),
	                rs.getString("motDePasse"),
	                rs.getInt("credit"),
	                rs.getBoolean("administrateur")
	        );
	    }

}
