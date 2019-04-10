// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// 1. Hijack the link

// this only hijacks the link on localhost:3000/workouts
// do i also have to hijack the link on the mainhomepage
// $(document).ready(function(){
//     $("#new_workout").on("submit", function(e){
//         e.preventDefault();
//         url = this.action // /workouts/
//         //debugger
//         //alert("you click it!!");
//     $.ajax({ 
//          type: "POST", 
//          url: url, 
//          data: $(this).serialize(), 
//          success: function(response){
//                     debugger
//                     //debugger; // go into the console and just see that response gives you the correct ol
//                     //now you want to send this to the DOM. 
//             //$("#comment_content").val("")
//             //var $ol = $("#comments")
//                      //this doesn't append correctly, and it needs to be contained.
//             //$ol.append(response);
//                 }
//             })
//         })
//     })


    
    //         })    
    //             // send a POST request to the correct place that form would've gone too anyway
    //             // along with the actual form data. 
        
    //         })   
    // })
