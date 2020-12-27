package cn.eleven.controller;

import cn.eleven.pojo.News;
import cn.eleven.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class NewController {
    @Autowired
    NewService newService;
    @RequestMapping("/findAllNewsTitle")
    public String findAllNewsTitle(ModelMap map){
        List<News> allNewTitle = newService.findAllNewTitle();
        System.out.println("news是"+allNewTitle);
        StringBuffer sb = new StringBuffer();
        map.addAttribute("allNewTitle",allNewTitle);
        return "../../user/user_news";
    }
    @RequestMapping("/findNewsById")
    public String findNewsById(int newsId,ModelMap map){
        System.out.println("controller:"+newsId);
        List<News> news = newService.findNewsById(newsId);
        System.out.println("controller:"+news);
        map.addAttribute("news",news);
        return "../../user/user_detailed_news";
    }
}
