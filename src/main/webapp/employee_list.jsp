<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Employees List</title>
    <style>
        body {
            background-color: white;
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        h1 {
            text-align: center;
            color: #18ab29;
        }

        .greenButton {
            background-color: #44c767;
            border-radius: 16px;
            border: 1px solid #18ab29;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 14px;
            padding: 8px 16px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #2f6627;
            margin-bottom: 10px;
        }

        .greenButton:hover {
            background-color: #5cbf2a;
        }

        .redButton {
            box-shadow: inset 0px 39px 0px -24px #e67a73;
            background-color: #e4685d;
            border-radius: 4px;
            border: 1px solid #ffffff;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 12px;
            padding: 6px 10px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #b23e35;
        }

        .redButton:hover {
            background-color: #eb675e;
        }

        .redButton:active {
            position: relative;
            top: 1px;
        }

        .editButton {
            border: 1px solid #44c767;
            background-color: #ffffff;
            color: #44c767;
            padding: 6px 10px;
            margin-left: 5px;
            border-radius: 4px;
            font-size: 12px;
        }

        .editButton:hover {
            border: 1px solid #5cbf2a;
            background-color: #5cbf2a;
            color: #ffffff;
        }

        .buttonsWrapper {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .roundedTable {
            border-collapse: collapse;
            width: 100%;
            border-radius: 10px;
        }

        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #44c767;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Employees List</h1>
    <div class="buttonsWrapper">
        <a href="<%=request.getContextPath()%>/new" class="greenButton">Add Employee</a>
    </div>
    <table class="roundedTable">
        <caption><h2>Employees</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Position</th>
            <th>Phone</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="employee" items="${listEmployee}">
            <tr>
                <td><c:out value="${employee.id}" /></td>
                <td><c:out value="${employee.name}" /></td>
                <td><c:out value="${employee.position}" /></td>
                <td><c:out value="${employee.phone}" /></td>
                <td>
                    <div class="buttonsWrapper">
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />" class="editButton">Edit</a>
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />" class="redButton">Delete</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
