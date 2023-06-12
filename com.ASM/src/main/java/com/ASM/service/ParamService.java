package com.ASM.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest req;

	/**
	 * Đọc chuỗi giá trị của tham số
	 * 
	 * @Param name tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public String getString(String name, String defaultValue) {
		if (req.getParameter(name) != null) {
			return req.getParameter(name);
		} else {
			return defaultValue;
		}
	}

	/**
	 * Đọc số nguyên giá trị của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public int getInt(String name, int defaultValue) {
		try {
			if (req.getParameter(name) != null) {
				return Integer.parseInt(req.getParameter(name));
			} else {
				return defaultValue;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return defaultValue;
		}
	}

	/**
	 * Đọc số thực giá trị của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public double getDouble(String name, double defaultValue) {
		try {
			if (req.getParameter(name) != null) {
				return Double.parseDouble(req.getParameter(name));
			} else {
				return defaultValue;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return defaultValue;
		}
	}

	/**
	 * Đọc giá trị thời gian của tham số
	 * 
	 * @param name    tên tham số
	 * @param pattern định dạng thời gian
	 * @return giá trị tham số hoặc null nếu không tồn tại
	 * @throws ParseException lỗi sai định dạng
	 */
	public Date getDate(String name, String pattern) throws ParseException {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		if (req.getParameter(name) != null) {
			Date date = new Date();
			date = simpleDateFormat.parse(req.getParameter(name));
			return date;
		} else {
			return null;
		}
	}

	/**
	 * Đọc giá trị boolean của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public boolean getBoolean(String name, boolean defaultValue) {
		try {
			if (req.getParameter(name) != null) {
				return true;
			} else {
				return defaultValue;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return defaultValue;
		}
	}

	/**
	 * Lưu file upload vào thư mục
	 * 
	 * @param file chứa file upload từ client
	 * @param path đường dẫn từ webroot
	 * @return đối tượng chứa file đã lưu hoặc null nếu không có file upload
	 * @throws IOException lỗi lưu file
	 */
	public File save(MultipartFile file, String path) throws IOException {
		if (!file.isEmpty()) {
			String fileName = StringUtils.cleanPath(file.getOriginalFilename());
			Path paths = Paths.get(path + fileName);
			Files.copy(file.getInputStream(), paths, StandardCopyOption.REPLACE_EXISTING);
			return new File(path + fileName);
		} else {
			return null;
		}
	}
}
