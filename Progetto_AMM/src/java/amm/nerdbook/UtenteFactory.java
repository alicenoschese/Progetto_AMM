/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook;

import java.util.ArrayList;
/**
 *
 * @author nosch_000
 */
public class UtenteFactory {
    
    private static UtenteFactory singleton;

    public static UtenteFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteFactory();
        }
        return singleton;
    }
    
    private ArrayList<Utente> listaUtenti= new ArrayList<Utente>();
    
    private UtenteFactory(){
        //creazione utenti
        
        //Mary Posa
        Utente utente1=new Utente();
        utente1.setId(0);
        utente1.setNome("Mary Posa");
        utente1.setEmail("maryposa@gmail.com");
        utente1.setSesso("Femmina");
        utente1.setPassword("farfalla");
        utente1.setUrlFotoProfilo("img/butterfly-icon.png");
        
        //Ken
        Utente utente2=new Utente();
        utente2.setId(1);
        utente2.setNome("Ken");
        utente2.setEmail("ilguerriero@gmail.com");
        utente2.setSesso("Maschio");
        utente2.setPassword("sonoforte");
        utente2.setUrlFotoProfilo("img/ken.jpg");
        
        //Dottor Zoidberg
        Utente utente3=new Utente();
        utente3.setId(2);
        utente3.setNome("Dottor Zoidberg");
        utente3.setEmail("zoidberg@gmail.com");
        utente3.setSesso("Maschio");
        utente3.setPassword("futurama");
        utente3.setUrlFotoProfilo("img/zoidberg.png");
        
        listaUtenti.add(utente1);
        listaUtenti.add(utente2);
        listaUtenti.add(utente3);
    
    }
    public Utente getUtenteById(int id) {
        for (Utente utente : this.listaUtenti) {
            if (utente.getId() == id) {
                return utente;
            }
        }
        return null;
    }
}
