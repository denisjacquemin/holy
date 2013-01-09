$(document).on("click", "#lostmypwdlink, #signuplink, #loginlink", -> 
  current_modal = $(this).parents('.modal') # get ref of current modal
  current_modal.modal('hide') # hide current modal
  url = $(this).attr('href') # get target url
  target_modal = $(this).attr('data-target') # get target modal
  # show lostmypassword modal
  $(target_modal).modal({
    remote: url
  })
  false
)