<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
     <html>

    <head>
        <title>sms - jsp </title>
        <script type="text/javascript">
            function setPhoneNumber(val) {
                var numList = val.split("-");
                document.smsForm.sphone1.value = numList[0];
                document.smsForm.sphone2.value = numList[1];
            if(numList[2] != undefined){
                    document.smsForm.sphone3.value = numList[2];
        }
            }

            function loadJSON() {
                var data_file = "/calljson.jsp";
                var http_request = new XMLHttpRequest();
                try {
                    // Opera 8.0+, Firefox, Chrome, Safari
                    http_request = new XMLHttpRequest();
                } catch (e) {
                    // Internet Explorer Browsers
                    try {
                        http_request = new ActiveXObject("Msxml2.XMLHTTP");

                    } catch (e) {

                        try {
                            http_request = new ActiveXObject("Microsoft.XMLHTTP");
                        } catch (e) {
                            // Eror
                            alert("지원하지 않는브라우저!");
                            return false;
                        }

                    }
                }
                http_request.onreadystatechange = function() {
                    if (http_request.readyState == 4) {
                        // Javascript function JSON.parse to parse JSON data
                        var jsonObj = JSON.parse(http_request.responseText);
                        if (jsonObj['result'] == "Success") {
                            var aList = jsonObj['list'];
                            var selectHtml = "<select name=\"sendPhone\" onchange=\"setPhoneNumber(this.value)\">";
                            selectHtml += "<option value='' selected>발신번호를 선택해주세요</option>";
                            for (var i = 0; i < aList.length; i++) {
                                selectHtml += "<option value=\"" + aList[i] + "\">";
                                selectHtml += aList[i];
                                selectHtml += "</option>";
                            }
                            selectHtml += "</select>";
                            document.getElementById("sendPhoneList").innerHTML = selectHtml;
                        }
                    }
                }

                http_request.open("GET", data_file, true);
                http_request.send();
            }
        </script>
    </head>

    <body onload="loadJSON()">
    <form method="post" name="smsForm" action="smsCheck.jsp">
        <input type="hidden" name="action" value="go"> 발송타입
        <span>
          <input type="radio" name="smsType" value="S">단문(SMS)</span>
        <span>
          <input type="radio" name="smsType" value="L">장문(LMS)</span>
        <br /> 제목 :
        <input type="text" name="subject" value="제목"> 장문(LMS)인 경우(한글30자이내)
        <br /> 전송메세지
        <textarea name="msg" cols="30" rows="10" style="width:455px;">내용입력</textarea>
        <br />
        <br />
        <p>단문(SMS) : 최대 90byte까지 전송할 수 있으며, 잔여건수 1건이 차감됩니다.
            <br /> 장문(LMS) : 한번에 최대 2,000byte까지 전송할 수 있으며 1회 발송당 잔여건수 3건이 차감됩니다.
        </p>
        <br />받는 번호
        <input type="text" name="rphone" value="011-111-1111"> 예) 011-011-111 , '-' 포함해서 입력.
        <br />이름삽입번호
        <input type="text" name="destination" value="" size=80> 예) 010-000-0000|홍길동
        <br /> 보내는 번호
        <input type="hidden" name="sphone1" value="010">
        <input type="hidden" name="sphone2" value="8779">
        <input type="hidden" name="sphone3" value="5395">
        <span id="sendPhoneList"></span>
        <br />예약 날짜
        <input type="text" name="rdate" maxlength="8"> 예)20090909
        <br />예약 시간
        <input type="text" name="rtime" maxlength="6"> 예)173000 ,오후 5시 30분,예약시간은 최소 10분 이상으로 설정.
        <br />return url
        <input type="text" name="returnurl" maxlength="64" value="">
        <br /> test flag
        <input type="text" name="testflag" maxlength="1"> 예) 테스트시: Y
        <br />nointeractive
        <input type="text" name="nointeractive" maxlength="1"> 예) 사용할 경우 : 1, 성공시 대화상자(alert)를 생략.
        <br />반복설정
        <input type="checkbox" name="repeatFlag" value="Y">
        <br /> 반복횟수
        <select name="repeatNum">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select> 예) 1~10회 가능.
        <br />전송간격
        <select name="repeatTime"> 예)15분 이상부터 가능.
            <option value="15">15</option>
            <option value="20">20</option>
            <option value="25">25</option>
        </select>분마다
        <br>
        <input type="submit" value="전송">
        <br/>이통사 정책에 따라 발신번호와 수신번호가 같은 경우 발송되지 않습니다.
    </form>
    </body>
<APM_DO_NOT_TOUCH>

