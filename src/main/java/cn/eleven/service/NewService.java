package cn.eleven.service;


import cn.eleven.pojo.News;

import java.util.List;

public interface NewService {
   List<News> findAllNewTitle();

    List<News> findNewsById(int newsId);
}
