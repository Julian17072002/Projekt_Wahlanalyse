package Wahl_Daten.csv;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.ArrayIndexOutOfBoundsException;

	public class CSVReader {

	    public static void main(String[]args) {

	        String csvFile = "/Users/julia/Desktop/Privat/workspace/Projekt_Wahlanalyse/Wahl_Daten.csv"; 
	        BufferedReader br = null;
	        String line = "";
	        String cvsSplitBy = ",";

	        try {

	            br = new BufferedReader(new FileReader(csvFile));
	            while ((line = br.readLine()) != null) {

	               //use comma as separator
	                String[]Bezeichnung = line.split(cvsSplitBy);

	                System.out.println("Bezeichnung[code= " + Bezeichnung[4]+ " , name=" + Bezeichnung[5]+ "]");

	            }

	        } catch (FileNotFoundException e) {
	            e.printStackTrace();
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	          catch (ArrayIndexOutOfBoundsException e) {
	        	  e.printStackTrace();
	        } finally {
	            if (br != null) {
	                try {
	                    br.close();
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }

	    }
	}

