package org.npbool;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="content")
	private String content;
}
