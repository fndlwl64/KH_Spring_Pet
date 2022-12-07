<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<jsp:include page="../../include/admin_header.jsp" />
<script src="resources/js/admin.js"></script>
<link rel="stylesheet" href="resources/css/admin_include.css">
<body>
<div class="d-flex justify-content-center">
    <form action="<%=request.getContextPath() %>/user_animal_insert" method="post" enctype="multipart/form-data" onsubmit="return submitOption();">
        <table class="table">
            <tr>
                <th class="table-secondary">종류</th>
                <td>
                    <select name="animal_tag" class="form-select" id="tag" onchange="optionChange();">
                    	<option value=""></option>
                        <option value="dog">강아지</option>
                        <option value="cat">고양이</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="table-secondary">품종</th>
                <td><select name="animal_species" class="form-control" id="species"></select></td>
            </tr>
            <tr>
                <th class="table-secondary">이름</th>
                <td><input type="text" name="animal_name" class="form-control" id="name"></td>
            </tr>
            <tr>
                <th class="table-secondary">성별</th>
                <td>
                    <select name="animal_gender" class="form-select" id="gender">
                        <option value=""></option>
                        <option value="male">수컷</option>
                        <option value="female">암컷</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="table-secondary">중성화</th>
                <td>
                    <select name="animal_neutered" class="form-select" id="neutered">
                        <option value=""></option>
                        <option value="Y">O</option>
                        <option value="N">X</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="table-secondary">예방 접종</th>
                <td>
                    <select name="animal_vaccination" class="form-select" id="vaccination">
                        <option value=""></option>
                        <option value="Y">O</option>
                        <option value="N">X</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="table-secondary">나이</th>
                <td><input type="number" name="animal_age" class="form-control" id="age"></td>
            </tr>
            <tr>
                <th class="table-secondary">발견 장소</th>
                <td><input type="text" name="animal_place" class="form-control" id="place"></td>
            </tr>
            <tr>
                <th class="table-secondary">크기</th>
                <td>
                    <select name="animal_size" class="form-select" id="size">
                    	<option value=""></option>
                        <option value="소형">소형</option>
                        <option value="중형">중형</option>
                        <option value="대형">대형</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="table-secondary">무게</th>
                <td><input type="number" name="animal_weight" class="form-control" id="weight"></td>
            </tr>
            <tr>
                <th class="table-secondary">상세 내용</th>
                <td><textarea name="animal_caution" class="form-control" id="content"></textarea></td>
            </tr>
            <tr>
                <th class="table-secondary">첨부 이미지</th>
                <td><input type="file" name="files" id="files" class="form-control" accept="image/gif, image/jpeg, image/png"
                           onchange="fileOption();" multiple></td>
            </tr>
            <tr>
                <td colspan="2" class="text-center"><input type="submit" value="입양 등록" class="btn btn-primary"></td>
            </tr>
        </table>
    </form>
</div>
<script>

        /*동적 동물 선택 태그*/
        function optionChange(){
            const dog = ["말티즈","푸들","포메라니안","믹스견","치와와","시츄","골든리트리버","진돗개"];
            const cat = ["스코티시 폴드","샴","페르시안","터키시 앙고라","러시안 블루","벵갈","먼치킨","아비시니안"];
            let result;
            let tag = $('#tag').val();
            if (tag === 'cat'){
                result = cat;
            }else if(tag === 'dog'){
                result = dog;
            }
            $('#species').empty();
            $('#species').append('<option></option>');
            for (let i=0;i<result.length ; i++){
                $('#species').append('<option value='+result[i]+'>'+ result[i] + '</option>');
            }
        }
        /*파일 전송 수 제한*/
        function fileOption(){
            let files = document.getElementById("files");
            if (files.files.length>3){
                alert("이미지 파일은 3개 까지만 가능합니다.");
                document.getElementById("files").value = "";
                return;
            }
        }
        
        function  submitOption(){
        	if ($('#tag').val() == ''){
                alert("동물 종류를 골라주세요");
                return false;
            }
        	if ($('#species').val() == ''){
                alert("품종을 골라주세요");
                return false;
            }
        	if ($('#name').val() == ''){
                alert("이름을 적어주세요");
                return false;
            }
        	if ($('#gender').val() == ''){
                alert("성별을 골라주세요");
                return false;
            }
        	if ($('#neutered').val() == ''){
                alert("중성화 여부를 골라주세요");
                return false;
            }
        	if ($('#vaccination').val() == ''){
                alert("백신 여부를 골라주세요");
                return false;
            }
        	if ($('#age').val() == ''){
                alert("나이를 적어주세요");
                return false;
            }
        	if ($('#place').val() == ''){
                alert("발견한 장소를 적어주세요");
                return false;
            }
        	if ($('#size').val() == ''){
                alert("크기를 골라주세요");
                return false;
            }
        	if ($('#weight').val() == ''){
                alert("무게를 적어주세요");
                return false;
            }
        	if ($('#content').val() == ''){
                alert("내용을 적어주세요");
                return false;
            }
        	
        	
        	/*파일 최소 1개 이상 전송 경고*/	
        	let files = document.getElementById("files");
            if (files.files.length<1){
                alert("최소 1개 이상의 이미지를 보내주세요");
                return false;
            }
            
            
        }
       
</script>
</body>
<!-- <body>
<br><br>
<div class="div1" align="center">
	<form>
		<table class="table">
			<tr>
				<th class="table-secondary"><span class="sp2">종류</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">성별</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">중성화여부</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">예방접종여부</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">나이</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">발견장소</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">크기</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">무게</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">유의사항</span></th>
				<td><textarea rows="2" cols="22"></textarea> </td>
			</tr>
			<tr>
				<th class="table-secondary"><span class="sp2">입양상태</span></th>
				<td><input class ="input1" type="text"></td>
			</tr>
		</table>
		<br>
		<div class="div2">
			<div>
				<input type="file" onchange="readURL1(this);">
				<input type="file" onchange="readURL2(this);">
				<input type="file" onchange="readURL3(this);">
			</div>
			<div>
				<img class="preview" id="preview1"/>
				<img class="preview" id="preview2"/>
				<img class="preview" id="preview3"/>
			</div>
		</div>
		<br><br>
		<input id="update_btn" type="submit" value="등록" align="center">
	</form>
</div>
</body> -->
</html>