<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

    <!-- eye icon -->
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <!-- warning icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- jQuery -->
    <script src="//code.jquery.com/jquery-3.1.1.slim.min.js"></script>

    <style>
        /* header */
        .header {
            position: relative;
            padding: 20px 0 10px;
            text-align: center;
        }

        .logo {
            text-decoration-line: none;
            color: #840000;
            font-size: 2em;
        }

        /* content */
        .formRow {
            position: relative;
            /* width: 100%; */
        }

        .formRow--item {
            display: block;
            /* width: 100%; */
        }

        .formRow--input {
            position: relative;
            padding: 15px;
            /* padding: 15px 20px 11px; */
            width: 100%;
            /* outline: none; */
            /* outline-color: #840000; */
            border: solid 1px #95989a;
            border-radius: 4px;
            color: #2c3235;
            letter-spacing: .2px;
            font-weight: 400;
            font-size: 15px;
            resize: none;
            -webkit-transition: all .2s ease;
            transition: all .2s ease;
            display: block;
            box-sizing: border-box;
            /* z-index: 10; */
        }

        .formRow--input-wrapper {
            position: relative;
            display: block;
            width: 100%;
            /* margin: 0px; */
            padding: 7px;
            overflow: hidden;
            box-sizing: border-box;
            /* vertical-align: top; */
            
        }

        .formRow--input-wrapper.active .placeholder {
            top: -1px;
            /* left: 20px; */
            background-color: #ffffff;
            color: #1a73e8;
            text-transform: uppercase;
            /* letter-spacing: .8px; */
            font-size: 11px;
            /* line-height: 14px; */
            -webkit-transform: translateY(0);
            transform: translateY(0);
        }

        .formRow--input-wrapper.active .formRow--input:not(:focus):not(:hover)~.placeholder {
            /* color: #fec8c9; */
            color: #2c3235;
        }

        /* .formRow--input-wrapper .formRow--input:hover,  */
        .formRow--input-wrapper .formRow--input:focus{
            /* border-color: #1a73e8; */
            /* border: 1px #1a73e8 solid; */
        }

        /* .formRow .placeholder { */
        .placeholder {
            position: absolute;
            top: 50%;
            left: 10px;
            display: block;
            padding-left: 10px;
            color: #95989a;
            white-space: nowrap;
            letter-spacing: .2px;
            font-weight: normal;
            font-size: 16px;
            -webkit-transition: all, .2s;
            transition: all, .2s;
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);

            pointer-events: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .content {
            max-width: 500px;
            min-width: 500px;
            margin: auto;
            background: white;
            padding: 10px;
        }

        .btnArea {
            margin: 30px 0 9px;
        }

        .submitBtn {
            color: #fff;
            background-color: #840000;
            display: block;
            width: 100%;
            padding: 21px 0 17px;
            font-size: 20px;
            font-weight: 700;
            text-align: center;
            cursor: pointer;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        .birthDiv {
            margin-top: 13px;
            /* text-align: left; */
        }

        .birthDiv label {
            margin-left: 7px;
        }

        .birthWrap {
            display: table;
        }

        #birthmm {
            display: inline-flex;        
        }

        #birthmm select {
            background: white;
        }

        #nation {
            width: 15%;
            display: inline-flex;
            border: none;
        }

        #nation select {
            background: white;
            border: none;
        }

        #btn_verify {
            width: 30%;
            margin-left: 20px;
            border-radius: 4px;
            color: #fff;
            background-color: #840000;
            display: block;
            font-size: 15px;
            text-align: center;
            cursor: pointer;
        }

        .pwdWrap, .birthWrap, .phoneWrap, #verifyWrap{
            display: flex ;
        }

        .fa-eye, .fa-eye-slash{
            vertical-align: 0%;
            padding: 16px 15px 15px 10px;
            width: 30px !important;
            font-size:24px;
            cursor: pointer;
        }

        /* #pwd1{
            width: 15%;
        } */

        .pwd{
            width: 45%;
        } 

        .break{
            padding-top: 8px;
        }

        button{
            outline :none;
        }

        .eng{
            /* ime-mode: inactive; */
            -ms-ime-mode: inactive;
        }

        /* IE 10, 11의 네이티브 화살표 숨기기 */
        select::-ms-expand {
            display: none;
        }

        .msgBox{
            display: none;
            /* display: block; */
            margin-top: 5px;
            margin-left: 15px;
            font-size: 15px;
            white-space:pre;
            color: #d93025;
        }
    </style>
