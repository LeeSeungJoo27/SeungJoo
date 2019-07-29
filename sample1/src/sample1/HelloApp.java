package sample1;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;


public class HelloApp {
	public static void main(String[] args) {
		
		BeanFactory factory
		= new XmlBeanFactory(new FileSystemResource("src/sample1/beans.xml"));
		//BeanFatory�� � ������ ���� ����� ����Ͽ� � ������ bean�� �����ϴ����� ���� ���� ���� ����� �����Ѵ�. xml�� ���� ��

		
		MessageBean bean = (MessageBean)factory.getBean("messageBean");
		// ���⿡�� "messageBean" �� �κ��� bean id�� �Ǵ� ���̴�!! 
		bean.sayHello();
	}
}

