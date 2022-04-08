import java.io.Serializable;

public class Quote implements Serializable {
    private String content;
    private int author_id;

    public String getContent(){
        return content;
    }
    public void setContent(String content){
        this.content = content;
    }
    public int getAuthor_id(){
        return author_id;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public Quote(){};
}
