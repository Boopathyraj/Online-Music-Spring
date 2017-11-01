package music.repository;

import java.util.List;

import music.entity.SongsBean;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SongsRepository extends JpaRepository<SongsBean, Integer> {

	List<SongsBean> findBysingerContaining(String singer);

	List<SongsBean> findBySongnameStartingWithOrSingerStartingWithOrMovieStartingWith(
			String songname, String songname2, String songname3);

	List<SongsBean> findByurl(String url);

}
