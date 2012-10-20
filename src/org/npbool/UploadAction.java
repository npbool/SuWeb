package org.npbool;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA_2_3.portable.OutputStream;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	//ckeditor默认上传字段是upload,不要改名！！
	private File upload;
	private String uploadContentType;
	private String uploadFileName;

	public String execute() throws Exception {
		System.out.println("exec!");
		return "input";
	}

	public String upload() throws Exception {
		System.out.println("accept!!");
		copy_file(upload, "upload", uploadFileName, 4096);
		return null;
	}

	public String upload_picture() throws Exception {
		Calendar calendar = new GregorianCalendar();
		String path = String.format("news_img/%d%02d%02d/", calendar.get(Calendar.YEAR),
				calendar.get(Calendar.MONTH),
				calendar.get(Calendar.DAY_OF_MONTH));
		String filename = UUID.randomUUID().toString()+uploadFileName;
		copy_file(upload, path, filename, 4096);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		String callback = request.getParameter("CKEditorFuncNum");
		writer.println("<script type=\"text/javascript\">");
		writer.println("window.parent.CKEDITOR.tools.callFunction(" + callback
		+ ",'" + path + filename + "',''" + ")");
		writer.println("</script>");
		writer.flush();
		writer.close();
		return null;
	}

	public void copy_file(File src, String dest_path, String dest_filename,
			int bufsize) throws Exception {
		InputStream ins = null;
		FileOutputStream ous = null;
		try {
			File saved = new File(ServletActionContext.getServletContext()
					.getRealPath(dest_path), dest_filename);
			saved.getParentFile().mkdirs();
			ins = new FileInputStream(upload);
			ous = new FileOutputStream(saved);
			byte[] b = new byte[bufsize];
			int len = 0;
			while ((len = ins.read(b)) != -1) {
				ous.write(b, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ous != null)
				ous.close();
			if (ins != null)
				ins.close();
		}
	}
}
