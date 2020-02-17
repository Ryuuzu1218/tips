$(function(){
  let opens=$(".opens")
  let closes=$(".closes")
  let memos=$(".a-memo").closest()
  function tipsopen(){
    // $(".switchin").removeClass("blind")
    // $(".switchout").addClass("blind")
    const index=memos.index(this)
    $(".switchin").eq(index).removeClass("blind");
    // $(".switchout").eq(index).addClass("blind");
console.log(memos)
  }
  function tipsclose(){
    $(".switchout").removeClass("blind")
    $(".switchin").addClass("blind")
  }


  opens.click(tipsopen)
  closes.click(tipsclose)
})