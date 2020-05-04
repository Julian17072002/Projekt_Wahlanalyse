
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileRead {

	public static void main(String[] args) throws IOException{
		
		FileReader datei = new FileReader("Wahl_Daten.csv");

		char[] c = new char[10000];
		
		int zaehler = 0;
		
		while((zaehler = datei.read(c)) >= 0) {
			System.out.println("");
			System.out.println("Anzahl der Zeichen: " + zaehler);
			System.out.println("");
			System.out.println(c);
			
		}
	}

}
