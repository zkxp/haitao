<!DOCTYPE html>
<html lang="en">
   <head>
    <meta charset="utf-8">
    {{ get_title() }}
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	{{ stylesheet_link('css/bootstrap.min.css') }}
	{{ stylesheet_link('css/theme.css') }}
	{{ stylesheet_link('css/font-awesome.css') }}
	        
	{{ javascript_include('js/jquery.min.js') }}
	{{ javascript_include('js/bootstrap.min.js') }}
  </head>
  <body class=""> 
  <!--<![endif]-->
    
    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    
                </ul>
                <a class="brand" href="index.html"><span class="second">Hai</span> <span class="second">Tao</span></a>
        </div>
    </div>

        <div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">登录</p>
            <div class="block-body">
                <form id="loginForm" action="start" method="post">
                    {{ flash.output() }}
                <div class="form-group">
                    <label for="email">用户名</label>
                    <input type="text" class="form-control input" id="email" name="name" placeholder="输入用户名">
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" class="form-control input" id="password" name="password" placeholder="输入密码">
                </div>
                     <button type="submit" id="loginBtn" class="btn btn-primary pull-right loginBtn">登录</button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
     
    </div>
</div>


    


    <script type="text/javascript">
        
    
//      $("#loginBtn").on("click",function(e){
//        e.preventDefault();
////        login();
//      })
        function login(){
        $.ajax({
            type:"post",
            url:"/haitao/index/ajaxLogin",
            dataType:"json",
            data: $("#loginForm").serialize(),
            success:function(data){
                if(data.code!='0'){
                    alert(data.msg);
                }else{
                	window.location.href="/haitao/index";
                }
            }
        })
      }
      $("[rel=tooltip]").tooltip();
      $(function() {
          $('.demo-cancel-click').click(function(){return false;});
      });
    </script>
    
  </body>
</html>


