import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.stage.Stage;

public class Visualisierung_der_eingelesenen_Daten extends  Application{

	@Override
	public void start(Stage primaryStage) throws Exception {
		
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Parteien"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Stimmenanteil in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Ergebnise der EU Wahl in Niederösterreich");
        
        XYChart.Series<String, Number> series = new BarChart.Series<>();
        
        Scene scene = new Scene(barChart, 800, 600);

        CSVRead.einlesen();
        for (int Zeilen = 1; Zeilen < CSVRead.anzahlZeilen; Zeilen = Zeilen + 1) {

        	
        	
			primaryStage.setScene(scene);
			primaryStage.show();
        	
        	
        }
    
	}
	
	public static void main(String[] args) {
		launch(args);
	}

}
