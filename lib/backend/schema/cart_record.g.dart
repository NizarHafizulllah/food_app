// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.table;
    if (value != null) {
      result
        ..add('table')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qty;
    if (value != null) {
      result
        ..add('qty')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPrice;
    if (value != null) {
      result
        ..add('total_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CartRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'table':
          result.table = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty':
          result.qty = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_price':
          result.totalPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CartRecord extends CartRecord {
  @override
  final int table;
  @override
  final int qty;
  @override
  final int totalPrice;
  @override
  final int status;
  @override
  final String name;
  @override
  final int sellPrice;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$CartRecord([void Function(CartRecordBuilder) updates]) =>
      (new CartRecordBuilder()..update(updates)).build();

  _$CartRecord._(
      {this.table,
      this.qty,
      this.totalPrice,
      this.status,
      this.name,
      this.sellPrice,
      this.image,
      this.reference})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        table == other.table &&
        qty == other.qty &&
        totalPrice == other.totalPrice &&
        status == other.status &&
        name == other.name &&
        sellPrice == other.sellPrice &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, table.hashCode), qty.hashCode),
                            totalPrice.hashCode),
                        status.hashCode),
                    name.hashCode),
                sellPrice.hashCode),
            image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartRecord')
          ..add('table', table)
          ..add('qty', qty)
          ..add('totalPrice', totalPrice)
          ..add('status', status)
          ..add('name', name)
          ..add('sellPrice', sellPrice)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord _$v;

  int _table;
  int get table => _$this._table;
  set table(int table) => _$this._table = table;

  int _qty;
  int get qty => _$this._qty;
  set qty(int qty) => _$this._qty = qty;

  int _totalPrice;
  int get totalPrice => _$this._totalPrice;
  set totalPrice(int totalPrice) => _$this._totalPrice = totalPrice;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

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

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _table = $v.table;
      _qty = $v.qty;
      _totalPrice = $v.totalPrice;
      _status = $v.status;
      _name = $v.name;
      _sellPrice = $v.sellPrice;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartRecord build() {
    final _$result = _$v ??
        new _$CartRecord._(
            table: table,
            qty: qty,
            totalPrice: totalPrice,
            status: status,
            name: name,
            sellPrice: sellPrice,
            image: image,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
