
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.stage.Stage;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.scene.layout.HBox;

public class Visualisierung_vergleich_zur_letzten_Wahl extends  Application{
	
	@Override	
	public void start(Stage primaryStage) {
		
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Parteien"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Stimmenanteil in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Ergebnise der EU Wahl in Niederösterreich");
        
        XYChart.Series<String, Number> series1 = new XYChart.Series<>();
        series1.setName("Stimmenanteil in %");
        
        CSVRead.einlesen();
//        series.getData().add(new XYChart.Data<String, Number>(getWert(CSVRead.arr[0][1]),getWert1(CSVRead.arr[1][1])));
        
//        XYChart.Series<String, Number> seriesOEVP = new XYChart.Series<String, Number>();
        
        for (int zeilen = 40; zeilen <= CSVRead.anzahlZeilen; zeilen = zeilen + 24) {
        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeilen][1]);
        	double stimmenanteil = Double.parseDouble(s); 
        	String x = CSVRead.arr[zeilen][2];
        	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
	    	series1.getData().add(data);
        }
        
		HBox root = new HBox();
		Scene scene = new Scene(root, 550, 600);
        
		barChart.getData().add(series1);
		root.getChildren().add(barChart);
		primaryStage.setTitle("Ergebnisse der EU Wahl in Niederösterreich");
		primaryStage.setScene(scene);
		primaryStage.show();
	
	    XYChart.Series<String, Number> series2 = new XYChart.Series<>();
	    series2.setName("Verluste in %");
	
	    for (int zeilen = 48; zeilen <= CSVRead.anzahlZeilen; zeilen = zeilen + 24) {
	    	String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeilen][1]);
	    	double stimmenanteil = Double.parseDouble(s); 
	    	String x = CSVRead.arr[zeilen][2];
	    	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
	    	series2.getData().add(data);
	    }
	    
	    
		barChart.getData().add(series2);
		primaryStage.setTitle("Ergebnisse der EU Wahl in Niederösterreich");
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	

	public static void main(String args[]) {
		launch(args);
	}

}
