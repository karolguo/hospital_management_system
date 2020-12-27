package cn.eleven.service.impl;

import cn.eleven.mapper.NewsMapper;
import cn.eleven.pojo.News;
import cn.eleven.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewServiceImpl implements NewService {
    @Autowired
    NewsMapper newsMapper;
    //查找所有新闻标题
    @Override
    public List<News> findAllNewTitle() {
        System.out.println("service的news是"+newsMapper.findAllNewTitle());
        return newsMapper.findAllNewTitle();
    }
    //根据ID查询新闻
    @Override
    public List<News> findNewsById(int newsId) {
        return newsMapper.findNewsById(newsId);
    }
}
