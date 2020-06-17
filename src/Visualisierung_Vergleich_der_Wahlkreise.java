
//import javax.swing.event.ChangeListener;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.stage.Stage;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
//import javafx.scene.control.ProgressBar;
import javafx.scene.layout.HBox;
//import javafx.scene.chart.XYChart.Series;

public class Visualisierung_Vergleich_der_Wahlkreise extends  Application{
	
	@Override	
	public void start(Stage primaryStage) {
		
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Wahlkreise"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Stimmenanteil in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Wahlergebniss der einzelnen Wahlkreise in Niederösterreich");
        
        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName("Stimmenanteil in %");
        
        CSVRead.einlesen();
        
        for (int spalte = 7; spalte <= 30; spalte = spalte + 3) {
        	for (int zeilen = 5; zeilen <= 11; zeilen++) {
	        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeilen][spalte]);
	        	double stimmenanteil = Double.parseDouble(s); 
	        	String x = CSVRead.arr[zeilen][1]; 	
		        XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
			    series.getData().add(data);
        	}
        }
 
		HBox root = new HBox();
		barChart.getData().add(series);
		root.getChildren().add(barChart);
		barChart.setPrefWidth(5);
		
		root.widthProperty().addListener(new ChangeListener<Number>() {
            @Override
            public void changed(ObservableValue<? extends Number> observable, Number oldValue, Number newValue) {
            	barChart.setMinWidth(root.getWidth());
            }
        });
		
		Scene scene = new Scene(root, 550, 600);

		primaryStage.setTitle("Ergebnisse der EU Wahl in Niederösterreich");
		primaryStage.setScene(scene);
		primaryStage.show();
	}
	
	public static void main(String args[]) {
		launch(args);
	}

}
