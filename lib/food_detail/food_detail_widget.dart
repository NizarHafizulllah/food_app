import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class FoodDetailWidget extends StatefulWidget {
  FoodDetailWidget({
    Key key,
    this.foodDetail,
    this.sellPrice,
  }) : super(key: key);

  final ProductRecord foodDetail;
  final int sellPrice;

  @override
  _FoodDetailWidgetState createState() => _FoodDetailWidgetState();
}

class _FoodDetailWidgetState extends State<FoodDetailWidget> {
  TextEditingController qtyController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int sellPrice = 0;

  @override
  void initState() {
    super.initState();
    qtyController = TextEditingController(text: '1');
    sellPrice = widget.foodDetail.sellPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'Detail Makanan',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.foodDetail.image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  widget.foodDetail.name,
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      'Rp.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 20),
                      child: Text(
                        sellPrice.toString(),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xFFC2C4CA),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      onPressed: () {
                        print('IconButton pressed ...');
                        qtyController.text = int.parse(qtyController.text) > 1
                            ? (int.parse(qtyController.text) - 1).toString()
                            : "1";
                        setState(() {
                          sellPrice = widget.foodDetail.sellPrice *
                              int.parse(qtyController.text);
                        });
                      },
                      icon: Icon(
                        Icons.remove_circle_outline_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                      iconSize: 30,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: qtyController,
                        obscureText: false,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'Qty',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print('IconButton pressed ...');
                        qtyController.text =
                            (int.parse(qtyController.text) + 1).toString();
                        setState(() {
                          sellPrice = widget.foodDetail.sellPrice *
                              int.parse(qtyController.text);
                        });
                      },
                      icon: Icon(
                        Icons.add_box_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xFFC2C4CA),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final cartCreateData = createCartRecordData(
                    table: 1,
                    qty: int.parse(qtyController.text),
                    totalPrice: int.parse(qtyController.text) *
                        widget.foodDetail.sellPrice,
                    status: 0,
                    name: widget.foodDetail.name,
                    sellPrice: widget.foodDetail.sellPrice,
                    image: widget.foodDetail.image,
                  );
                  await CartRecord.collection.doc().set(cartCreateData);
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Sukses'),
                        content: Text('Makanan Ditambahkan Ke Keranjang'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                  Navigator.pop(context);
                },
                text: 'Tambah Ke Keranjang',
                icon: Icon(
                  Icons.add_shopping_cart,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
