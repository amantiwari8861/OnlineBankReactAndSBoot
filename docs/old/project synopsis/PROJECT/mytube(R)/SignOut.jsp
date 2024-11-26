<html>
<head>
<base target="_top">
<script type="text/javascript">
<%    if(session!=null) {
session.invalidate();
}     %> 
        window.onload = function () { Clear(); }
        function Clear() {            
            var Backlen=history.length;
            if (Backlen > 0) history.go(-Backlen);
        }
</script>
<script>
window.location="index.jsp";
</script>

</head>

</html>