</head>
<!-- <body align="center"> -->
<body>
    <!-- logo header -->
    <div class="header">
        <h1><a href="http://www.naver.com" class="logo">JavaBall</a></h1>
    </div>

    <!-- content -->
    <div class="content">
        <form action="#" method="post" onsubmit="return validate()">
            <div class="formRow">
                <div class="formRow--item">
                    <!-- 이메일 -->
                    <div class="emailWrap">
                        <div class="formRow--input-wrapper js-inputWrapper">
                            <input type="email" class="formRow--input js-input eng" name="email"
                                placeholder="이메일">
                        </div>                
                        <div id="emailMsg" class="msgBox"></div>
                        <div class="formRow--input-wrapper js-inputWrapper" id="verifyWrap">
                            <input type="text" class="formRow--input js-input" name="verify" placeholder="인증번호 입력">
                            <button type="button" id="btn_verify">인증번호 받기</button>
                        </div>
                        <div id="verifytMsg" class="msgBox" ><i class="fa fa-warning"></i>  인증번호를 입력하세요.</div>
                        <!-- <div id="wrongNoMsg" class="msgBox" ><i class="fa fa-warning"></i>  인증번호를 확인하세요.</div> -->
                    </div>
                    
                    <!-- 비밀번호 -->
                    <div class="pwdWrap" >
                        <div class="formRow--input-wrapper js-inputWrapper pwd">
                            <input type="password" class="formRow--input js-input" name="pwd" 
                                    placeholder="비밀번호" onkeypress="javascript:capslock(event);">
                        </div>
                        <div class="formRow--input-wrapper js-inputWrapper pwd">
                            <input type="password" class="formRow--input js-input" name="pwdChk"
                                placeholder="비밀번호 확인" onkeypress="javascript:capslock(event);">
                        </div>                        
                        <i class='far fa-eye-slash' id="showPwd"></i>
                    </div>
                    <!-- <div id="capslockMsg" class="msgBox" ><i class="fa fa-warning"></i>  Caps Lock이 켜져있습니다.</div>
                    <div id="pwdVacantMsg" class="msgBox" ><i class="fa fa-warning"></i>  비밀번호를 입력하세요.</div>
                    <div id="pwdChkVacantMsg" class="msgBox" ><i class="fa fa-warning"></i>  비밀번호를 확인하세요.</div> -->
                    <div id="pwdMsg" class="msgBox"><i class="fa fa-warning"></i>  8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</div>

                    <!-- 이름 -->
                    <div class="formRow--input-wrapper js-inputWrapper">
                        <input type="text" class="formRow--input js-input" name="name" placeholder="이름">
                    </div>
                    <div id="nameMsg" class="msgBox" ><i class="fa fa-warning"></i>  이름을 입력하세요.</div>
                    <!-- 생년월일 -->
                    <div class="birthDiv">
                        <label>생년월일</label>
                        <div class="birthWrap">
                            <div class="formRow--input-wrapper js-inputWrapper">
                                <input type="text" class="formRow--input js-input" name="birthyy" placeholder="연도(4자)">
                            </div>
                            <div class="formRow--input-wrapper js-inputWrapper" id="birthmm">
                                <select class="formRow--input js-input" name="birthmm" placeholder="월">
                                    <option hidden></option>
                                    <option value="1">1월</option>
                                    <option value="2">2월</option>
                                    <option value="3">3월</option>
                                    <option value="4">4월</option>
                                    <option value="5">5월</option>
                                    <option value="6">6월</option>
                                    <option value="7">7월</option>
                                    <option value="8">8월</option>
                                    <option value="9">9월</option>
                                    <option value="10">10월</option>
                                    <option value="11">11월</option>
                                    <option value="12">12월</option>
                                </select>
                            </div>
                            <div class="formRow--input-wrapper js-inputWrapper">
                                <input type="text" class="formRow--input js-input" name="birthdd"
                                    placeholder="일">
                            </div>
                        </div>
                    </div>
                    <div id="birthMsg" class="msgBox" ><i class="fa fa-warning"></i>  출생 년도 4자를 입력하세요.</div>
                    <!-- 전화번호 -->
                    <div class="phoneWrap">
                        <div class="formRow--input-wrapper js-inputWrapper" id="nation">
                            <select class="formRow--input js-input" name="nation" placeholder="">
                                <option value="KR" selected>한국</option>
                                <option value="GB">영국</option>
                                <option value="FR">프랑스</option>
                                <option value="FI">핀란드</option>
                            </select>
                        </div>
                        <div class="formRow--input-wrapper js-inputWrapper">
                            <input type="text" class="formRow--input js-input" name="phone"
                                placeholder="휴대폰 번호">
                        </div>
                    </div>
                    <div id="phoneMsg" class="msgBox" ><i class="fa fa-warning"></i>  휴대폰 번호를 입력하세요.</div>
                </div>
            </div>
            <div class="btnArea">
                <button type="submit" class="submitBtn">가입하기</button>
            </div>
            
        </form>
    </div>
    <script>
        // focus legend
        var $inputItem = $(".js-inputWrapper");

        $inputItem.length && $inputItem.each(function () {
            var $this = $(this),
                $input = $this.find(".formRow--input"),
                placeholderTxt = $input.attr("placeholder"),
                $placeholder;

            $input.after('<span class="placeholder">' + placeholderTxt + "</span>"),
                $input.attr("placeholder", ""),
                $placeholder = $this.find(".placeholder"),

                $input.val().length ? $this.addClass("active") : $this.removeClass("active"),

                $input.on("focusout", function () {
                    $input.val().length ? $this.addClass("active") : $this.removeClass("active");
                }).on("focus", function () {
                    $this.addClass("active");
                });
        });

        // view
        // $(document).ready(function(){
            $('.pwdWrap i').on('click',function(){
                $('.pwdWrap input').toggleClass('showPwd');
                if($('.pwdWrap input').hasClass('showPwd')){
                    $(this).attr('class',"far fa-eye");
                    $('.pwdWrap input').attr('type','text');
                }else{
                    $(this).attr('class',"far fa-eye-slash");
                    $('.pwdWrap input').attr('type','password');
                }
            });
        // });

        // Caps Lock
        function capslock(e){
            var keyCode = 0;
            var shirftKey = false;
            keyCode = e.keyCode;
            shiftKey = e.shiftKey;
            if(((keyCode >= 65 && keyCode <90) && !shiftKey) || ((keyCode >= 97 && keyCode <= 112) && shiftKey)){
                $("#capslockMsg").css("display","block");
            }else{
                $("#capslockMsg").css("display","none");
            }
        }

        // 이메일 영어,숫자만 입력
        $(document).ready(function(){
            $("input[name=email]").keyup(function(event){ 
                if (!(event.keyCode >=37 && event.keyCode<=40)) {
                    var inputVal = $(this).val();
                    // $("#idErrorMsg").css("display","block");
                    $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
                    $("#idErrorMsg").css("display","block");
                }else{
                    $("#idErrorMsg").css("display","none");
                }
            });
        });

        // 이름 한글만 입력
        $(document).ready(function(){
            $("input[name=name]").keyup(function(event){ 
                if (!(event.keyCode >=37 && event.keyCode<=40)) {
                    var inputVal = $(this).val();
                    $(this).val(inputVal.replace(/[^ㄱ-힣]/gi,''));                
                } 
            });
        });

        function validate(){
            // 이메일 중복 체크
            let idDup;

            $.ajax({
                url : "/final/idDup.me",
                type : "get",
                data : {
                    email : $("input[name=email]").val()
                },
                success : function(result){
                    console.log(result);
                    idDup = result;
                },
                error : function(){
                    alert("아이디 중복 체크 실패!");
                }
            })

            // 이메일 공란 확인
            if ($("input[name=email]").val() == "" ){
                $("#emailMsg").css("display","block").html('<i class="fa fa-warning"></i>  이메일을 입력하세요.');
                return false;
            }

            // 이메일 중복 체크
            else if(idDup > 0){
                $("#emailMsg").css("display","block").html('<i class="fa fa-warning"></i>  이미 사용중이거나 탈퇴한 아이디입니다.');
                return false;    
            }
        }




        // $(document).ready(function(){
        //     $("input[name=password]").keyup(function(event){ 
        //         if (!(event.keyCode >=37 && event.keyCode<=40)) {
        //             var inputVal = $(this).val();
        //             $(this).val(inputVal.replace(/[^ㄱ-힣]/gi, /[^a-z0-9]/gi));
        //         }
        //     });
        // });
    </script>
</body>

</html>