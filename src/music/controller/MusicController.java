package music.controller;

import java.util.List;

import music.entity.MusicBean;
import music.entity.SongsBean;
import music.service.MusicService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class MusicController {

	@Autowired
	MusicService musicService;
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("musicBean") MusicBean musicBean,ModelMap model) {
		boolean isValidLogin=musicService.validate(musicBean);
		
		
		if(isValidLogin==true)
		{
		model.addAttribute("Status", "Logged in Successfully");
		return "test";
		}
		else{
			model.addAttribute("Status", "Sorry Login Failed..Please Check Your Username and Password");
            			return "index";
	}
		}

	
	
	@RequestMapping(value="/addSongs.do",method = RequestMethod.POST)
	public String addSongs(
			@ModelAttribute("song") SongsBean song,ModelMap model) {
		
		musicService.add(song);
		model.addAttribute("Status", "Your Song Added Successfully");
		return "test";
	}
	
	
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public ModelAndView searchSongs(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		List<SongsBean> list = musicService.search(song);
				model.addAttribute("list", list);
		return new ModelAndView("SearchedSongs", model);

	} 
	
	@RequestMapping(value = "/Lists.do", method = RequestMethod.GET)
	public ModelAndView viewSongs(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		List<SongsBean> list = musicService.view();
				model.addAttribute("list", list);
		return new ModelAndView("SongsList", model);

	}
	@RequestMapping(value = "/singer.do", method = RequestMethod.GET)
	public ModelAndView viewSongsBySinger(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Aniruth");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	
	@RequestMapping(value = "/yuvan.do", method = RequestMethod.GET)
	public ModelAndView viewSongsByYuvan(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Yuvan");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	@RequestMapping(value = "/ar.do", method = RequestMethod.GET)
	public ModelAndView viewSongsByAr(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Arrahman");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	@RequestMapping(value = "/ghostle.do", method = RequestMethod.GET)
	public ModelAndView viewSongsByGhostle(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Ghostle");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	@RequestMapping(value = "/diwakar.do", method = RequestMethod.GET)
	public ModelAndView viewSongsByDiwakar(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Diwakar");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	@RequestMapping(value = "/priyanka.do", method = RequestMethod.GET)
	public ModelAndView viewSongsByPriyanka(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		song.setSinger("Priyanka");
		List<SongsBean> list = musicService.singer(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
	@RequestMapping(value = "/popular.do", method = RequestMethod.GET)
	public ModelAndView viewPopularSongs(
			@ModelAttribute("song") SongsBean song,ModelMap model)  {
		List<SongsBean> list = musicService.popular(song);
				model.addAttribute("list", list);
		return new ModelAndView("Singers", model);
	}
}
