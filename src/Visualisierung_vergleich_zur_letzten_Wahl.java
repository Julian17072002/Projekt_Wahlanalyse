import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.XYChart;
import javafx.stage.Stage;

public class Visualisierung_vergleich_zur_letzten_Wahl extends Application {
	
	 final static String a = "ÖVP";
	 final static String b = "SPÖ";
	 final static String c = "FPÖ";
	 final static String d = "NEOS";
	 final static String e = "GRÜNE";
	 final static String f = "BZÖ";
	 final static String g = "REKOS";
	 final static String h = "ANDERE";
	 final static String i = "EUSTOP";
	
	@Override
	public void start(Stage primaryStage) {
		
		final CategoryAxis xAxis = new CategoryAxis();
		final NumberAxis yAxis = new NumberAxis( "Stimmenanteil in %",
                  -10        /* untere Grenze */,
                  50 /* obere Grenze */,
                  10 /* tickUnit */ );
		final BarChart<String, Number> barChart = new BarChart<String, Number>(xAxis, yAxis);
		
		barChart.setTitle("Verbreitung");
	    xAxis.setLabel("Partein");
	    yAxis.setLabel("Verluste zur Vorwahl");
	    
	    XYChart.Series series1 = new XYChart.Series();
	    series1.setName("Stimmenanteil in %");
	    series1.getData().add(new XYChart.Data( a, 32,96));
	    series1.getData().add(new XYChart.Data( b, 22,99));
	    series1.getData().add(new XYChart.Data( c, 19,01));
	    series1.getData().add(new XYChart.Data( d, 7,43 ));
	    series1.getData().add(new XYChart.Data( e, 11,17));
	    series1.getData().add(new XYChart.Data( f, 0,35 ));
	    series1.getData().add(new XYChart.Data( g, 1,16 ));
	    series1.getData().add(new XYChart.Data( h, 1,69 ));
	    series1.getData().add(new XYChart.Data( i, 3,25 ));
	
	    XYChart.Series series2 = new XYChart.Series();
	    series2.setName("Stimmenunterschied zur letzten EU Wahl");
	    series2.getData().add(new XYChart.Data( a, -2,22));
	    series2.getData().add(new XYChart.Data( b, -0,23));
	    series2.getData().add(new XYChart.Data( c, 6,54 ));
	    series2.getData().add(new XYChart.Data( d, 7,43 ));
	    series2.getData().add(new XYChart.Data( e, 4,21 ));
	    series2.getData().add(new XYChart.Data( f, -2,54));
	    series2.getData().add(new XYChart.Data( g, 1,16 ));
	    series2.getData().add(new XYChart.Data( h, 1,69 ));
	    series2.getData().add(new XYChart.Data( i, 3,25 ));
	
	    Scene scene = new Scene(barChart, 1000, 700);
	    barChart.getData().addAll(series1, series2);
	
		primaryStage.setScene(scene);
		primaryStage.show();

	}
	
	public static void main(String[] args) {
		launch(args);
	}



}
