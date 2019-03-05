package com.qq.controller;

import com.qq.controller.action.Action;
import com.qq.controller.action.BoardCheckPassAction;
import com.qq.controller.action.BoardCheckPassFormAction;
import com.qq.controller.action.BoardDeleteAction;
import com.qq.controller.action.BoardListAction;
import com.qq.controller.action.BoardUpdateAction;
import com.qq.controller.action.BoardUpdateFormAction;
import com.qq.controller.action.BoardViewAction;
import com.qq.controller.action.BoardWriteAction;
import com.qq.controller.action.BoardWriteFormAction;
import com.qq.controller.action.member.MemberJoinFormAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("board_list")) {
			action = new BoardListAction();
		}else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		}else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		}else if (command.equals("board_view")) {
			action = new BoardViewAction();
		}else if (command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		}else if (command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		}else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		}else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		}else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}else if (command.equals("member_join_form")) {
			action = new MemberJoinFormAction();
		}
		return action;
	}
}
