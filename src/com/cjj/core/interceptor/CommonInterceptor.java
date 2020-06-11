package com.cjj.core.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cjj.vo.EmployeeVo;
import com.cjj.vo.ResourceVo;


public class CommonInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		Object obj = request.getSession().getAttribute("pfuserinfo");
		if(obj == null){
			response.sendRedirect(request.getContextPath() + "/indexController/toinitial.do");
			return false;
		}
		
		
		String path = request.getServletPath();
		
		if(path.indexOf("tablelist.do") >= 0 || path.indexOf("finduser.do") >= 0 
			|| path.indexOf("toeditpsw.do") >= 0 || path.indexOf("editpswnext.do") >= 0 
			|| path.indexOf("editpsw.do") >= 0 || path.indexOf("getdptbypid.do") >= 0){
			return true;
		}
		EmployeeVo user = (EmployeeVo) obj;
		List<ResourceVo> resources = user.getResources();
		for (ResourceVo resource : resources) {
			String url = resource.getResourceurl();
			if(url != null && url.length() > 0 && url.indexOf(path) >= 0){
				return true;
			}
		}
		return false;
	}
	
}
