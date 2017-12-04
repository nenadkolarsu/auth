package com.hellokoding.auth.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.json.JSONArray;
import org.json.JSONObject;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="vrste_magacina")
public class VrsteMagacina implements Serializable {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id; 
    private String name;
	private Date timestamp;
	private boolean aktivan;
    
    @OneToMany(mappedBy = "vrsteMagacina", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Fetch (FetchMode.SELECT)
    @JsonManagedReference
    private Set<Magacini> magacini;
    
    public VrsteMagacina(){
    }
    
    public VrsteMagacina(String name){
    	this.name = name;
    }
    
    // name
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
  
    
    public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public boolean isAktivan() {
		return aktivan;
	}

	public void setAktivan(boolean aktivan) {
		this.aktivan = aktivan;
	}

	// warehouse
    public void setMagacini(Set<Magacini> magacini){
    	this.magacini = magacini;
    }
    
    public Set<Magacini> getMagacini(){
    	return this.magacini;
    }
    
    public String toString(){
    	String info = "";
        JSONObject jsonInfo = new JSONObject();
        jsonInfo.put("name",this.name);
        
        JSONArray productArray = new JSONArray();
        if(this.magacini != null){
//            this.products.forEach(product->{
//                JSONObject subJson = new JSONObject();
//                subJson.put("name", product.getName());
//                productArray.put(subJson);
//            });
        }
        jsonInfo.put("products", productArray);
        info = jsonInfo.toString();
        return info;
    }
}
