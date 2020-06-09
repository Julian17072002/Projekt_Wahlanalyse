
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.stage.Stage;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.layout.HBox;
//import javafx.scene.chart.XYChart.Series;

public class Visualisierung_Vergleich_der_Wahlkreise extends  Application{
	
	@Override	
	public void start(Stage primaryStage) {
		
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Parteien"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Stimmenanteil in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Ergebnise der EU Wahl in den Wahlkreisen Niederösterreichs");
        
        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName("Stimmenanteil in %");
        
        CSVRead.einlesen();
        
        for (int zeilen = 40; zeilen <= CSVRead.anzahlZeilen; zeilen = zeilen + 24) {
        	for (int i = 0; i < 9; i++) {
	        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeilen][1]);
	        	double stimmenanteil = Double.parseDouble(s); 
	        	String x = CSVRead.arr[zeilen][2];
	        	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
		    	series.getData().add(data);
        	}
        }
        
		HBox root = new HBox();
		Scene scene = new Scene(root, 1000, 600);
        
		barChart.getData().add(series);
		root.getChildren().add(barChart);
		primaryStage.setTitle("Ergebnisse der EU Wahl in Niederösterreich");
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	
	public static void main(String args[]) {
		launch(args);
	}

}
