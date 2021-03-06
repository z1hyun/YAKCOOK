package com.yakcook.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yakcook.common.JDBCTemplate;
import com.yakcook.member.model.service.MemberService;
import com.yakcook.member.model.vo.MemberQnAVo;
import com.yakcook.member.model.vo.MemberVo;

@WebServlet("/memberquestionwriter")
public class MemberQuestionWriterController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/memberQuestionForm.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		HttpSession session = req.getSession();
		
		//현재 로그인 한 회원의 세션 정보 가져오기
		String id = ((MemberVo)session.getAttribute("loginUser")).getUser_id();
		String title = req.getParameter("question_title");
		String content = req.getParameter("question_contents");
		String qnacategory =  req.getParameter("qnacategory");
		
		System.out.println("현재 로그인 아이디 리뷰쓰기 : "+ id);
		System.out.println(qnacategory);
		// 데이터 값 확인
		//System.out.println(title + content + id);
		
		// 데이터 담기
		MemberQnAVo q = new MemberQnAVo();
		q.setUser_id(id);
		q.setQna_title(title);
		q.setQna_content(content);
		q.setQna_category(qnacategory);
		
		// 객체 들고 서비스로 고고
		int result = new MemberService().qnawriter(q);
	
		if(result>0) {
			// 성공
			out.println("<script>alert('문의글이 성공적으로 작성 되었습니다.'); location.href='memberquestion';</script>");				
			out.flush();
			//req.setAttribute("msg", "글쓰기 성공");
			//req.getRequestDispatcher("WEB-INF/views/common/successPage.jsp").forward(req, resp);
		}else {
			// 실패
			//req.setAttribute("msg", "글쓰끼 실패");
			//req.getRequestDispatcher("WEB-INF/views/common/errorPage.jsp").forward(req, resp);
			out.println("<script>alert('문의글 작성에 실패했습니다.'); location.href='memberquestion';</script>");				
			out.flush();
		}
		
	}	
}
	
