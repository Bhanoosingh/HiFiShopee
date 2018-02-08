package com.shoppingbackend.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shoppingbackend.dao.SupplierDAO;
import com.shoppingbackend.model.Supplier;

public class SupplierTestCase {

	private static AnnotationConfigApplicationContext context;
	private static SupplierDAO supplierDAO;
	private Supplier supplier = null;
	
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.shoppingbackend");
		context.refresh();
		
		supplierDAO = (SupplierDAO) context.getBean("supplierDAO");
	}

	@Test
	public void testAddSupplier() {
		supplier=new Supplier();
		
		supplier.setSupplierName("Bhanoo");
		
		// add the supplier
				assertEquals("Failed to add the supplier!", true, supplierDAO.insertSupp(supplier));	
	}
	@Ignore
	@Test
	public void testUpdateSupplier() {
		supplier=new Supplier();
		supplier.setSid(1);
		supplier.setSupplierName("Bhanoo Singh");
		
		// update the supplier
				assertEquals("Failed to update the supplier!", true, supplierDAO.updateSupp(supplier));	
	}
	@Ignore
	@Test
	public void testDeleteSupplier() {
		
		
		// delete the supplier
				assertEquals("Failed to delete the supplier!", true, supplierDAO.deleteSupp(1));	
	}

}
