<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Update_Products.aspx.cs" Inherits="EcommerceShop.Create_Update_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin: 20px;
  padding: 20px;
  border: 1px solid #ccc;
}

label {
  font-weight: bold;
}

input, textarea {
  margin-bottom: 10px;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label runat="server"> Tên sản phẩm</asp:Label>
<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        <br />        <asp:Label runat="server"> Gía sản phẩm</asp:Label>

<asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
        <br />    
<asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
<asp:TextBox ID="txtImageUrl" runat="server"></asp:TextBox>
<asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
<asp:TextBox ID="txtSupplier" runat="server"></asp:TextBox>
<asp:Button runat="server" Text="Update" "/>
    </form>
</body>

</html>
<script>
    document.querySelector('form').addEventListener('submit', (event) => {
        event.preventDefault(); // Ngăn chặn form submit
        const name = document.querySelector('#name').value;
        const description = document.querySelector('#description').value;
        const price = document.querySelector('#price').value;
     
    });
</script>