// lauch when the DOM is ready
$( document ).ready(function() {
	
    pageNumber = 1; 
    endOfBox = false;
    whichBox = "inbox";
    
    getMailRecord();
	
	// add event listener to mailbox sidebar div
	$("#inbox, #important, #trash").click(function(event){
        //console.log(event.target.id+" clicked.");
        $("#records").html("");
        
        whichBox = event.target.id; // record current inbox
        
        pageNumber=1; //reset page number to initial value
        
        switch(whichBox) { //make some buttons hidden for different context or change attr
			case "inbox":
				$("#move2inbox").css({"visibility": "hidden"});
				$("#move2important").css({"visibility": "visible"});
				$("#delete").attr({"value":"Delete"});
				$("#delete").addClass("button-normal").removeClass("button-error");
				$("#inbox").addClass("current").removeClass("noncurrent");
				$("#important, #trash").addClass("noncurrent").removeClass("current");
				break;
			case "important":
				$("#move2inbox").css({"visibility": "visible"});
				$("#move2important").css({"visibility": "hidden"});
				$("#delete").attr({"value":"Delete"});
				$("#delete").addClass("button-normal").removeClass("button-error");
				$("#important").addClass("current").removeClass("noncurrent");
				$("#inbox, #trash").addClass("noncurrent").removeClass("current");
				break;
			default:
				$("#move2inbox").css({"visibility": "visible"});
				$("#move2important").css({"visibility": "visible"});
				$("#delete").attr({"value":"Delete Forever"});
				$("#delete").addClass("button-error").removeClass("button-normal");
				$("#trash").addClass("current").removeClass("noncurrent");
				$("#important, #inbox").addClass("noncurrent").removeClass("current");
				
				
		}
		
		// in case user leave the mail content page by clicking mailbox sidebar
		$('input[type="button"]').each(function() {
		    this.disabled = false;
		});
		
        getMailRecord(); // display record in email division
        
    }); // end of onclick event listener
    
    // add eventlistener to 'Delete' button
    $("#delete").click(function(event){
    	
		var list = getCheckedBox();
		if(whichBox=="trash"){
			var para="handleMailboxChange.php?newBox=none&itemID[]="+list[0];
		}else{ 
			var para="handleMailboxChange.php?newBox=trash&itemID[]="+list[0];
		}
		var i=0;
		$("#"+list[0]).remove();
		for(i=1; i<list.length;i++){
			para+= "&itemID[]="+list[i];
			$("#"+list[i]).remove();
		}
		
		$.get(para);
		
		setTimeout(function(){ getMailRecord() }, 500);
    });
    
    $("#move2inbox").click(function(event){ 
    	
    	var list = getCheckedBox();
		var para="handleMailboxChange.php?newBox=inbox&itemID[]="+list[0];
		var i=0;
		$("#"+list[0]).remove();
		for(i=1; i<list.length;i++){
			para+= "&itemID[]="+list[i];
			$("#"+list[i]).remove();
		}
		
		$.get(para);
		
		setTimeout(function(){ getMailRecord() }, 500);
		
    });
    
    $("#move2important").click(function(event){ 
    	
    	var list = getCheckedBox();
		var para="handleMailboxChange.php?newBox=important&itemID[]="+list[0];
		var i=0;
		$("#"+list[0]).remove();
		for(i=1; i<list.length;i++){
			para+= "&itemID[]="+list[i];
			$("#"+list[i]).remove();
		}
		
		$.get(para);
		
		setTimeout(function(){ getMailRecord() }, 500);
    });
    
    // add eventlistener to '<' button
    $("#lastpage").click(function(event){ 
    	if(pageNumber>1){
    		pageNumber--;
    	}
    	getMailRecord();
    });
    
    // add eventlistener to '>' button
    $("#nextpage").click(function(event){
    	if(!endOfBox){
			pageNumber++;
			getMailRecord();
    	}
    });
    
    
    
}); // end of $( document ).ready(function()



function regRecordClickEvent(){
	$(".record").click(function(event){
		var itemID=event.target.id;
		if(event.target.className=="record")
			getMailContent(itemID);
	});
} // end of regRecordClickEvent()



function getMailRecord(){  // typeStr:string
	
    $.getJSON("handleEmailDisplay.php?pageNumber="+pageNumber+
    		  "&mailboxtype="+whichBox, 
      function(result){
      		if(result.length!=0){
			    var temp="";
			    $.each(result, function(i, row){
			        temp+="<div class=\"record\" id=\""+row['emailID']+"\">"+
			                "<div class=checkbox><input type=\"checkbox\" class=\"box\" name=\""+row['emailId']+"\"></div>" + 
			                "<div class=\"sender\">" + row['sender'] +"</div>" + 
			                "<div class=\"title\">" + row['title'] +"</div>" + 
			                "<div class=\"date\">" + row['date'] +"</div>" + 
			              "</div>";
			    });
			    $("#records").html("");
			    $("#records").append(temp);
			    regRecordClickEvent();
			    endOfBox=false;
	        }else{
	        	$("#records").html("");
	        	$("#records").html("<h2>End of "+whichBox+"</h2>");
	        	endOfBox=true;
	        }
      });
       
} // end pf getMailRecord()



function getMailContent(itemID){  // typeStr:string
	
	$('input[type="button"]').each(function() {
        this.disabled = true;
    });
	
    $.getJSON("handleContentRequest.php?itemID="+itemID, 
      function(result){
      		if(result.length!=0){
			    
			    var temp="<table id=\"emailContentTable\" class=\"pure-table pure-table-bordered\">"+
			    		 "<tr><td>Title: </td> <td>"+result.title+"</td></tr>"+
			    		 "<tr><td>Date: </td> <td>"+result.date+"</td></tr>"+
			    		 "<tr><td>Sender: </td> <td>"+result.sender+"</td></tr>"+
			    		 "<tr><td>Content: </td> <td>"+result.content+"</td></tr>"+
			    		 "</table><input id=\"back\" type=\"button\" value=\"Back to previous page\" class=\"button-arrow pure-button\">";
			    		 
			    $("#records").html("");
			    $("#records").append(temp);
			    $("#back").click(function(event){
			    	getMailRecord();
			    	$('input[type="button"]').each(function() {
						this.disabled = false;
					});
			    });
	        }else{
	        	alert("<h2>Email Not found.</h2>");
	        }
      }); 
} // end pf getMailRecord()


function getCheckedBox(){
	var checkedBox = Array();
	$('.record input:checked').each(function() {
		checkedBox.push( $(this).parent().parent().attr("id"));
	});
	console.log(checkedBox);
	
	return checkedBox;
	
} // end of getCheckedBox()
