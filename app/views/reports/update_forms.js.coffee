$("#forms_select").empty()
.append("<%= escape_javascript(render(:partial => @forms)) %>")