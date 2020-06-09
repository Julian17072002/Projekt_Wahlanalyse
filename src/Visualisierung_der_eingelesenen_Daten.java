
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.stage.Stage;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.layout.HBox;
//import javafx.scene.chart.XYChart.Series;

public class Visualisierung_der_eingelesenen_Daten extends  Application{
	
	@Override	
	public void start(Stage primaryStage) {
		
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Parteien"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Stimmenanteil in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Ergebnise der EU Wahl in Niederösterreich");
        
        XYChart.Series<String, Number> series = new XYChart.Series<>();
        
        CSVRead.einlesen();
//        series.getData().add(new XYChart.Data<String, Number>(getWert(CSVRead.arr[0][1]),getWert1(CSVRead.arr[1][1])));
        
//        XYChart.Series<String, Number> seriesOEVP = new XYChart.Series<String, Number>();
        
        for (int zeilen = 40; zeilen <= CSVRead.anzahlZeilen; zeilen = zeilen + 24) {
        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeilen][1]);
        	double stimmenanteil = Double.parseDouble(s); 
        	String x = CSVRead.arr[zeilen][2];
        	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
	    	series.getData().add(data);
        }
        
		HBox root = new HBox();
		Scene scene = new Scene(root, 550, 600);
        
		barChart.getData().add(series);
		root.getChildren().add(barChart);
		primaryStage.setTitle("Ergebnisse der EU Wahl in Niederösterreich");
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	

//	private Series<String, Number> create(Series<String, Number> series, int zeilen) {
//		CSVRead.einlesen();
//		series.getData().add(new XYChart.Data(getWert(CSVRead.arr[1][8]),getWert(CSVRead.arr[1][10])));
//		return series;
//	}
	
//	private String getWert(String string) {
//		String Wert = null;
//		Wert = Integer.parseInt(string);
//		return Wert;
//	}
//
//	private String getWert(String string) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	private Number getWert1(String string) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	public static void main(String args[]) {
		launch(args);
	}

}
