package com.shoppingbackend.dao;

import com.shoppingbackend.model.Supplier;

public interface SupplierDAO {
	public boolean insertSupp(Supplier supplier);
	public boolean updateSupp(Supplier supplier);
	public boolean deleteSupp(int sid);
	
	//To select single supplier by id
	public Supplier getSupplierById(int sid);

}
