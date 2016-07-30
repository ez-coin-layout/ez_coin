// 以下API用
$(function(){
  params = location.href.split("?");
  paramms = params.length>1&&params[1].split("&");
  var paramArray = [];
  for ( i = 0; i < paramms.length; i++ ) {
    vl = paramms[i].split("=");
    paramArray.push(vl[0]);
    paramArray[vl[0]] = vl[1];
  }

  if (params.length > 1) {
    if ('token' in paramArray) {
      $("#entrance_token").val( paramArray["token"]);
    }
    if ('transaction_identity' in paramArray) {
      $("#entrance_transaction_identity").val( paramArray["transaction_identity"]);
    }
    if ('email' in paramArray) {
      $("#entrance_email").val( paramArray["email"]);
    }
    if ('amount' in paramArray) {
      $("#entrance_amount").val( paramArray["amount"]);
    }
    if ('point' in paramArray) {
      $("#entrance_point").val( paramArray["point"]);
    }
  }
});
