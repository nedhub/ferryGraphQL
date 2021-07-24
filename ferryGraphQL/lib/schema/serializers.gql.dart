import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferryGraphQL/schema/schema.schema.gql.dart'
    show
        GCacheControlScope,
        GContinentFilterInput,
        GCountryFilterInput,
        GLanguageFilterInput,
        GStringQueryOperatorInput,
        GUpload;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCacheControlScope,
  GContinentFilterInput,
  GCountryFilterInput,
  GLanguageFilterInput,
  GStringQueryOperatorInput,
  GUpload
])
final Serializers serializers = _serializersBuilder.build();
