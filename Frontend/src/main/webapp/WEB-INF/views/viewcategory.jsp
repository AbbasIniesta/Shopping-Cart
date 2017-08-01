<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
<style>

@import url(https://fonts.googleapis.com/css?family=Ubuntu:300,400,700);

html
{
  background-size: cover;
  height: 100%;
  font-family: Ubuntu;
  font-size: 18px;
  color: #fff;
  text-shadow: 1px 0px 2px rgba(0, 0, 0, 0.4)
}

#logo
{
  position: fixed;
  top: 500px;
  right: 25px;
  opacity: 0.5;
}

#logo:hover
{
  opacity: 1;
}

caption
{
  font-size: 64px;
  margin: 25px;
  color: #222;
  text-shadow: 0px 1px 1px rgba(255, 255, 255, 0.4);
}

table
{
  text-align: left;
  /* overflow-y: hidden; */
  width: 625px;
  border-collapse:collapse;
  margin: 0 auto;
  max-width: 625px;
  background: rgba(255, 255, 255, 0.15);
}

td, th
{
  padding: 16px;
  width: 200px;
  line-height: 18px;
  font-weight: 300;
}

thead
{
  display: block;
  background: rgba(255, 255, 255, 0.5);
}

th
{
  border-bottom: 0;
  color: white;
  color: #444;
  font-weight: 700;
  text-shadow: 0px 1px 1px rgba(255, 255, 255, 0.7);
}

th:last-child
{
  width: 219px;
}

tbody
{
  width: 100%;
  overflow-y: hidden;
  /* height: 200px; */
  display: list-item;
}

tr:nth-child(even)
{
  background: rgba(255, 255, 255, 0.15);
}

tr td:first-child
{
  font-weight: bold;
}

</style>
</head>

<body>

<table>
  
  <caption>Category Form</caption>
    <tr>
      <th>S.No</th>
      <th>CategoryId</th>
      <th>CategoryName</th>
      <th>CategoryDesc</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>

<c:forEach items="${categoryList}" var="category" varStatus="status">
<tr>
<td>${status.count}</td>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td><a href="editCategory?categoryId=${category.categoryId}" >Edit</a></td>
<td><a href="deleteCategory?categoryId=${category.categoryId}" > Delete</a></td>
</tr>
</c:forEach>

</table>
</body>
</html>


