import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.stage.Stage;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
//import javafx.scene.control.ProgressBar;
import javafx.scene.layout.HBox;
//import javafx.scene.chart.XYChart.Series;

public class Visualisierung_Wahlbeteiligung extends Application{

	@Override
	public void start(Stage primaryStage) {
		CategoryAxis  xAxis= new CategoryAxis ();
		xAxis.setLabel("Wahlkreise"); // Beschriftung der x Achse 

		NumberAxis yAxis= new NumberAxis();
		yAxis.setLabel("Wahlbeteiligung in %"); // Beschriftung der y Achse 

		BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
        barChart.setTitle("Wahlbeteiligung in den WK Niederösterreichs");
        
        XYChart.Series<String, Number> series = new XYChart.Series<>();
        series.setName("Wahlbeteiligung in %");
	
        CSVRead.einlesen();
        
//        for (int spalte = 3; spalte <= 3; spalte = spalte + 10) {
        	for (int zeile = 4; zeile <= 11; zeile++) {
		        String s = CSVRead.replaceStrangeChars(CSVRead.arr[zeile][3]);
		        double wahlbeteiligung = Double.parseDouble(s); 
		        String x = CSVRead.arr[zeile][1]; 	
			    XYChart.Data<String, Number> data = new BarChart.Data<>(""+x, wahlbeteiligung);
			    series.getData().add(data);
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
        
	
	public static void main(String[] args) {
		launch(args);

	}

}
