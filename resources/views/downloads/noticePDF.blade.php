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
        <th>Group</th>
        <th>Subject</th>
        <th>Message</th>
        <th>Sent On</th>
    </tr>
    @if(!empty($notices))
        <?php $cnt=1; ?>
        @foreach($notices as $notice)
            <tr>
                <td>{{$cnt++}}</td>
                <td>{{$notice->filter}}</td>
                <td>{{$notice->subject}}</td>
                <td>{{$notice->message}}</td>
                <td>{{$notice->created_at}}</td>
            </tr>
        @endforeach
    @endif

</table>

</body>
</html>
