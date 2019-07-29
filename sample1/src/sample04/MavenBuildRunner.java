package sample04;

import java.util.List;

public class MavenBuildRunner implements BuildRunner{
	private String mavenPath;

	@Override
	public void build(List<String> srcDirs, String binDir) {
		String info ="메이븐 경로: " + mavenPath + "\n";
		for(String srcDir : srcDirs) 
			info += "소스 경로: " + srcDir + "\n";
			info += "클래스파일경로: " + binDir + "\n";
			System.out.printf("MavenBuildRunner.build() 실행\n%s", info);
		
		
	}
	
	public void setMavenPath(String mavenPath) {
		this.mavenPath = mavenPath;
	}

}
//부모를 호출하면 자식이 나타난다 보통 부모가 자식을 품는게 아니라 자식이 부모를 품는다 