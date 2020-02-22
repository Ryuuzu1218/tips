$(document).on('turbolinks:load', function() {

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
});