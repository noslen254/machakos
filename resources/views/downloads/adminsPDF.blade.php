<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #3c8dbc;
  color: white;
}
</style>
</head>
<body>

<table id="customers">
  <tr>
    <th>#</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Phone No</th>
    <th>Role</th>
    <th>Created At</th>

  </tr>
  @if(!empty($users))
     <?php $cnt=1; ?>
    @foreach($users as $user)
    <tr>
       
        <td>{{$cnt++}}</td>
        <td>{{$user->name}}</td>
        <td>{{$user->lastName}}</td>
        <td>{{$user->email}}</td>
        <td>{{$user->phone}}</td>
        <td>
          @if($user->role==3) 
            Admin
          @elseif($user->role==4)
            SuperAdmin
          @endif  
        </td>
        <td>{{$user->created_at}}</td>
    </tr>
    @endforeach
  @endif

</table>

</body>
</html>