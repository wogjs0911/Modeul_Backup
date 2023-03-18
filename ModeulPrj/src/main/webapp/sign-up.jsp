<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/css/reset.css" type="text/css" rel="stylesheet"></link>
    <link href="/css/style.css" type="text/css" rel="stylesheet"></link>
    <link href="/css/utils.css" type="text/css" rel="stylesheet"></link>
    <link href="/css/button.css" type="text/css" rel="stylesheet"></link>
    <link href="/css/component/component.css" type="text/css" rel="stylesheet"></link>
    <link href="/css/component/component-sign-up.css" type="text/css" rel="stylesheet"></link>

</head>

<body>
  
<div class="canvas f-family ">
  <header class="d-fl fl-dir-col al-cen">
    <section>
        <span class="d-none">헤더</span>
        <div>
            <a href="./login.html" class="icon icon-back">Back</a>
        </div>
        <div class="d-fl-jf">
            <h1 class="logo-main logo-moduel logo-size1 m-t-44px">mo_deul</h1>
        </div>
        <div>
          <h1 class="logo title-3 m-t-42px">회원 가입</h1>
        </div>
    </section>
  </header>
<!-- ----------------------------------------------------------- -->
    <main class="m-t-31px">
      <!-- flex 시작 -->
      <div class="sign-up-container">
       

        <form method="post" >

          <div class="input-field-2">
            <label for="uid" class="uid-label">
              <span class="d-none">uid</span>
            <input type="text" id="uid" name="uid" class="input-text-2" placeholder="아이디를 입력해주세요.">
            </label>
           </div>

           <div class="input-field-2 m-t-1">
            <label for="password" class="password-label">
              <span class="d-none">pw</span>
            <input type="text" id="password" name="password" class="input-text-2" placeholder="비밀번호를 입력해주세요.">
            </label>
          </div>

          <div class="input-field-2 m-t-1">
            <label for="password-confirm" class="password-confirm-label">
              <span class="d-none">pw-confirm</span>
            <input type="text" id="password-confirm" name="repassword" class="input-text-2" placeholder="비밀번호를 다시 입력해주세요.">
            </label>
          </div>

          <div class="input-field-2 m-t-1">
            <label for="name" class="name-label">
              <span class="d-none">name</span>
            <input type="text" id="name" name="name" class="input-text-2" placeholder="이름을 입력해주세요.">
            </label>
          </div>
  
          <div class="input-field-2 m-t-1">
            <label for="email" class="email-label">
              <span class="d-none">email</span>
            <input type="text" id="email" name="email" class="input-text-2" placeholder="이메일을 입력해주세요.">
            <input class="btn-post" id="btn-post" type="button" value="전송">
            </label>
           </div>

           <div class="input-field-2 m-t-1">
            <label for="email" class="email-confirm-label">
              <span class="d-none">email-confirm</span>
            <input type="text" id="reemail" name="reemail" class="input-text-2" placeholder="이메일 인증번호를 입력해주세요.">
            <input class="btn-auth" id="btn-auth"type="button" value="확인">
            </label>
           </div>
            
            <div class="d-fl-jf m-t-69px">
              <input class="btn-3" type="submit" value="가입하기">
            </div>
        </form>
      </div>
      <!-- flex 끝 -->


    </main>
  
</div>


<script>
  let b1= document.getElementById('btn-post');
  let b2= document.getElementById('btn-auth');

  b1.addEventListener('click',function(event){
    alert('인증번호가 전송되었습니다.');
  });

  b2.addEventListener('click',function(event){
    alert('이메일이 확인되었습니다.');
  });

  // https://wooncloud.tistory.com/12 나중에 참고할 플러그인
</script>


</body>
</html>
