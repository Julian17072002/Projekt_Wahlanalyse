
import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
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
        
        for (int spalte = 6; spalte <= 30; spalte = spalte + 3) {
        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[4][spalte + 1]);
        	double stimmenanteil = Double.parseDouble(s); 
        	String x = CSVRead.arr[2][spalte];
        	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, stimmenanteil);
	    	series1.getData().add(data);
        }
        
		HBox root = new HBox();
		barChart.getData().add(series1);
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
	
	    XYChart.Series<String, Number> series2 = new XYChart.Series<>();
	    series2.setName("Verluste in %");
	
	    for (int spalte = 6; spalte <= 30; spalte = spalte + 3) {
        	String s = CSVRead.replaceStrangeChars(CSVRead.arr[4][spalte + 2]);
        	double gewinnverlust = Double.parseDouble(s); 
        	String x = CSVRead.arr[2][spalte];
        	XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, gewinnverlust);
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
