import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_record.g.dart';

abstract class ProductRecord
    implements Built<ProductRecord, ProductRecordBuilder> {
  static Serializer<ProductRecord> get serializer => _$productRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: 'sell_price')
  int get sellPrice;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductRecordBuilder builder) => builder
    ..name = ''
    ..price = 0
    ..sellPrice = 0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductRecord._();
  factory ProductRecord([void Function(ProductRecordBuilder) updates]) =
      _$ProductRecord;

  static ProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductRecordData({
  String name,
  int price,
  int sellPrice,
  String image,
}) =>
    serializers.toFirestore(
        ProductRecord.serializer,
        ProductRecord((p) => p
          ..name = name
          ..price = price
          ..sellPrice = sellPrice
          ..image = image));
