if(typeof(CKEDITOR) != 'undefined')
{
  CKEDITOR.editorConfig = function(config) {
    config.title = "asdasd";
    config.uiColor = "#f5f5f5";
    config.toolbar = [
          ['Format','Font','FontSize'],
      ['Bold','Italic','Underline','Strike'],
            ['TextColor','BGColor'],

      ['NumberedList','BulletedList'],
      ['Image', '-', 'Link','Unlink','LinkToNode', 'LinkToMenu'],      

      ['HorizontalRule','SpecialChar'],
      ['Maximize'],
      ['DrupalBreak', 'DrupalPageBreak'] ];
  }
} else{
  console.log("ckeditor not loaded")
}