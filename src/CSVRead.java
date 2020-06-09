import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Scanner;

public class CSVRead {
	public static String [][] arr;
 	public static int anzahlZeilen = 0;
 	public static int anzahlSpalten = 0;
 	public static String filelocation= "C:\\Users\\julia\\Desktop\\Privat\\workspace\\Projekt_Wahlanalyse\\Wahl_Daten.csv";
 	public static String InputLine = "";
 	private static Scanner sc;

	
	static void einlesen() {
		getNumOfRowCol();
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
	
	static void getNumOfRowCol() {
		Scanner sc= null;
//		System.out.println("Anzahl an Zeilen und Spalten werden hier berechnet");
		try {
			sc = new Scanner(new BufferedReader(new FileReader(filelocation)));
			sc.useDelimiter(";");
			while (sc.hasNextLine()) {
				InputLine=sc.nextLine();
				String[] inArr = InputLine.split(";");
				CSVRead.anzahlZeilen++;
				CSVRead.anzahlSpalten = inArr.length;
			}
		} catch (Exception e ) {
			System.out.println(e);
		}
	}
	
	public static String replaceStrangeChars(String s) {
//		s = s.substring(1); //entfernt $-Zeichen
		s = s.replace(",", "."); //entfernt ,-Zeichen
		return s;
	}

}