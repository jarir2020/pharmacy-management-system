<?php $session = session();?>
<?php
$error = (!empty($validation)?$validation:'');
?>
<?php if ($session->getFlashdata('message')) { ?>
<script>
document.addEventListener('DOMContentLoaded', function() {
    if (typeof toastr !== 'undefined') {
        toastr.success('<?php echo addslashes($session->getFlashdata("message")) ?>', '', {timeOut: 3000, progressBar: true, positionClass: 'toast-top-right'});
    } else {
        var d = document.createElement('div');
        d.className = 'alert alert-success alert-dismissible';
        d.innerHTML = '<button type="button" class="close" data-dismiss="alert">&times;</button><?php echo addslashes($session->getFlashdata("message")) ?>';
        var msgs = document.getElementById('flash-messages');
        if(msgs) msgs.appendChild(d);
    }
});
</script>
<?php } ?>
<?php if ($session->getFlashdata('exception')) { ?>
<script>
document.addEventListener('DOMContentLoaded', function() {
    if (typeof toastr !== 'undefined') {
        toastr.error('<?php echo addslashes($session->getFlashdata("exception")) ?>', '', {timeOut: 3000, progressBar: true, positionClass: 'toast-top-right'});
    } else {
        var d = document.createElement('div');
        d.className = 'alert alert-danger alert-dismissible';
        d.innerHTML = '<button type="button" class="close" data-dismiss="alert">&times;</button><?php echo addslashes($session->getFlashdata("exception")) ?>';
        var msgs = document.getElementById('flash-messages');
        if(msgs) msgs.appendChild(d);
    }
});
</script>
<?php } ?>
<?php if ($error) { ?>
<script>
document.addEventListener('DOMContentLoaded', function() {
    if (typeof toastr !== 'undefined') {
        toastr.error('<?php echo addslashes(strip_tags($error->listErrors())) ?>', '', {timeOut: 5000, progressBar: true, positionClass: 'toast-top-right', allowHtml: true});
    } else {
        var d = document.createElement('div');
        d.className = 'alert alert-danger alert-dismissible';
        d.innerHTML = '<button type="button" class="close" data-dismiss="alert">&times;</button><?php echo addslashes(strip_tags($error->listErrors())) ?>';
        var msgs = document.getElementById('flash-messages');
        if(msgs) msgs.appendChild(d);
    }
});
</script>
<?php } ?>
<div id="flash-messages"></div>
