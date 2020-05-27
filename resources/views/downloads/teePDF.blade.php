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
        <th>Tournament</th>
        <th>Tee</th>
        <th>Member</th>
        <th>Phone</th>
        <th>Time</th>
        <th>Players</th>
    </tr>
    @if(!empty($tees))
        <?php $cnt=1; ?>
        @foreach($tees as $tee)
            <tr>
                <td>{{$cnt++}}</td>
                <td>{{$tee->game->tournament}}</td>
                <td>{{$tee->tee->tee}}</td>
                <td>{{$tee->client->firstName}} {{$tee->client->middleName}} {{$tee->client->lastName}}</td>
                <td>{{$tee->phone}}</td>
                <td>{{$tee->date_time}}</td>
                <td>{{$tee->player1}}<br>{{$tee->player2}}<br>{{$tee->player3}}</td>
            </tr>
        @endforeach
    @endif

</table>

</body>
</html>
