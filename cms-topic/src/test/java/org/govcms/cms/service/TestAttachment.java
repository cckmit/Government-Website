package org.govcms.cms.service;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.inject.Inject;

import org.fanyang.basic.model.SystemContext;
import org.govcms.cms.model.Attachment;
import org.govcms.cms.service.IAttachmentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans.xml")
public class TestAttachment {
	
	@Inject
	private IAttachmentService attachmentService;

	@Test
	public void testAddAttachment() throws IOException {
		SystemContext.setRealPath("D:\\teach_source\\class2\\j2EE\\cms_2013\\cms-web\\src\\main\\webapp");
		Attachment attach = new Attachment();
		attach.setIsAttach(0);
		attach.setIsImg(1);
		attach.setIsIndexPic(0);
		attach.setNewName("aaaaa.jpg");
		attach.setOldName("abc.jpg");
		attach.setSize(111111);
		attach.setSuffix("jpg");
//		InputStream is = new FileInputStream("e:/br/01.jpg");
//		attachmentService.add(attach, is);
//		System.out.println(attach.getId());
	}
}
