// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductRecord> _$productRecordSerializer =
    new _$ProductRecordSerializer();

class _$ProductRecordSerializer implements StructuredSerializer<ProductRecord> {
  @override
  final Iterable<Type> types = const [ProductRecord, _$ProductRecord];
  @override
  final String wireName = 'ProductRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sellPrice;
    if (value != null) {
      result
        ..add('sell_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProductRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sell_price':
          result.sellPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductRecord extends ProductRecord {
  @override
  final String name;
  @override
  final int price;
  @override
  final int sellPrice;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$ProductRecord([void Function(ProductRecordBuilder) updates]) =>
      (new ProductRecordBuilder()..update(updates)).build();

  _$ProductRecord._(
      {this.name, this.price, this.sellPrice, this.image, this.reference})
      : super._();

  @override
  ProductRecord rebuild(void Function(ProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductRecordBuilder toBuilder() => new ProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductRecord &&
        name == other.name &&
        price == other.price &&
        sellPrice == other.sellPrice &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), price.hashCode), sellPrice.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('sellPrice', sellPrice)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class ProductRecordBuilder
    implements Builder<ProductRecord, ProductRecordBuilder> {
  _$ProductRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _sellPrice;
  int get sellPrice => _$this._sellPrice;
  set sellPrice(int sellPrice) => _$this._sellPrice = sellPrice;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProductRecordBuilder() {
    ProductRecord._initializeBuilder(this);
  }

  ProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _sellPrice = $v.sellPrice;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductRecord;
  }

  @override
  void update(void Function(ProductRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductRecord build() {
    final _$result = _$v ??
        new _$ProductRecord._(
            name: name,
            price: price,
            sellPrice: sellPrice,
            image: image,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
