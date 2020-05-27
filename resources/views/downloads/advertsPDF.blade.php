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
        <th>Subject</th>
        <th>Message</th>
        <th>Category</th>
        <th>Sent On</th>

    </tr>
    @if(!empty($advertisements))
        <?php $cnt=1; ?>
        @foreach($advertisements as $advertisement)
            <tr>

                <td>{{$cnt++}}</td>
                <td>{{$advertisement->subject}}</td>
                <td>{{$advertisement->message}}</td>
                <td>{{$advertisement->category}}</td>
                <td>{{$advertisement->created_at}}</td>
            </tr>
        @endforeach
    @endif

</table>

</body>
</html>
