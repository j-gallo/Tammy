function load_ckeditor(options){
    var data = $('textarea');
    $.each(data, function(i)
    {
      CKEDITOR.replace(data[i].id,options);
    }
    );    
  }
