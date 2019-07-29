package sample3;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

import sample2.MessageBean;

public class HelloApp {
	public static void main(String[] args) {
		
		BeanFactory factory
		= new XmlBeanFactory(new FileSystemResource("src/sample3/bean.xml"));
		//BeanFatory�� � ������ ���� ����� ����Ͽ� � ������ bean�� �����ϴ����� ���� ���� ���� ����� �����Ѵ�. xml�� ���� ��

		
		MessageBean bean = factory.getBean("messageBean", MessageBean.class);
		// ���⿡�� "messageBean" �� �κ��� bean id�� �Ǵ� ���̴�!! 
		bean.sayHello("Spring");
	}
}
