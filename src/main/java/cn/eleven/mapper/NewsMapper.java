package cn.eleven.mapper;

import cn.eleven.pojo.News;

import java.util.List;

public interface NewsMapper {
    //查找所有新闻标题
    List<News> findAllNewTitle();

    List<News> findNewsById(int newsId);
}
