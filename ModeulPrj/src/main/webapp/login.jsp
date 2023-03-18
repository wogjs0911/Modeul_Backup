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
    <link href="/css/component/component-login.css" type="text/css" rel="stylesheet"></link>

</head>
<body>
    <div class="canvas f-family">
        
            <header>
                <div class="header-container">
                    <h1 class="logo-main logo-moduel logo-size1 m-t-138px">mo_deul</h1>
                </div>
            </header>

        <main>
            <div class="input-container">
                
                <form action="./member/stuff/list.html" method="get">

                    <div class="input-field-1">
                        <label for="uid" class="uid-label">
                            <span class="d-none">uid</span>
                            <input type="text" id="uid" name="uid" 
                                class="input-text" placeholder=" 아이디">
                        </label>
                    </div>
                    <div class="input-field-1 m-t-1">
                        <label for="password" class="password-label">
                            <span class="d-none">uid</span>
                            <input type="text" id="password" name="password" 
                                class="input-text" placeholder=" 비밀번호">
                        </label>
                    </div>
                    <div>
                        <input class="btn-2" type="submit" value="로그인">
                    </div>
                </form>

            </div>
            <!-- 아이디찾기 ~ 플렉스 -->
            <div class="find-container">
                <div>
                    <a class="find-text" href="아이디찾기페이지">아이디 찾기</a> |
                    <a class="find-text" href="비밀번호찾기페이지">비밀번호 찾기</a>
                </div>
               
                <div class="m-t-68px">
                    <a class="signup-text" href="signup">회원가입</a>
                </div>
            </div>
 
        </main>

    </div>
    
</body>
</html>
