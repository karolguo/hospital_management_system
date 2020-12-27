package cn.eleven.pojo;

import java.sql.Date;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 19:35
 * 新闻实体
 */
public class News {
    private Integer newsId;
    private String newsTitle;//新闻标题
    private String news;//新闻
    private Date newsDate;//新闻发布时间
    private String author;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public Date getNewsDate() {
        return newsDate;
    }

    public void setNewsDate(Date newsDate) {
        this.newsDate = newsDate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsId=" + newsId +
                ", newsTitle='" + newsTitle + '\'' +
                ", news='" + news + '\'' +
                ", newsDate=" + newsDate +
                ", author='" + author + '\'' +
                '}';
    }
}