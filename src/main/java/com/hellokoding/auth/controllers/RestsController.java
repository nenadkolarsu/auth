package com.hellokoding.auth.controllers;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.hellokoding.auth.model.VrsteArtikala;
import com.hellokoding.auth.model.VrstePaleta;
import com.hellokoding.auth.service.VrsteArtikalaService;
import com.hellokoding.auth.service.VrstePaletaService;

@RestController
public class RestsController {
	
	@Autowired
	private VrstePaletaService vrstePaletaService;
	@Autowired
	private VrsteArtikalaService vrsteArtikalaService;
	
	@RequestMapping(path="/vrstepaleta", method=RequestMethod.GET)
	public List<VrstePaleta> getAllPalletsTypes(){
		
		List<VrstePaleta> aa = vrstePaletaService.getAllVrstePaleta();
	
		 for (Iterator iterator = aa.iterator(); iterator.hasNext();) {
			VrstePaleta vrstePaleta = (VrstePaleta) iterator.next();
			vrstePaleta.setAkcija("<a href=\"update-vrste-paleta.html?id=" + vrstePaleta.getUid() + "\"> " + "<i class=\"fa fa-pencil-square-o edit-delete-icon\"></i> </a> "
					+ "            <a href=\"delete-vrste-paleta.html?id=" + vrstePaleta.getUid() + "\" Onclick=\"return ConfirmDelete();\"> " + "<i class=\"fa fa-trash-o edit-delete-icon\"></i> </a>");
		}

		return aa; 
	}
	
	@RequestMapping(path="/vrsteartikala", method=RequestMethod.GET)
	public List<VrsteArtikala> getJsonArticlesTypes(){
		
		List<VrsteArtikala> aa = vrsteArtikalaService.getAllVrsteArtikala();
	
		 for (Iterator iterator = aa.iterator(); iterator.hasNext();) {
			VrsteArtikala vrsteArtikala = (VrsteArtikala) iterator.next();
			vrsteArtikala.setAkcija("<a href=\"update-vrste-artikala.html?id=" + vrsteArtikala.getId() + "\"> " + "<i class=\"fa fa-pencil-square-o edit-delete-icon\"></i> </a> "
					+ "            <a href=\"delete-vrste-artikala.html?id=" + vrsteArtikala.getId() + "\" Onclick=\"return ConfirmDelete();\"> " + "<i class=\"fa fa-trash-o edit-delete-icon\"></i> </a>");
		}

		return aa; 
	}


}
