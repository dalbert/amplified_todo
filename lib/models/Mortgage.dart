/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Mortgage type in your schema. */
@immutable
class Mortgage extends Model {
  static const classType = const _MortgageModelType();
  final String id;
  final double? _startBalance;
  final double? _interestRate;
  final int? _termMonths;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MortgageModelIdentifier get modelIdentifier {
      return MortgageModelIdentifier(
        id: id
      );
  }
  
  double? get startBalance {
    return _startBalance;
  }
  
  double? get interestRate {
    return _interestRate;
  }
  
  int? get termMonths {
    return _termMonths;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Mortgage._internal({required this.id, startBalance, interestRate, termMonths, createdAt, updatedAt}): _startBalance = startBalance, _interestRate = interestRate, _termMonths = termMonths, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Mortgage({String? id, double? startBalance, double? interestRate, int? termMonths}) {
    return Mortgage._internal(
      id: id == null ? UUID.getUUID() : id,
      startBalance: startBalance,
      interestRate: interestRate,
      termMonths: termMonths);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mortgage &&
      id == other.id &&
      _startBalance == other._startBalance &&
      _interestRate == other._interestRate &&
      _termMonths == other._termMonths;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Mortgage {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("startBalance=" + (_startBalance != null ? _startBalance!.toString() : "null") + ", ");
    buffer.write("interestRate=" + (_interestRate != null ? _interestRate!.toString() : "null") + ", ");
    buffer.write("termMonths=" + (_termMonths != null ? _termMonths!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Mortgage copyWith({double? startBalance, double? interestRate, int? termMonths}) {
    return Mortgage._internal(
      id: id,
      startBalance: startBalance ?? this.startBalance,
      interestRate: interestRate ?? this.interestRate,
      termMonths: termMonths ?? this.termMonths);
  }
  
  Mortgage.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _startBalance = (json['startBalance'] as num?)?.toDouble(),
      _interestRate = (json['interestRate'] as num?)?.toDouble(),
      _termMonths = (json['termMonths'] as num?)?.toInt(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'startBalance': _startBalance, 'interestRate': _interestRate, 'termMonths': _termMonths, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'startBalance': _startBalance, 'interestRate': _interestRate, 'termMonths': _termMonths, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<MortgageModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<MortgageModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField STARTBALANCE = QueryField(fieldName: "startBalance");
  static final QueryField INTERESTRATE = QueryField(fieldName: "interestRate");
  static final QueryField TERMMONTHS = QueryField(fieldName: "termMonths");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Mortgage";
    modelSchemaDefinition.pluralName = "Mortgages";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mortgage.STARTBALANCE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mortgage.INTERESTRATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mortgage.TERMMONTHS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _MortgageModelType extends ModelType<Mortgage> {
  const _MortgageModelType();
  
  @override
  Mortgage fromJson(Map<String, dynamic> jsonData) {
    return Mortgage.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Mortgage';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Mortgage] in your schema.
 */
@immutable
class MortgageModelIdentifier implements ModelIdentifier<Mortgage> {
  final String id;

  /** Create an instance of MortgageModelIdentifier using [id] the primary key. */
  const MortgageModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'MortgageModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MortgageModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}