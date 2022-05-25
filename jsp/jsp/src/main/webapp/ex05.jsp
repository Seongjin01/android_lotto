<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	
	<%!
	
	class Account { // 계좌번호와 잔액 정보를 가지고 있
		String account_no = null; //계좌번호
		int balance = 0;	//잔
	
		//계좌번호를매개변수로 받아들이는 생성자 생성
		Account(String account_no) {
			this.account_no = account_no;
		}
		
		int deposit(int amount) { // 입금액 amount를 매개변수(파라미터)로 받는다.
			balance += amount;
			return balance;
			
		}
		int payment(int amount) { //출금액 amount를 매개변수(파라미터)로 받는다.
			if(balance >= amount) { //if문으로 출금의 가능여부를 결정함.
			balance -= amount;
			return balance;
			} else {
				return balance;
		} 
			
		}
	}
	%>
	
	<% 
	
	int deposit_don = 0;
	int payment_don = 0;
	int balance = 0;
	
	Account account = new Account("0215"); //인스스(복제품) account를 만들고
											//매개변수로 계좌번호 "0215"저장
	out.print("*계좌번호 : " + account.account_no + "<br>"); //계좌번호(account_no)를 화면에 출력
	out.print("*초기잔액 : " + account.balance + "<br>"); // 잔액 출력
	
	
	deposit_don = 5000;
	account.deposit(deposit_don);
	out.print(deposit_don + "원 입금 후 잔액 : " + account.balance  + "원" + "<Br>");
	
	payment_don = 8000;
	if(account.balance >= payment_don) {
		account.payment(payment_don);
		out.print(payment_don + "출금 후 잔액 : " + account.balance + "<br>");
	} else {
		out.print(payment_don + "원 출금 후 잔액 : " + account.balance + "원" + "<br>");
	}
	
	
	payment_don = 2000;
	if(account.balance < payment_don) {
		account.payment(payment_don);
		out.print("잔액부족<p>");
	} else {
		out.print(payment_don + "원 출금 후 잔액 : " + account.balance + "원" + "<br>");
	}
	

	
		
	
	%>
	

	
</body>
</html>