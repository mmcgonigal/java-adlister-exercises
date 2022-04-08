import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable {
    private String artist;
    private String name;
    private Date release_date;
    private double sales;
    private String genre;

    public String getArtist(){
        return artist;
    }
    public  void setArtist(String artist){
        this.artist = artist;
    }

    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public Date getRelease_date(){
        return release_date;
    }
    public void setRelease_date(Date release_date){
        this.release_date = release_date;
    }
    public double getSales(){
        return sales;
    }
    public void setSales(double sales){
        this.sales=sales;
    }
    public String getGenre(){
        return genre;
    }
    public void setGenre(String genre){
        this.genre =genre;
    }
    public Album(){}


}
