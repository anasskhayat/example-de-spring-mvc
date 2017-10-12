<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/angular.min.js"></script>
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="js/bs-table.min.js"></script>
        <script type="text/javascript" src="js/readJson.js"></script>
        <script type="text/javascript" src="js/angular-table.js"></script>
        <script type="text/javascript" src="js/angular-tabs.min.js"></script>
        <style>
            .main-container {
                margin: 30px;
                /*margin: auto;*/
                /*margin-top: 60px;*/
                /*margin: 20px 0px 20px 0px;*/
            }
 
            .redBg {
                background-color: red;
            }
 
            .custom-table-style {
                width: 100%;
            }
 
            .custom-table-style td, .custom-table-style th {
                color: white;
                background-color: black;
 
                border: solid;
                border-color: red;
 
                text-align: center;
            }
 
        </style>
     
 
     
         
 
         
 
         
 
         
 
        <div ng-controller="PhoneListCtrl">
                <table class="table table-striped" at-table="" at-paginated="" at-list="list" at-config="config">
                    <thead>
 
                        <tr>
                            <th at-attribute="age" class="age" custom-sort="" order="'age'" sort="sort">edad </th>
                            <th at-attribute="id" class="id" custom-sort="" order="'id'" sort="sort">id </th>
                            <th at-attribute="name" class="name" custom-sort="" order="'name'" sort="sort">Name </th>
                            <th at-attribute="snippet" class="snippet" custom-sort="" order="'snippet'" sort="sort">snippet </th>
 
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng:repeat="i in phones| orderBy : 'age'">
                            <td at-implicit="" at-sortable="" at-attribute="age" width="150" at-initial-sorting="asc">{{i.age}}</td>
                            <td at-implicit="" at-sortable="" at-attribute="id">{{i.id}}</td>
                            <td at-implicit="" at-sortable="" at-attribute="name" width="250">{{i.name}}</td>
                            <td at-implicit="" at-sortable="" at-attribute="snippet">{{i.snippet}}</td>
                        </tr>
                    </tbody>
                </table>
                <at-pagination at-list="list" at-config="config"></at-pagination>
             
        </div>
 
    