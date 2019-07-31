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

// FileReader�� FileWriter�� ���Ͽ� ����� ����Ʈ�� �����ڵ� ���ڷ� ��ȯ�ؼ� �о� ���̰ų�
// ����� �����ڵ� ���ڸ� ����Ʈ ���� ���ڵ��� ����Ʈ�� ��ȯ�ؼ� ���Ͽ� �����ϴ� �� ���Ǵ� ����� Ŭ�����̴�.

// FileReader�� FileWriter�� ���� InputStreamReader�� OutputStreamWriter�� ���� Ŭ������
// �����ڵ� ���ڿ� ����Ʈ���� ��ȯ ����� �����ϰ� �ִ�. 