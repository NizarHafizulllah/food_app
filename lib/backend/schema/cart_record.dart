import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @nullable
  int get table;

  @nullable
  int get qty;

  @nullable
  @BuiltValueField(wireName: 'total_price')
  int get totalPrice;

  @nullable
  int get status;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'sell_price')
  int get sellPrice;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..table = 0
    ..qty = 0
    ..totalPrice = 0
    ..status = 0
    ..name = ''
    ..sellPrice = 0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCartRecordData({
  int table,
  int qty,
  int totalPrice,
  int status,
  String name,
  int sellPrice,
  String image,
}) =>
    serializers.toFirestore(
        CartRecord.serializer,
        CartRecord((c) => c
          ..table = table
          ..qty = qty
          ..totalPrice = totalPrice
          ..status = status
          ..name = name
          ..sellPrice = sellPrice
          ..image = image));
