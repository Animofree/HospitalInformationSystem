package com.cjj.core.common;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;

import com.cjj.vo.PagingVo;

public abstract class BaseController {
	private static ThreadLocal<ServletRequest> requestLocal = new ThreadLocal<ServletRequest>();
	private static ThreadLocal<ServletResponse> responseLocal = new ThreadLocal<ServletResponse>();	
	protected PagingVo pagingVo;
	
	@ModelAttribute
	public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){
		requestLocal.set(request);
		responseLocal.set(response);
	}

	public HttpServletRequest request(){
		return (HttpServletRequest) requestLocal.get();
	}

	public HttpServletResponse response(){
		return (HttpServletResponse) responseLocal.get();
	}

	public void setPaging(int pagesize, int sumrow, int currentpage){
		int sumpage = (int)Math.ceil(Double.parseDouble(sumrow+"")/Double.parseDouble(pagesize+""));
		if(sumpage<1){
			sumpage = 1;
		}
		if(currentpage < 1){
			currentpage = 1;
		}else if(currentpage > sumpage){
			currentpage = sumpage;
		}
		int beginpage = currentpage - 2;
		int endpage = currentpage + 2;
		while (beginpage < 2) {
			if(beginpage != 1 && endpage < sumpage - 1){
				endpage++; 
			}
			beginpage++;
		}
		while (endpage >= sumpage) {
			if(endpage != sumpage && beginpage > 2){
				beginpage--; 
			}
			endpage--;
		}
		pagingVo = new PagingVo(sumrow, currentpage, sumpage, beginpage, endpage);
		request().getSession().setAttribute("pagingVo", pagingVo);
	}
}
