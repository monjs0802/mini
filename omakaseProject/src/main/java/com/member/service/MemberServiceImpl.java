package com.member.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.member.bean.UserDTO;
import com.member.dao.UserDAO;


@Service
@Transactional
public class MemberServiceImpl implements MemberService {
   @Autowired
   private UserDAO userDAO;
   
   @Override
   public void update(Map<String, Object> map) {
         //db
         userDAO.update(map);
   }

   @Override
   public UserDTO getMember(String id) {
      //db
      return userDAO.getMember(id);
   }

   @Override
   public void delete(String id,HttpSession session) {
      userDAO.delete(id);
      session.invalidate();
      
   }

   @Override
   public void write(Map<String, Object> map) {
      userDAO.write(map);
   }



   @Override
   public String login(UserDTO userDTO, HttpSession session) {
      UserDTO userDTO2 = userDAO.login(userDTO);
      
      if(userDTO2 != null) {
         session.setAttribute("memId", userDTO2.getId());
         session.setAttribute("memDTO", userDTO2);
         return "exist";
      }else {
         return "non_exist";
      }      
      
   }

}