package sample04;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainBySpring {

	public  static void main(String[] args) {
		String configlocation = "classpath:sample04/applicationContext.xml";
		AbstractApplicationContext ctx = 
				new GenericXmlApplicationContext(configlocation);
		
		Project project =  ctx.getBean("sampleProject", Project.class);
		project.build();
		ctx.close();
	}
}
