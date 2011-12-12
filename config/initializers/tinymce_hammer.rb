Tinymce::Hammer.install_path = 'public/javascripts/tiny_mce'
Tinymce::Hammer.plugins = %w(safari table paste tabfocus)
Tinymce::Hammer.init = [
  [:paste_convert_headers_to_strong, true],
  [:paste_convert_middot_lists, true],
  [:paste_remove_spans, true],
  [:paste_remove_styles, true],
  [:paste_strip_class_attributes, true],
  [:theme, 'advanced'],
  [:theme_advanced_toolbar_align, 'left'],
  [:theme_advanced_toolbar_location, 'top'],
  [:theme_advanced_buttons1,'undo,redo,|,bold,italic,
                             strikethrough,blockquote,charmap,bullist,numlist,
                             removeformat,|,link,unlink,image,|,cleanup,code,|,tablecontrols'],
 # [:theme_advanced_buttons2,'justifyleft,justifycenter,justifyright,justifyfull,
 #                            |,styleselect,formatselect,fontselect,fontsizeselect'],
 # [:theme_advanced_buttons3, ''],
 # [:valid_elements, "a[href|title],blockquote[cite],br,caption,cite,code,dl,dt,dd,em,i,img[src|alt|
 #                    title|width|height|align],li,ol,p,pre,q[cite],small,strike,strong/
 #                    b,sub,sup,u,ul"],

  [:theme_advanced_buttons1, 'save,newdocument,|,bold,italic,underline,
                              strikethrough,|,justifyleft,justifycenter,
                              justifyright,justifyfull,|,styleselect,formatselect,
                              fontselect,fontsizeselect'],

  [:theme_advanced_buttons2, 'cut,copy,paste,pastetext,pasteword,
                              |,bullist,numlist,|,outdent,indent,blockquote,|,undo,
                              redo,|,link,unlink,anchor,image,cleanup,help,code,|,forecolor,backcolor'],

  [:theme_advanced_buttons3, 'tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,
                              charmap'],

]
