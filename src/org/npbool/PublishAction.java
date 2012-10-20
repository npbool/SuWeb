package org.npbool;

import com.opensymphony.xwork2.ActionSupport;

public class PublishAction extends ActionSupport {
	private Integer article_id;

	public Integer getArticle_id() {
		return article_id;
	}

	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}
	
	public String execute(){
		if(article_id==null){
			
		} else {
			
		}
	}
}
