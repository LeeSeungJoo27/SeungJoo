package sample1;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;


public class HelloApp {
	public static void main(String[] args) {
		
		BeanFactory factory
		= new XmlBeanFactory(new FileSystemResource("src/sample1/beans.xml"));
		//BeanFatory는 어떤 종류의 저장 기능을 사용하여 어떤 성질의 bean을 관리하는지에 대한 향상된 설정 기법을 제공한다. xml에 대한 것

		
		MessageBean bean = (MessageBean)factory.getBean("messageBean");
		// 여기에서 "messageBean" 이 부분이 bean id가 되는 것이다!! 
		bean.sayHello();
	}
}

