import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdmzj/component/LoadingTile.dart';
import 'package:flutterdmzj/http/http.dart';
import 'package:flutterdmzj/utils/tool_methods.dart';
import 'package:flutterdmzj/view/novel_pages/novel_detail_page.dart';

import '../ranking_page.dart';

class NovelLatestUpdatePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NovelLatestUpdatePage();
  }
  
}

class _NovelLatestUpdatePage extends State<NovelLatestUpdatePage>{
  int page = 0;
  bool refreshState = false;
  List list = <Widget>[LoadingTile()];
  ScrollController _controller = ScrollController();

  getLatestList() async {
    CustomHttp http = CustomHttp();
    var response = await http.getNovelLatestList(page);
    if (response.statusCode == 200 && mounted) {
      setState(() {
        if (page == 0) {
          list.clear();
        } else {
          list.removeLast();
        }
        if (response.data.length == 0) {
          refreshState = true;
          return;
        }
        for (var item in response.data) {
          list.add(_CustomListTile(item['cover'], item['name'], item['types'].join('/'),
              item['last_update_time'], item['id'], item['authors']));
        }
        refreshState = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLatestList();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent &&
          !refreshState) {
        setState(() {
          refreshState = true;
          page++;
          list.add(LoadingTile());
        });
        getLatestList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      onRefresh: () async {
        if (!refreshState) {
          setState(() {
            refreshState = true;
            page = 0;
            list.clear();
            list.add(LoadingTile());
          });
          await getLatestList();
        }
        return;
      },
      child: Scrollbar(
        child: SingleChildScrollView(
          controller: _controller,
          child: Container(
              margin: EdgeInsets.fromLTRB(3, 0, 0, 10),
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return list[index];
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }
  
}

class _CustomListTile extends StatelessWidget {
  final String cover;
  final String title;
  final String types;
  final int date;
  final String authors;
  String formatDate = '';
  final int novelID;

  _CustomListTile(this.cover, this.title, this.types, this.date, this.novelID,
      this.authors) {
    formatDate = ToolMethods.formatTimestamp(date);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntrinsicHeight(
        child: FlatButton(
          padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NovelDetailPage(id: novelID,);
            }));
          },
          child: Card(
            child: Row(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl: '$cover',
                  httpHeaders: {'referer': 'http://images.dmzj.com'},
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress),),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 100,
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                title,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.supervisor_account,
                                      color: Colors.grey[500],
                                    ),
                                    Text(
                                      authors,
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.category,
                                      color: Colors.grey[500],
                                    ),
                                    Text(
                                      types,
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.history,
                                      color: Colors.grey[500],
                                    ),
                                    Text(
                                      formatDate,
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}