<script type="text/javascript">
(function(){
window.SYjt=!!window.SYjt;try{(function(){(function(){var a=-1;a={A:++a,bc:"false"[a],a:++a,Ha:"false"[a],K:++a,Ze:"[object Object]"[a],cb:(a[a]+"")[a],Ja:++a,bb:"true"[a],D:++a,M:++a,cc:"[object Object]"[a],o:++a,U:++a,qj:++a,pj:++a};try{a.Ga=(a.Ga=a+"")[a.M]+(a.wa=a.Ga[a.a])+(a.ac=(a.va+"")[a.a])+(!a+"")[a.Ja]+(a.xa=a.Ga[a.o])+(a.va="true"[a.a])+(a.fb="true"[a.K])+a.Ga[a.M]+a.xa+a.wa+a.va,a.ac=a.va+"true"[a.Ja]+a.xa+a.fb+a.va+a.ac,a.va=a.A[a.Ga][a.Ga],a.va(a.va(a.ac+'"\\'+a.a+a.M+a.a+a.bc+"\\"+a.D+a.A+"("+a.xa+"\\"+a.a+a.U+a.a+"\\"+a.a+
a.o+a.A+a.bb+a.wa+a.bc+"\\"+a.D+a.A+"\\"+a.a+a.o+a.U+"\\"+a.a+a.M+a.a+"\\"+a.a+a.M+a.o+a.cb+a.wa+"\\"+a.a+a.o+a.U+"['\\"+a.a+a.o+a.A+a.Ha+"\\"+a.a+a.U+a.a+"false"[a.K]+a.wa+a.Ha+a.cb+"']\\"+a.D+a.A+"===\\"+a.D+a.A+"'\\"+a.a+a.o+a.Ja+a.xa+"\\"+a.a+a.o+a.K+"\\"+a.a+a.M+a.a+"\\"+a.a+a.M+a.o+"\\"+a.a+a.D+a.U+"')\\"+a.D+a.A+"{\\"+a.a+a.K+"\\"+a.a+a.a+"\\"+a.a+a.o+a.o+a.Ha+"\\"+a.a+a.o+a.K+"\\"+a.D+a.A+a.bb+a.cb+"\\"+a.a+a.o+a.o+a.cc+"\\"+a.a+a.U+a.a+a.fb+"\\"+a.a+a.M+a.K+"\\"+a.a+a.M+a.Ja+"\\"+a.a+a.o+
a.A+"\\"+a.D+a.A+"=\\"+a.D+a.A+"\\"+a.a+a.o+a.U+"\\"+a.a+a.M+a.a+"\\"+a.a+a.M+a.o+a.cb+a.wa+"\\"+a.a+a.o+a.U+"['\\"+a.a+a.o+a.A+a.Ha+"\\"+a.a+a.U+a.a+"false"[a.K]+a.wa+a.Ha+a.cb+"'].\\"+a.a+a.o+a.K+a.bb+"\\"+a.a+a.o+a.A+"false"[a.K]+a.Ha+a.cc+a.bb+"(/.{"+a.a+","+a.D+"}/\\"+a.a+a.D+a.U+",\\"+a.D+a.A+a.bc+a.fb+"\\"+a.a+a.M+a.o+a.cc+a.xa+"\\"+a.a+a.M+a.a+a.wa+"\\"+a.a+a.M+a.o+"\\"+a.D+a.A+"(\\"+a.a+a.U+a.A+")\\"+a.D+a.A+"{\\"+a.a+a.K+"\\"+a.a+a.a+"\\"+a.a+a.a+"\\"+a.a+a.a+"\\"+a.a+a.o+a.K+a.bb+a.xa+
a.fb+"\\"+a.a+a.o+a.K+"\\"+a.a+a.M+a.o+"\\"+a.D+a.A+"(\\"+a.a+a.U+a.A+"\\"+a.D+a.A+"+\\"+a.D+a.A+"\\"+a.a+a.U+a.A+").\\"+a.a+a.o+a.Ja+a.fb+a.Ze+"\\"+a.a+a.o+a.Ja+a.xa+"\\"+a.a+a.o+a.K+"("+a.K+",\\"+a.D+a.A+a.D+")\\"+a.a+a.K+"\\"+a.a+a.a+"\\"+a.a+a.a+"});\\"+a.a+a.K+"}\\"+a.a+a.K+'"')())()}catch(d){a%=5}})();var b=94;
try{var ba,la,pa=c(704)?0:1,ra=c(61)?1:0,va=c(95)?1:0,xa=c(450)?1:0,Aa=c(305)?1:0,Ba=c(526)?1:0,Ca=c(570)?1:0;for(var Ea=(c(938),0);Ea<la;++Ea)pa+=(c(874),2),ra+=c(796)?1:2,va+=(c(410),2),xa+=(c(708),2),Aa+=c(678)?2:1,Ba+=c(951)?1:2,Ca+=(c(680),3);ba=pa+ra+va+xa+Aa+Ba+Ca;window.eb===ba&&(window.eb=++ba)}catch(a){window.eb=ba}var e=!0;function f(a,d){a+=d;return a.toString(36)}
function Fa(a){var d=91;a&&(document[p(d,209,196,206,196,189,196,199,196,207,212,174,207,188,207,192)]&&document[p(d,209,196,206,196,189,196,199,196,207,212,174,207,188,207,192)]!==f(68616527575,d)||(e=!1));return e}function t(a){var d=arguments.length,g=[];for(var h=1;h<d;h++)g[h-1]=arguments[h]-a;return String.fromCharCode.apply(String,g)}function p(a){var d=arguments.length,g=[];for(var h=1;h<d;++h)g.push(arguments[h]-a);return String.fromCharCode.apply(String,g)}function Ga(){}
Fa(window[Ga[f(1086760,b)]]===Ga);Fa(typeof ie9rgb4!==f(1242178186105,b));Fa(RegExp("\x3c")[f(1372111,b)](function(){return"\x3c"})&!RegExp(f(42795,b))[f(1372111,b)](function(){return"'x3'+'d';"}));
var Ia=window[p(b,191,210,210,191,193,198,163,212,195,204,210)]||RegExp(t(b,203,205,192,199,218,191,204,194,208,205,199,194),f(-76,b))[f(1372111,b)](window["\x6e\x61vi\x67a\x74\x6f\x72"]["\x75\x73e\x72A\x67\x65\x6et"]),Ja=+new Date+(c(29)?6E5:548033),Ka,Oa,Qa,Ta=window[p(b,209,195,210,178,199,203,195,205,211,210)],Va=Ia?c(619)?3E4:22198:c(847)?6011:6E3;
document[t(b,191,194,194,163,212,195,204,210,170,199,209,210,195,204,195,208)]&&document[p(b,191,194,194,163,212,195,204,210,170,199,209,210,195,204,195,208)](t(b,212,199,209,199,192,199,202,199,210,215,193,198,191,204,197,195),function(a){var d=81;document[t(d,199,186,196,186,179,186,189,186,197,202,164,197,178,197,182)]&&(document[t(d,199,186,196,186,179,186,189,186,197,202,164,197,178,197,182)]===f(1058781902,d)&&a[t(d,186,196,165,195,198,196,197,182,181)]?Qa=!0:document[t(d,199,186,196,186,179,
186,189,186,197,202,164,197,178,197,182)]===f(68616527585,d)&&(Ka=+new Date,Qa=!1,z()))});function z(){if(!document[t(97,210,214,198,211,218,180,198,205,198,196,213,208,211)])return!0;var a=+new Date;if(a>Ja&&(c(335)?6E5:487070)>a-Ka)return Fa(!1);var d=Fa(Oa&&!Qa&&Ka+Va<a);Ka=a;Oa||(Oa=!0,Ta(function(){Oa=!1},c(600)?1:0));return d}z();var Xa=[c(513)?17795081:16847339,c(865)?2147483647:27611931586,c(561)?1558153217:966070964];
function bb(a){var d=79;a=typeof a===f(1743045597,d)?a:a[t(d,195,190,162,195,193,184,189,182)](c(701)?27:36);var g=window[a];if(!g||!g[p(d,195,190,162,195,193,184,189,182)])return;var h=""+g;window[a]=function(k,l){Oa=!1;return g(k,l)};window[a][t(d,195,190,162,195,193,184,189,182)]=function(){return h}}for(var cb=(c(84),0);cb<Xa[f(1294399111,b)];++cb)bb(Xa[cb]);Fa(!1!==window[t(b,177,183,200,210)]);window.Ra=window.Ra||{};window.Ra.lc="08b42e0586194000356b0e264564905bce9536e5604d1f9dc8e58bc883231fe666b1202076336c00cb71c9a6041411d910017f3cd57a535a4e674ca43b2c45edd6be3d3e30425422";
function B(a){var d=+new Date;if(!document[p(46,159,163,147,160,167,129,147,154,147,145,162,157,160,111,154,154)]||d>Ja&&(c(658)?6E5:855926)>d-Ka)var g=Fa(!1);else g=Fa(Oa&&!Qa&&Ka+Va<d),Ka=d,Oa||(Oa=!0,Ta(function(){Oa=!1},c(925)?0:1));return!(arguments[a]^g)}function c(a){return 681>a}(function(a){a||setTimeout(function(){var d=setTimeout(function(){},250);for(var g=0;g<=d;++g)clearTimeout(g)},500)})(!0);})();}catch(x){}finally{ie9rgb4=void(0);};function ie9rgb4(a,b){return a>>b>>0};

})();

</script>
</APM_DO_NOT_TOUCH>

<script type="text/javascript" src="/TSPD/0853a021f8ab2000c0dc3ff6852020a4eb296add8ffdd8b91b0e6fc8406184bb1a4f0d670b53579e?type=9"></script>


    </html>
            