import java.util.ArrayList;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {
        Album album = new Album();
        Author author = new Author();
        Quote quote = new Quote();
        Quote quote2 = new Quote();

        album.setId(1);
        album.setArtist("artist1");
        album.setNameOfAlbum("nameofalbum1");
        album.setSales(199293888);
        album.setGenre("genre1");
        album.setReleaseDate(2222);

        author.setId(1);
        author.setFirstName("first");
        author.setLastName("last");

        quote.setId(1);
        quote.setAuthor("author");
        quote.setAuthorId(1);
        quote.setContent("asdf asdf asdf asdf");

        quote2.setId(2);
        quote2.setAuthor("author2");
        quote2.setAuthorId(2);
        quote2.setContent("asdf asdf asdf asdf");

        List<Quote> quotes = new ArrayList<>();
        quotes.add(quote);
        quotes.add(quote2);

        for(int i = 0; i<quotes.size(); i++){
            System.out.println(quotes[i].getArtist()); //<--this does not work but this is the idea
        }
    }
}
