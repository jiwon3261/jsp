<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/styles.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<script src="./js/messageBox.js"></script>
<script src="./js/confirmBox.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
    var fileIndex = 0;
    var totalFileSize = 0;
    var fileList = new Array();
    var fileSizeList = new Array();
    var uploadSize = 50;
    var maxUploadSize = 500;
    
    $(function (){
        fileDropDown();
    });
    
    function fileDropDown(){
        var dropZone = $("#dropZone");
        //Drag기능 
        dropZone.on('dragenter',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('dragleave',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#FFFFFF');
        });
        dropZone.on('dragover',function(e){
            e.stopPropagation();
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('drop',function(e){
            e.preventDefault();
            // 드롭다운 영역 css
            dropZone.css('background-color','#FFFFFF');
            
            var files = e.originalEvent.dataTransfer.files;
            if(files != null){
                if(files.length < 1){
                    alert("폴더 업로드 불가");
                    return;
                }
                selectFile(files)
            }else{
                alert("ERROR");
            }
        });
    }
 
    // 파일 선택시
    async function selectFile(files){
        if(files != null){
            for(var i = 0; i < files.length; i++){
            	// 파일 이름
                var fileName = files[i].name;
                var fileNameArr = fileName.split("\.");
                // 확장자
                var ext = fileNameArr[fileNameArr.length - 1];
                // 파일 사이즈(단위 :MB)
                var fileSize = files[i].size/1024/1024;
                if($.inArray(ext, ['jpg', 'png', 'PNG', 'JPG', 'JPEG']) < 0){
                    alert("등록 불가 확장자");
                    break;
                }else if(fileSize > uploadSize){
                    alert("용량 초과\n업로드 가능 용량 : " + uploadSize + " MB");
                    break;
                }else{
                	let bytes = await getImgSource(files[i]);
                	var imgLi = '';
                	var imgDiv = '';
                	
                	if(i == files.length - 1){
                		imgLi = '<li id="liImg_'+i+'" data-target="#demo" data-slide-to="'+i+'" class="active"></li>';
                		imgDiv = '<div id="divImg_'+i+'" class="carousel-item active"><img src="'+bytes+'" class="img-thumbnail"></div>';
                	}else{
                		imgLi = '<li id="liImg_'+i+'" data-target="#demo" data-slide-to="'+i+'"></li>';
                		imgDiv = '<div id="divImg_'+i+'" class="carousel-item"><img src="'+bytes+'" class="img-thumbnail"></div>';
                	}
                	
                	$("#imgLiSection").append(imgLi);
                	$("#imgDivSection").append(imgDiv);
                	
                	totalFileSize += fileSize;
                    fileList[fileIndex] = files[i];
                    fileSizeList[fileIndex] = fileSize;
                    addFileList(fileIndex, fileName, fileSize);
                    fileIndex++;
                }
            }
        }else{
            alert("ERROR");
        }
    }
 
    async function getImgSource(file) {
        return new Promise((resolve, reject) => {
          let contents = "";
          const reader = new FileReader();
          reader.onloadend = function(e) {
            contents = e.target.result;
            resolve(contents);
          };
          reader.readAsDataURL(file);
       });
    }
    
    // 업로드 파일 목록 생성
    function addFileList(fIndex, fileName, fileSize){
        var html = "";
        html += "<tr id='fileTr_" + fIndex + "'>";
        html += "    <td class='left imgList' >";
        html +=         fileName + "<a href='#' onclick='deleteFile(" + fIndex + "); return false;' class='btn small bg_02'>삭제</a>"
        html += "    </td>"
        html += "</tr>"
        $('#fileTableTbody').append(html);
    }
 
    // 업로드 파일 삭제
    function deleteFile(fIndex){
        // 전체 파일 사이즈 수정
        totalFileSize -= fileSizeList[fIndex];
        
        // 파일 배열에서 삭제
        delete fileList[fIndex];
        
        // 파일 사이즈 배열 삭제
        delete fileSizeList[fIndex];
        
        // 업로드 파일 테이블 목록에서 삭제
        $("#fileTr_" + fIndex).remove();
        $("#divImg_" + fIndex).remove();
        $("#liImg_" + fIndex).remove();
    }
 
    // 파일 등록
    function uploadFile(){
    	if($("#content").val().trim() === ''){
        	showMessage("내용을 입력해주세요.");
    		return;
    	}
    	
        var uploadFileList = Object.keys(fileList);
        if(totalFileSize > maxUploadSize){
        	showMessage("총 용량 초과\n총 업로드 가능 용량 : " + maxUploadSize + " MB");
            return;
        }
        
        showConfirm("정말 위 사항대로 등록하시겠습니까?",function(){
            var formData = new FormData();
            for(var i = 0; i < uploadFileList.length; i++){
                formData.append('file_'+i, fileList[uploadFileList[i]]);
            }
            formData.append("content",$("#content").val().trim());
            $.ajax({
                url:"./boardSave.do",
                data:formData,
                type:'POST',
                enctype:'multipart/form-data',
                processData:false,
                contentType:false,
                cache:false,
                success:function(result){
                	location.href="./index.do";
                }
            });
        })
    }
</script>
<div class="modal fade" id="createBoardModal">
	<div class="modal-dialog modal-dialog-scrollable modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">게시물 작성</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<textarea class="form-control" rows="15" id="content"
						name="content" placeholder="내용을 입력해주세요..."></textarea>
				</div>
				<br />
				<div id="demo" class="carousel slide" data-ride="carousel">
					<ul id="imgLiSection" class="carousel-indicators">
					</ul>
					<div id="imgDivSection" class="carousel-inner"></div>
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
				<form name="uploadForm" id="uploadForm"
					enctype="multipart/form-data" method="post">
					<table class="table" width="100%" border="1px">
						<tbody id="fileTableTbody">
							<tr>
								<td id="dropZone" style="height: 100px;">파일을 드래그 하세요</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					onclick="uploadFile()">저 장</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취
					소</button>
			</div>
		</div>
	</div>
</div>
