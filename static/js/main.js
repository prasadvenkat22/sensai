(function($)){
    $('form').submit(function(event){
        event.preventDefault();
        var data= new FormData(this)
    var action = function(d)
        {console.log(d);
        };
        $.ajax({
            url: '/api/files',
            data:data.append


        })
    
    }
}