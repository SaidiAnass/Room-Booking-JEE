/* <![CDATA[ */
/// Jquery validate newsletter
jQuery(document).ready(function(){

    $('#newsletter_2').submit(function(){

        var action = $(this).attr('action');

        $("#message-newsletter_2").slideUp(750,function() {
            $('#message-newsletter_2').hide();

            $('#submit-newsletter_2')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    email_newsletter_2: $('#email_newsletter_2').val()
                },
                function(data){
                    document.getElementById('message-newsletter_2').innerHTML = data;
                    $('#message-newsletter_2').slideDown('slow');
                    $('#newsletter_2 .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-newsletter_2').removeAttr('disabled');
                    if(data.match('success') != null) $('#newsletter_2').slideUp('slow');

                }
            );

        });

        return false;

    });

});
// Jquery validate form contact
jQuery(document).ready(function(){

    $('#contactform').submit(function(){
        'use strict';
        var action = $(this).attr('action');

        $("#message-contact").slideUp(750,function() {
            $('#message-contact').hide();

            $('#submit-contact')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    name_contact: $('#name_contact').val(),
                    lastname_contact: $('#lastname_contact').val(),
                    email_contact: $('#email_contact').val(),
                    phone_contact: $('#phone_contact').val(),
                    message_contact: $('#message_contact').val(),
                    verify_contact: $('#verify_contact').val()
                },
                function(data){
                    document.getElementById('message-contact').innerHTML = data;
                    $('#message-contact').slideDown('slow');
                    $('#contactform .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-contact').removeAttr('disabled');
                    if(data.match('success') != null) $('#contactform').slideUp('slow');

                }
            );

        });

        return false;

    });
});

/// Jquery validate review tour
jQuery(document).ready(function(){

    $('#review_tour').submit(function(){

        var action = $(this).attr('action');

        $("#message-review").slideUp(750,function() {
            $('#message-review').hide();

            $('#submit-review')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    tour_name: $('#tour_name').val(),
                    name_review: $('#name_review').val(),
                    lastname_review: $('#lastname_review').val(),
                    email_review: $('#email_review').val(),
                    position_review: $('#position_review').val(),
                    guide_review: $('#guide_review').val(),
                    price_review: $('#price_review').val(),
                    quality_review: $('#quality_review').val(),
                    review_text: $('#review_text').val(),
                    verify_review: $('#verify_review').val()
                },

                function(data){
                    document.getElementById('message-review').innerHTML = data;
                    $('#message-review').slideDown('slow');
                    $('#review_tour .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-review').removeAttr('disabled');
                    if(data.match('success') != null) $('#review_tour').slideUp('slow');

                }
            );

        });

        return false;

    });

});

// Jquery validate review hotel
jQuery(document).ready(function(){

    $('#review_hotel').submit(function(){

        var action = $(this).attr('action');

        $("#message-review").slideUp(750,function() {
            $('#message-review').hide();

            $('#submit-review')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    hotel_name: $('#hotel_name').val(),
                    name_review: $('#name_review').val(),
                    lastname_review: $('#lastname_review').val(),
                    email_review: $('#email_review').val(),
                    room_type_review: $('#room_type_review').val(),
                    cleanliness_review: $('#cleanliness_review').val(),
                    comfort_review: $('#comfort_review').val(),
                    price_review: $('#price_review').val(),
                    quality_review: $('#quality_review').val(),
                    review_text: $('#review_text').val(),
                    verify_review: $('#verify_review').val()
                },

                function(data){
                    document.getElementById('message-review').innerHTML = data;
                    $('#message-review').slideDown('slow');
                    $('#review_hotel .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-review').removeAttr('disabled');
                    if(data.match('success') != null) $('#review_hotel').slideUp('slow');

                }
            );

        });

        return false;

    });

});
// Jquery validate review transfer
jQuery(document).ready(function(){

    $('#review_transfer').submit(function(){

        var action = $(this).attr('action');

        $("#message-review").slideUp(750,function() {
            $('#message-review').hide();

            $('#submit-review')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    transfer_name: $('#transfer_name').val(),
                    name_review: $('#name_review').val(),
                    lastname_review: $('#lastname_review').val(),
                    email_review: $('#email_review').val(),
                    comfort_review: $('#comfort_review').val(),
                    punctuality_review: $('#punctuality_review').val(),
                    price_review: $('#price_review').val(),
                    kindness_review: $('#kindness_review').val(),
                    review_text: $('#review_text').val(),
                    verify_review: $('#verify_review').val()
                },

                function(data){
                    document.getElementById('message-review').innerHTML = data;
                    $('#message-review').slideDown('slow');
                    $('#review_transfer .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-review').removeAttr('disabled');
                    if(data.match('success') != null) $('#review_transfer').slideUp('slow');

                }
            );

        });

        return false;

    });

});
/// Jquery validate review restaurant
jQuery(document).ready(function(){

    $('#review_restaurant').submit(function(){

        var action = $(this).attr('action');

        $("#message-review").slideUp(750,function() {
            $('#message-review').hide();

            $('#submit-review')
                .after('<i class="icon-spin4 animate-spin loader"></i>')
                .attr('disabled','disabled');

            $.post(action, {
                    restaurant_name: $('#restaurant_name').val(),
                    name_review: $('#name_review').val(),
                    lastname_review: $('#lastname_review').val(),
                    email_review: $('#email_review').val(),
                    position_review: $('#position_review').val(),
                    service_review: $('#service_review').val(),
                    price_review: $('#price_review').val(),
                    quality_review: $('#quality_review').val(),
                    review_text: $('#review_text').val(),
                    verify_review: $('#verify_review').val()
                },

                function(data){
                    document.getElementById('message-review').innerHTML = data;
                    $('#message-review').slideDown('slow');
                    $('#review_restaurant .loader').fadeOut('slow',function(){$(this).remove()});
                    $('#submit-review').removeAttr('disabled');
                    if(data.match('success') != null) $('#review_restaurant').slideUp('slow');

                }
            );

        });

        return false;

    });

});
/* ]]> */