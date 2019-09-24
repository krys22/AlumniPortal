<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    Admin Messages
    <div class="row">
       @include('messages.admin_messages')
    </div>
    <hr>
    Received Messages
    <div class="row">
       @include('messages.received_messages')
    </div>
    <hr>
    Sent Messages
    <div class="row" id="sent_messages">
        @include('messages.sent_messages')
    </div>
<hr>
    <div class="row">
        <div class="col-sm-5 col-md-5">

        </div>
        <div class="col-sm-5 col-md-5">
            <button type="button"  class="btn btn-success" data-toggle="modal" data-target="#myModal">Send Message</button>
        </div>
    </div>
</div>

<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Message</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xl-12" id="resp"></div>
                </div>
                <p><input class="form-control" name="receiver" id="receiver"  placeholder="Receiver Email / Admin"/></p>
                <p><input class="form-control" name="subject" id="subject"  placeholder="Subject of Message"/></p>
                <hr>
                <textarea class="form-control"  name="message" id="message" required placeholder="Enter Body of Message Here">

                </textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="send_message">Send</button>
                <button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<script>
    $(document).ready(function(){
        $('#send_message').click(function(e) {

            e.preventDefault();

            var receiver = $("#receiver").val();
            var subject = $("#subject").val();
            var message = $("#message").val();
            $csrf_token = "<?php echo e(csrf_token()); ?>";

            if($.trim(receiver) == ''){

                $("#resp").html("<p class='alert alert-danger'>You have to enter the receiver</p>");
                console.log("You have to enter the receiver " +$("#receiver").val());
            }else if($.trim(subject) == ''){
                $("#resp").html("<p class='alert alert-danger'>You have to Indicate the subject</p>");
                e.preventDefault();
            }else if($.trim(message) == ''){
                $("#resp").html("<p class='alert alert-danger'>You have to write a message. That is the point of the Modal Genius</p>");
                e.preventDefault();
            }else{

                const formData = {'receiver':receiver, 'subject':subject, 'message':message,
                     '_token':$csrf_token};

                $.ajax({
                    url: '/send_message',
                    type: 'POST',
                    data: formData
                })
                        .done(function (data) {
                            if(data[0].success == 1){
                                $("#resp").html("<p class='alert alert-success'>"+data[0].message+"</p>")
                                setTimeout(function(){
                                    $('#myModal').modal('hide');
                                    $("#resp").html("")
                                }, 3000);
                            }else{
                                $("#resp").html("<p class='alert alert-danger'>"+data[0].message+"</p>")
                            }
                        })
                        .fail(function (jqXHR, textStatus, errorThrown) {
                            console.log(errorThrown);
                        });
            }
        });
    })
</script>