
<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="student.aspx.cs" Inherits="WebApplication1.student" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Student Management</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet" />
</head>

<body class="bg-light">

    <form id="form1" runat="server">

        <div class="container py-5">

            <div class="card shadow-sm border-0 mx-auto" style="max-width: 750px;">

                <div class="card-header bg-primary text-white p-4">
                    <h2 class="mb-1">Student Management</h2>
                    <p class="mb-0">Add, view, and delete student records</p>
                </div>

                <div class="card-body p-4">

                    <!-- Add Student -->
                    <h5 class="mb-3">Add New Student</h5>

                    <div class="mb-3">
                        <asp:Label ID="Label1" runat="server"
                            Text="Student Name:"
                            AssociatedControlID="txtName"
                            CssClass="form-label" />

                        <asp:TextBox ID="txtName" runat="server"
                            CssClass="form-control"
                            placeholder="Enter student name" />
                    </div>

                    <div class="mb-3">
                        <asp:Label ID="lblAge" runat="server"
                            Text="Student Age:"
                            AssociatedControlID="txtAge"
                            CssClass="form-label" />

                        <asp:TextBox ID="txtAge" runat="server"
                            CssClass="form-control"
                            TextMode="Number"
                            placeholder="Enter student age" />
                    </div>

                    <asp:Button ID="btnAdd" runat="server"
                        Text="Add Student"
                        CssClass="btn btn-primary"
                        OnClick="btnAdd_Click" />

                    <div class="mt-3">
                        <asp:Label ID="lblMessage" runat="server"
                            CssClass="fw-semibold" />
                    </div>

                    <hr class="my-4" />

                    <!-- Show Students -->
                    <h5 class="mb-3">Student Records</h5>

                    <asp:Button ID="btnShow" runat="server"
                        Text="Show Students"
                        CssClass="btn btn-success mb-3"
                        OnClick="btnShow_Click" />

                    <div class="border rounded bg-white p-3 mb-4">
                        <asp:Label ID="lblStudents" runat="server" />
                    </div>

                    <hr class="my-4" />

                    <!-- Delete Student -->
                    <h5 class="mb-3">Delete Student</h5>

                    <div class="mb-3">
                        <asp:Label ID="lblDelete" runat="server"
                            Text="Enter Student ID:"
                            AssociatedControlID="txtStudentId"
                            CssClass="form-label" />

                        <asp:TextBox ID="txtStudentId" runat="server"
                            CssClass="form-control"
                            placeholder="Enter Firebase student ID" />
                    </div>

                    <asp:Button ID="btnDelete" runat="server"
                        Text="Delete Student"
                        CssClass="btn btn-danger"
                        OnClick="btnDelete_Click"
                        OnClientClick="return confirm('Are you sure you want to delete this student?');" />

                    <div class="mt-3">
                        <asp:Label ID="lblDeleteMessage" runat="server"
                            CssClass="fw-semibold" />
                    </div>

                </div>
            </div>

        </div>

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
