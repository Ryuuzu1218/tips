$(document).on('turbolinks:load', function() {
  //クリックするとtipsを表示したり隠したりする。
  let opens=$(".opens")
  let closes=$(".closes")
  function tipsopen(){
    $(this).closest('.a-memo').find(".switchin").removeClass("blind")
    $(this).closest('.a-memo').find(".switchout").addClass("blind")
  }
  function tipsclose(){
    $(this).closest('.a-memo').find(".switchout").removeClass("blind")
    $(this).closest('.a-memo').find(".switchin").addClass("blind")
  }

  opens.click(tipsopen)
  closes.click(tipsclose)
  //入力フォームが空白の場合エラーが発生する
  $(document).ready(function () {
    $("#form-name").validationEngine();
  });
  

  
});