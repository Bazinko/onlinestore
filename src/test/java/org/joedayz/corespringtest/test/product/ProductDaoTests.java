package org.joedayz.corespringtest.test.product;


import org.joedayz.corespringtest.dao.ProductDao;
import org.joedayz.corespringtest.model.Product;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.*;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:org/joedayz/corespringtest/test/system-test-config.xml"})
public class ProductDaoTests {

	@Autowired
	private ProductDao productDao;
	
	@Test
	public void testGetProductsList(){
		
		List<Product> list = productDao.getProductsList(null);		
		assertNotNull(list);
	}
	
	@Test
	public void testIsRepeatDescription(){
		
		boolean isRepeatDescription = productDao.isRepeatDescription("  iPad Touch 32Gb   ", new Integer(1));
		assertEquals(false, isRepeatDescription);
	}

    @Test
    public void testGetCategoriesTypesList(){

        List<Product> list = productDao.getProductsList(null);
        assertNotNull(list);
    }

    @Test
    public void testGetProductById() {
        Product product = productDao.getProductById(1);
        assertNotNull(product);
    }

    @Test
    public void testDbConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" +
                "online", "root", "");

        PreparedStatement statement = con.prepareStatement("SELECT * from product");

        @SuppressWarnings("unused")
        ResultSet result = statement.executeQuery();
        assertNotNull(result);
    }
	
}
