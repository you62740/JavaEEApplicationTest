package com.sdzee.forms;

import javax.servlet.http.HttpServletRequest;

public class ConnectionForm {

	private String resultat;
	
	public void verifierIdentifiants(HttpServletRequest request){
		String login= request.getParameter("login");
		String psswd= request.getParameter("psswd");
		
		if (psswd.equals(login+"123")){
			resultat="vous etes bien connectés!";
		}
		else{
			resultat="votre login ou mt de passe incorrectes!";
		}
		
	}

	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
}
