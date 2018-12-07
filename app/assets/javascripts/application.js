// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap/dist/js/bootstrap
//= require_tree .

$(document).on('turbolinks:load',
    function()
    {
        $("#profile").click(
            function()
            {
                if($("#oauth").length != 0)
                {
                    if($("#oauth").innerHeight == 0)
                    {
                        $("#oauth").slideToggle({height: "250px"}, 500)
                    }
                    else
                    {
                        $("#oauth").slideToggle({height: "0px"}, 500)
                    }        
                }
        
                if($("#user-settings").length != 0)
                {
                    if($("#user-settings").innerHeight == 0)
                    {
                        $("#user-settings").slideToggle({height: "250px"}, 500)
                    }
                    else
                    {
                        $("#user-settings").slideToggle({height: "0px"}, 500)
                    }        
                }
                
            }
        )
    }
)
