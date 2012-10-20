$(function() {
    $('#upload').uploadify({
    	'swf'      		 : 'img/uploadify.swf',    	
    	'uploader'       : 'upload!upload.action',
        'cancelImg'      : 'img/uploadify-cancel.png',  
    	'buttonText'     : '选择文件',
    	'fileObjName'	 : 'upload',  
    	'auto'           : false,  
    	'multi'          : true,  
    	'fileSizeLimit'  : "100MB",  
    	'uploadLimit' 	 : 10,
    	'onUploadSuccess': addToSucList
    });
    $('#upload_btn').click(function() {
    	$('#upload').uploadify('upload','*');
	});
    $('#clear_btn').click(function() {
    	$('#upload').uploadify('cancel','*');
	});
    $("#file_list").hide();
    
	CKEDITOR.replace( 'editor',
			{
				fullPage : true,
				extraPlugins : 'docprops',
				filebrowserImageUploadUrl : 'upload!upload_picture.action' 
			});
});


function addToSucList(file,data,response){
	tr = $("<tr></tr>");
	tr.append("<td>"+file.name+"</td>");
	tr.append("<td>"+parseInt(file.size/1024)+" KB</td>");
	tr.append("<td>"+file.type+"</td>");
	tr.append("<td>"+file.creationdate+"</td>");
	tr.append("<td>"+file.modificationdate+"</td>");
	$("#file_list").show().append(tr);
}
