
public class Wahlanalyse_Main {

	@SuppressWarnings("static-access")
	public static void main(String[] args) {
		CSVRead csvr = new CSVRead();
		csvr.einlesen();
//		csvr.arrayAusgeben();
		Visualisierung_der_eingelesenen_Daten.main(args);

	}

}
