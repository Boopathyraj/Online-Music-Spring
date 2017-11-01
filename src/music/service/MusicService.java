package music.service;

import java.util.List;

import music.entity.MusicBean;
import music.entity.SongsBean;

public interface MusicService {

	SongsBean add(SongsBean song);

	boolean validate(MusicBean musicBean);

	

	List<SongsBean> search(SongsBean song);

	List<SongsBean> view();

	List<SongsBean> singer(SongsBean song);

	List<SongsBean> popular(SongsBean song);

	



	

  	/*String check(MusicBean musicBean);*/
	
}
