import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _linkController = TextEditingController();

  String _videoId = '';
  String _title = '';
  String _thumbnailUrl = '';

  Future<void> _fetchVideoData() async {
    final uri = Uri.parse(
        'https://www.googleapis.com/youtube/v3/videos?id=$_videoId&part=snippet&key=AIzaSyCTQsmRHZfXBbZ4946D5C3ZyXFyZfK-PfE');
    final response = await http.get(uri);
    final data = json.decode(response.body);
    final snippet = data['items'][0]['snippet'];

    setState(() {
      _title = snippet['title'];
      _thumbnailUrl = snippet['thumbnails']['high']['url'];
    });
  }

  Future<void> _downloadVideo() async {
    // TODO: Implement video download using the http package
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download YouTube Video'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _linkController,
              decoration: InputDecoration(
                labelText: 'YouTube Video Link',
              ),
              onChanged: (value) {
                final uri = Uri.parse(value);
                final queryParams = uri.queryParameters;
                setState(() {
                  _videoId = queryParams['v']!;
                });
              },
            ),
            SizedBox(height: 16.0),
            if (_title.isNotEmpty)
              Text(
                _title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            if (_thumbnailUrl.isNotEmpty)
              SizedBox(
                height: 200.0,
                child: Image.network(
                  _thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                _fetchVideoData();
              },
              child: Text('Fetch Video Data'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _downloadVideo();
              },
              child: Text('Download Video'),
            ),
          ],
        ),
      ),
    );
  }
}

