
<%@ Page Language="C#" AutoEventWireup="true"
    Async="true"
    CodeBehind="login.aspx.cs"
    Inherits="WebApplication1.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card p-4 mx-auto" style="max-width: 450px;">

                <h2 class="mb-4">Login</h2>

                <asp:Label ID="lblEmail" runat="server"
                    Text="Email:" />

                <asp:TextBox ID="txtEmail" runat="server"
                    TextMode="Email"
                    CssClass="form-control mb-3" />

                <asp:Label ID="lblPassword" runat="server"
                    Text="Password:" />

                <asp:TextBox ID="txtPassword" runat="server"
                    TextMode="Password"
                    CssClass="form-control mb-3" />

                <asp:Button ID="btnLogin" runat="server"
                    Text="Login"
                    CssClass="btn btn-primary"
                    OnClick="btnLogin_Click" />

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="d-block mt-3" />

            </div>
        </div>
    </form>
</body>
</html>
