package util;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import db.DAO;

public class ExcelConverter {
	public static void main(String[] args) {
		try {
			DAO d = new DAO();
			Connection conn = d.getConnection();
			FileInputStream fileInputStream = new FileInputStream("corejava.xls");
			HSSFWorkbook workbook = new HSSFWorkbook(fileInputStream);
			HSSFSheet worksheet = workbook.getSheet("Sheet1");
			int ii=0;
			for(int i=0;i<=154;i++){
			HSSFRow row1 = worksheet.getRow(i);
			HSSFCell cellA1 = row1.getCell((short) 0);
			String a1Val = cellA1.getStringCellValue();
			System.out.println("A1: " + a1Val);
			HSSFCell cellB1 = row1.getCell((short) 1);
			String b1Val = cellB1.getStringCellValue();
			System.out.println("B1: " + b1Val);
			HSSFCell cellC1 = row1.getCell((short) 2);
			String c1Val = cellC1.getStringCellValue();
			System.out.println("C1: " + c1Val);
			HSSFCell cellD1 = row1.getCell((short) 3);
			String d1Val = cellD1.getStringCellValue();
			System.out.println("D1: " + d1Val);
			HSSFCell cellE1 = row1.getCell((short) 4);
			String E1Val = cellE1.getStringCellValue();
			System.out.println("E1: " + E1Val);
			HSSFCell cellF1 = row1.getCell((short) 5);
			String F1Val = cellF1.getStringCellValue();
			System.out.println("F1: " + F1Val);
			
			
			
			
			String insertquery="insert into corejava values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt=null;
			try{
				pstmt=conn.prepareStatement(insertquery);;
				pstmt.setInt(1,ii++);
				pstmt.setString(2,a1Val);
				pstmt.setString(3,b1Val);
				pstmt.setString(4,c1Val);
				pstmt.setString(5,d1Val);
				pstmt.setString(6,E1Val);
				pstmt.setString(7,F1Val);
				
			
				
			 pstmt.executeUpdate();
			
			}catch(SQLException e){
				System.out.println(e);
			}
			
				
			
			
			
			
			 }
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
