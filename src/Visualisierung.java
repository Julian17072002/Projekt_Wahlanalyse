
import javafx.application.Application;
import javafx.collections.*;
import javafx.scene.*;
import javafx.scene.chart.*;
import javafx.stage.Stage;

public class Visualisierung extends  Application{

	@Override
	public void start( Stage stage ) {
	  CategoryAxis xAxis = new CategoryAxis();
	  xAxis.setLabel( "Parteien" );

	  NumberAxis yAxis = new NumberAxis( "Stimmenanteil in %",
	                                     0        /* untere Grenze */,
	                                     50 /* obere Grenze */,
	                                     10 /* tickUnit */ );

	  @SuppressWarnings("unchecked")
	ObservableList<XYChart.Data<String,Number>> series
	      = FXCollections.observableArrayList(
	         new XYChart.Data<String,Number>( "ÖVP", 32,96 ),
	         new XYChart.Data<String,Number>( "SPÖ", 22,99 ),
	         new XYChart.Data<String,Number>( "FPÖ", 19,01 ),
	         new XYChart.Data<String,Number>( "NEOS", 7,43 ),
	         new XYChart.Data<String,Number>( "GRÜNE", 11,17 ),
	         new XYChart.Data<String,Number>( "BZÖ", 0,35 ),
	         new XYChart.Data<String,Number>( "REKOS", 1,16 ),
	         new XYChart.Data<String,Number>( "ANDERE", 1,69 ),
	         new XYChart.Data<String,Number>( "EUSTOP", 3,25 )
	      );

	  ObservableList<XYChart.Series<String,Number>> data =
	       FXCollections.observableArrayList();
	  data.add( new BarChart.Series<>( series ) );

	  BarChart<String,Number> chart = new BarChart<>( xAxis, yAxis );
	  chart.setTitle( "Ergebnise der EU Wahl in Niederösterreich" );
	  chart.setData( data );

	  stage.setScene( new Scene( new Group( chart ), 500, 400 ) );
	  stage.show();
	}
}	