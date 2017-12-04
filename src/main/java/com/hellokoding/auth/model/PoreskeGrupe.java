package com.hellokoding.auth.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
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
@Table(name="poreske_grupe")
public class PoreskeGrupe implements Serializable {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id; 
    private String name;
    private String code;
    private String remark;
	private String akcija;
	private Date timestamp;
	private boolean aktivan;
    
    @OneToMany(mappedBy = "poreskeGrupe", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @Fetch (FetchMode.SELECT)
    @JsonManagedReference
    private Set<Artikli> artikli;
    
    public PoreskeGrupe(){
    }
    
    public PoreskeGrupe(String name){
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
    
    public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getAkcija() {
		return akcija;
	}

	public void setAkcija(String akcija) {
		this.akcija = akcija;
	}
	
	@Column(name="timestamp", columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	
	@Column(columnDefinition="tinyint(1) default 1")
	public boolean isAktivan() {
		return aktivan;
	}

	public void setAktivan(boolean aktivan) {
		this.aktivan = aktivan;
	}

	// articles
    public void setArtikli(Set<Artikli> artikli){
    	this.artikli = artikli;
    }
    
    public Set<Artikli> getArtikli(){
    	return this.artikli;
    }

	@Override
	public String toString() {
		return "PoreskeGrupe [id=" + id + ", name=" + name + ", artikli=" + artikli + "]";
	}
    
//    public String toString(){
//    	String info = "";
//        JSONObject jsonInfo = new JSONObject();
//        jsonInfo.put("name",this.name);
//        
//        JSONArray productArray = new JSONArray();
//        if(this. != null){
//            this.artikli.forEach(artikli->{
//                JSONObject subJson = new JSONObject();
//                subJson.put("name", artikli.getName());
//                artikliArray.put(subJson);
//            });
//        }
//        jsonInfo.put("artikli", artikliArray);
//        info = jsonInfo.toString();
//        return info;
//    }
    
    
    
}
