function allnum(inputtext){
var num=/^[-+]?[0-9]$/;
if(inputtext.value.match(num)){
alert("Correct Number");
document.f1.t4.focus();
return true;
}else{
alert("Enter Correct Number Format"+inputtext);
document.f1.t4.focus();
return false;
}

}