package com.bookshop.model;

import java.util.ArrayList;
import java.util.List;

public class ProductModel extends AbstractModel{
    private Long id;
    private String name;
    private String thumbnail1;
    private String thumbnail2;
    private String description;
    private Long price;
    private Long sellPrice;
    private Long categoryId;
    private CategoryModel categoryModel;

//    private List<ImgProductModel> inforImages = new ArrayList<>();
    private List<String> inforImages = new ArrayList<>();
    private Integer stars;
    private Integer reviewCount;





//    ----------------------------------------------

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getThumbnail1() {
        return thumbnail1;
    }

    public void setThumbnail1(String thumbnail1) {
        this.thumbnail1 = thumbnail1;
    }

    public String getThumbnail2() {
        return thumbnail2;
    }

    public void setThumbnail2(String thumbnail2) {
        this.thumbnail2 = thumbnail2;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Long sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public CategoryModel getCategoryModel() {
        return categoryModel;
    }

    public void setCategoryModel(CategoryModel categoryModel) {
        this.categoryModel = categoryModel;
    }



    public Integer getStars() {
        return stars;
    }

    public void setStars(Integer stars) {
        this.stars = stars;
    }

    public Integer getReviewCount() {
        return reviewCount;
    }

    public void setReviewCount(Integer reviewCount) {
        this.reviewCount = reviewCount;
    }

    public void setInforImages(List<String> inforImages) {
        this.inforImages = inforImages;
    }

    public List<String> getInforImages() {
        return inforImages;
    }
}
