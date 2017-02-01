<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <title>Simple Calc</title>
</head>
<body>
    <div style="width:800px; margin:0 auto;">
        
    
    <form id="form1" runat="server">
        <div>
            First Number:<br />
            <input type="number" name="First Number" value="" />
            <br />
        </div>

        <div class="form-group input-lg">
            <select name="Choice">
                <% foreach (var option in Options)
                    { %>
                <option value="<%=option %>"><%= option %></option>
                <% } %>
            </select>
        </div>
        
        <div>
            Second Number:<br />
            <input type="number" name="Second Number" value=""/>
            <br />
        </div>
        <br />
        <input type="submit" class="btn btn-default" value="Calculate"/>
    </form>
        <br />
        <h1>The answer is <%=Answer%></h1>
</div>
</body>
</html>
