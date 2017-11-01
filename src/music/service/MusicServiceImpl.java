package music.service;

import java.util.List;

import music.entity.MusicBean;
import music.entity.SongsBean;
import music.repository.MusicRepository;
import music.repository.SongsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class MusicServiceImpl implements MusicService {
@Autowired
MusicRepository musicRepository;

@Autowired
SongsRepository songsRepository;

@Override
public SongsBean add(SongsBean song) {
	System.out.println(song.getDuration()+" "+ song.getMovie()+ " " + song.getNo() + " " +song.getPopularSongs() + " " + song.getSinger() + " " +song.getSongname());
	//SongsBean result=songsRepository.save(song);
	SongsBean resu = songsRepository.save(song);
	return resu;
}

@Override
public boolean validate(MusicBean musicBean) {
	
	boolean isValid=false;
    List<MusicBean> loginDetail= musicRepository.findAll(); 
	for(int i=0;i<loginDetail.size();i++) {
if(loginDetail.get(i).getUserName().contentEquals(musicBean.getUserName()) && loginDetail.get(i).getPassword().contains(musicBean.getPassword()) ) 
{ isValid=true; 
} 
}
	return isValid;
	


}



@Override
public List<SongsBean> search(SongsBean song) {
	List<SongsBean> songsList=songsRepository.findBySongnameStartingWithOrSingerStartingWithOrMovieStartingWith(song.getSongname(),
			song.getSongname(),song.getSongname());
	
	/*System.out.println("songsList=============="+songsList);*/

	return songsList;
}

@Override
public List<SongsBean> view() {
	// TODO Auto-generated method stub
	
	List<SongsBean> songsList=songsRepository.findAll();
	/*for(int i=0;i<songsList.size();i++) {
System.out.println(songsList.get(i).getSongname()+"  "+songsList.get(i).getUrl());
	}*/
	return songsList;
}

@Override
public List<SongsBean> singer(SongsBean song) {
	// TODO Auto-generated method stub
	
	List<SongsBean> songsBySinger=songsRepository.findBysingerContaining(song.getSinger());
	/*for(int i=0;i<songsBySinger.size();i++) {
		System.out.println(songsBySinger.get(i).getSongname()+"  "+songsBySinger.get(i).getSinger()+" "+songsBySinger.get(i).getUrl());
			}*/
	return songsBySinger;
}

@Override
public List<SongsBean> popular(SongsBean song) {
	// TODO Auto-generated method stub
		System.out.println("dghoaeghoi");
	List<SongsBean> popularSongs=songsRepository.findByurl(song.getUrl());
	System.out.println("dghoaeghoi");

	for(int i=0;i<popularSongs.size();i++) {
		System.out.println(popularSongs.get(i).getSongname()+"  "+popularSongs.get(i).getPopularSongs()+" "+popularSongs.get(i).getUrl());
			}
	return null;
}




}








