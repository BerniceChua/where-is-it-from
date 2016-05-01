$(function () {

    var input = document.querySelector('input[type=file]'); // see Example 4

    input.onchange = function () {
      var file = input.files[0];

      upload(file);
      drawOnCanvas(file);   // see Example 6
      displayAsImage(file); // see Example 7
    };

    function upload(file) {
      var form = new FormData();
          // xhr = new XMLHttpRequest();

      form.append('image', file);
      // xhr.open('post', 'api/v1/lookup/image', true);
      // xhr.send(form);
      
      request = $.ajax({
        url: 'api/v1/lookup/image',
        data: form,
        processData: false,
        contentType: false,
        type: 'POST',
        dataType: 'html',
        success: function(response){
            console.log(response);
            $('#responseDiv').children().html(response);

            // console.log(response.logo);
            // console.log(response.text);
            // if (response.logo) {
            //     console.log("there is a logo recognized!");
            // } else {
            //     console.log("deal with the response text");
            // }

        }
      });
    };


    function drawOnCanvas(file) {
      var reader = new FileReader();

      reader.onload = function (e) {
        var dataURL = e.target.result,
            c = document.querySelector('canvas'), // see Example 4
            ctx = c.getContext('2d'),
            img = new Image();

        img.onload = function() {
          c.width = img.width;
          c.height = img.height;
          ctx.drawImage(img, 0, 0);
        };

        img.src = dataURL;
      };

      reader.readAsDataURL(file);
    }

    function displayAsImage(file) {
      var imgURL = URL.createObjectURL(file),
          img = document.createElement('img');

      img.onload = function() {
        URL.revokeObjectURL(imgURL);
      };

      img.src = imgURL;
      document.body.appendChild(img);
    }



    // $('#scanImage').fileupload({
    //     dataType: 'json',
    //     add: function (e, data) {
    //         data.context = $('<button/>').text('Upload')
    //             .appendTo(document.body)
    //             .click(function () {
    //                 data.context = $('<p/>').text('Uploading...').replaceAll($(this));
    //                 data.submit();
    //             });
    //     },
    //     done: function (e, data) {
    //         data.context.text('Upload finished.');
    //     }
    // });
});

