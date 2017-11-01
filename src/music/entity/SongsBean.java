package music.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="mysongs")
public class SongsBean implements Serializable {

	private static final long serialVersionUID = 1L;





	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SEQ")
	@SequenceGenerator(name="SEQ",sequenceName="sngno",allocationSize=1,initialValue=125)
	private int no;

	
	
	String songname;
	String singer;
	String movie;
	float duration;
	int popularSongs=0;
	
	String url;
	/*String singer1="Aniruth";
	
	public String getSinger1() {
		return singer1;
	}
	public void setSinger1(String singer1) {
		this.singer1 = singer1;
	}*/
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	/*String searchHint;
	
	
	
	public String getSearchHint() {
		return searchHint;
	}
	public void setSearchHint(String searchHint) {
		this.searchHint = searchHint;
	}*/
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSongname() {
		return songname;
	}
	public void setSongname(String songname) {
		this.songname = songname;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getMovie() {
		return movie;
	}
	public void setMovie(String movie) {
		this.movie = movie;
	}
	public float getDuration() {
		return duration;
	}
	public void setDuration(float duration) {
		this.duration = duration;
	}
	public int getPopularSongs() {
		return popularSongs;
	}
	public void setPopularSongs(int popularSongs) {
		this.popularSongs = popularSongs;
	}
	
	
	
	
	

	
	
	
	
}
