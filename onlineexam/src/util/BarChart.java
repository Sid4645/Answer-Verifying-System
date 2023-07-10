package util;

import java.awt.Color;
import java.awt.GradientPaint;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.ui.ApplicationFrame;

import bean.ChartData;

public class BarChart
  extends ApplicationFrame
{
  String path;
  private static final long serialVersionUID = 1L;
  
  public BarChart(String title)
  {
    super(title);
    path = title;
  }
  CategoryDataset createDataset(double[] chart)
  {
    DefaultCategoryDataset dataset = new DefaultCategoryDataset();
    dataset.addValue(chart[0], "EXT" ,"EXT");
    dataset.addValue(chart[1], "NEU" ,"NEU");
    dataset.addValue(chart[2], "AGR" ,"AGR");
    dataset.addValue(chart[3], "CON" ,"CON");
    dataset.addValue(chart[4], "OPN" ,"OPN");
    return dataset;
  }
  


  public void createChart(double[] chart, String dname)
  {
    JFreeChart chart1 = ChartFactory.createBarChart(
      dname, 
      "Emotion Type", 
      "Value", 
      createDataset(chart), 
      PlotOrientation.VERTICAL, 
      true, 
      true, 
      false);
    




    chart1.setBackgroundPaint(Color.white);
    

    CategoryPlot plot = chart1.getCategoryPlot();
    plot.setBackgroundPaint(Color.lightGray);
    plot.setDomainGridlinePaint(Color.white);
    plot.setRangeGridlinePaint(Color.white);
    

    NumberAxis rangeAxis = (NumberAxis)plot.getRangeAxis();
   // plot.setRangeCrosshairVisible(true);
   // plot.setDomainCrosshairVisible(true);
    rangeAxis.setStandardTickUnits(NumberAxis.createIntegerTickUnits());
    

    BarRenderer renderer = (BarRenderer)plot.getRenderer();
    renderer.setDrawBarOutline(false);
    

    GradientPaint gp0 = new GradientPaint(
      0.0F, 0.0F, Color.magenta, 
      0.0F, 0.0F, Color.lightGray);
    
    GradientPaint gp1 = new GradientPaint(
      0.0F, 0.0F, Color.green, 
      0.0F, 0.0F, Color.lightGray);
    
    GradientPaint gp2 = new GradientPaint(
      0.0F, 0.0F, Color.red, 
      0.0F, 0.0F, Color.lightGray);
    
    renderer.setSeriesPaint(0, gp0);
    renderer.setSeriesPaint(1, gp1);
    renderer.setSeriesPaint(2, gp2);
    
    CategoryAxis domainAxis = plot.getDomainAxis();
    domainAxis.setCategoryLabelPositions(
      CategoryLabelPositions.createUpRotationLabelPositions(0.5235987755982988D));
    

    System.out.println(path);
    File BarChart = new File(path + "BarChart.jpeg");
    try {
      ChartUtilities.saveChartAsJPEG(BarChart, chart1, 500, 500);
    }
    catch (IOException e) {
      e.printStackTrace();
    }
  }
}
