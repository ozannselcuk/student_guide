import 'package:best_flutter_ui_templates/model/app_theme.dart';
import 'package:flutter/material.dart';

class TechnoPark extends StatefulWidget {
  @override
  _TechnoParkState createState() => _TechnoParkState();
}

class _TechnoParkState extends State<TechnoPark> {
  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/tekonkent.jpg'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Karabuk TechnoPark',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: Colors.blue,
                thickness: 2,
                indent: 25,
                endIndent: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'İleri teknoloji alanında çeşitli disiplinlere hitap eden, yenilikçilik ve girişimcilik kültürünün gelişmesini sağlayacak üniversite sanayi işbirliği mekanizmaları ve kurumlarını barındıran bir ortam sunmak, Bu ortamda yer alan akademisyenlere, girişimcilere, şirketlere ve çalışanlarına uluslararası rekabet imkanı sağlayacak kalitede profesyonel teknopark hizmetleri sunmak ve Girişimciliği teşvik ederek yeni şirketlerin kurulmasını ve mevcut şirketlerin yeniliğe dayalı olarak büyümesini sağlamaktır. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Departments',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
