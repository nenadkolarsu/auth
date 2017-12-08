package com.hellokoding.auth.service;

import java.util.List;

import com.hellokoding.auth.model.Artikli;



public interface ArtikliService {
			
    void save(Artikli artikli);

    Artikli findByName(String username);
    
    Artikli findByOne(Long id);
    
    void delete(Long id);

	public List<Artikli> getAllArtikli();

}
