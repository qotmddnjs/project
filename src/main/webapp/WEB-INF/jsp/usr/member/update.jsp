<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ȸ������ ����</title>
    
    <link rel="stylesheet" type="text/css" th:href="@{/css/bootstrap.css}" />
   
    <script type="text/javascript" th:src="@{/js/bootstrap.min.js}"></script>
</head>
<body>
    
    
    <div style="padding: 20px;">
        
        <h3>ȸ������ ����</h3>
        <hr />
        <form th:action="@{/member/update}" method="post">

            ���̵�: <input type="text" name="id" th:value="${member.id}" readonly /> <br />
            �̸�: <input type="text" name="name" th:value="${member.name}" /> <br />
            ����: <input type="text" name="age" th:value="${member.age}" /> <br />
            <input type="submit" value="����" />

        </form>
        
    </div>
    

</body>
</html>