import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class CSVRead {
	public static String [][] arr;
 	public static int anzahlZeilen = 12;
 	public static int anzahlSpalten = 33;
 	public static String filelocation= "C:\\Users\\julia\\Desktop\\Privat\\workspace\\Projekt_Wahlanalyse\\Wahl_Daten.csv";
 	public static String InputLine = "";
 	private static Scanner sc;

	
	static void einlesen() {
		arr = new String [anzahlZeilen][anzahlSpalten];
		sc = new Scanner(System.in);
		int zeilen = 0;
		
		try {
			sc = new Scanner (new BufferedReader(new FileReader(filelocation))); // file wird angelegt
			
			while (sc.hasNextLine()) {
				InputLine = sc.nextLine();
				String[] inArr = InputLine.split(";");
				for (int i = 0; i < inArr.length; i++) {
					arr[zeilen][i] = inArr[i];
				}
				zeilen++;
			}
		} 
		catch (Exception e) {
			System.out.println("!!!Error!!!");
		}
	}
	
	public static void arrayAusgeben() {
		for (int zeilen = 0; zeilen < anzahlZeilen; zeilen++) {
			for (int spalten = 0; spalten < anzahlSpalten; spalten++) {
				System.out.println(arr[zeilen][spalten]);
			}
		}
	}
	

}