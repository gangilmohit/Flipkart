
      function formValidation(){
         var name =  document.getElementById("name").value;

         if(name=="")
         {
             alert("empty");
             element.focus();
             return false;
        }
      }
