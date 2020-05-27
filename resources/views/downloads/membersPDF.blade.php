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
        <th>Full Name</th>
        <th>Email</th>
        <th>Phone No</th>
        <th>Group</th>
        <th>Location</th>
        <th>Profession</th>
        <th>Created At</th>

    </tr>
    @if(!empty($clients))
        <?php $cnt=1; ?>
        @foreach($clients as $client)
            <tr>

                <td>{{$cnt++}}</td>
                <td>{{$client->firstName}} {{$client->middleName}} {{$client->lastName}}</td>
                <td>{{$client->email}}</td>
                <td>{{$client->phone}}</td>
                <td>{{$client->group_id}}</td>
                <td>{{$client->location}}</td>
                <td>{{$client->workPlace}}</td>
                <td>{{$client->created_at}}</td>
            </tr>
        @endforeach
    @endif

</table>

</body>
</html>
