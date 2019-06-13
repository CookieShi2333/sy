package Interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class HelloWorldInterceptor extends AbstractInterceptor{
	//拦截方法
		@Override
		
		public String intercept(ActionInvocation arg0) throws Exception {
			Object action=arg0.getAction();
			
			System.out.println("beforeInterceptor");
		
			String result=arg0.invoke();
		    //执行完Action后提示
			System.out.println("afterInterceptor");
			return result;
		}
}
