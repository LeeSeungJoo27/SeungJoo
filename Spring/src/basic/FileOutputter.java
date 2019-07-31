package basic;

import java.io.FileWriter;
import java.io.IOException;

public class FileOutputter implements Outputter{

	private String filePath;
	
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}



	@Override
	public void output(String message) throws IOException {
		FileWriter out = new FileWriter(filePath);
		out.write(message);
		out.close();
	}

}

// FileReader와 FileWriter는 파일에 저장된 바이트를 유니코드 문자로 변환해서 읽어 들이거나
// 출력할 유니코드 문자를 디폴트 문자 인코딩의 바이트로 변환해서 파일에 저장하는 데 사용되는 입출력 클래스이다.

// FileReader와 FileWriter는 각각 InputStreamReader와 OutputStreamWriter의 하위 클래스로
// 유니코드 문자와 바이트간의 변환 기능을 포함하고 있다. 