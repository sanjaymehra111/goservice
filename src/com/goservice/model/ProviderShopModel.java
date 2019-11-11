package com.goservice.model;
//import javax.persistance.Entity;

/*import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;
*/
import lombok.Data;
@Data

/*@Entity
@Table(name="service_provider_shop_details")
@NamedStoredProcedureQueries({
@NamedStoredProcedureQuery(name="shop_details_sp", procedureName="shop_details"), 
@NamedStoredProcedureQuery(name="shop_detailsById",procedureName="shop_detailsById", parameters= 
{@StoredProcedureParameter(mode=ParameterMode.IN, name="id", type=String.class)})})
*/	
public class ProviderShopModel {
		
	String shop_id;
	String provider_id;	
	String provider_shop_name;
	String provider_shop_contact;
	String provider_shop_email;
	String provider_shop_address;
	String provider_car_service;
	String provider_bike_service;
	String provider_shop_created;
	String provider_shop_image;
	String provider_shop_latitude;
	String provider_shop_longitude;
	String provider_shop_status;
	
	public ProviderShopModel(){}
	
}
