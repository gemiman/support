import '/validation/rules.dart';

/// Default validation rules for Nylo
/// https://nylo.dev/docs/5.20.0/validation#validation-rules
final Map<String, dynamic> nyDefaultValidations = {
  "email": (attribute) => EmailRule(attribute),
  "boolean": (attribute) => BooleanRule(attribute),
  "is_true": (attribute) => IsTrueRule(attribute),
  "is_false": (attribute) => IsFalseRule(attribute),
  "is_type": (attribute) => IsTypeRule(attribute),
  "contains": (attribute) => ContainsRule(attribute),
  "url": (attribute) => URLRule(attribute),
  "string": (attribute) => StringRule(attribute),
  "max": (attribute) => MaxRule(attribute),
  "min": (attribute) => MinRule(attribute),
  "not_empty": (attribute) => NotEmptyRule(attribute),
  "capitalized": (attribute) => CapitalizedRule(attribute),
  "lowercase": (attribute) => LowerCaseRule(attribute),
  "uppercase": (attribute) => UpperCaseRule(attribute),
  "regex": (attribute) => RegexRule(attribute),
  "date": (attribute) => DateRule(attribute),
  "date_age_is_younger": (attribute) => DateAgeIsYoungerRule(attribute),
  "date_age_is_older": (attribute) => DateAgeIsOlderRule(attribute),
  "date_in_past": (attribute) => DateInPastRule(attribute),
  "date_in_future": (attribute) => DateInFutureRule(attribute),
  "numeric": (attribute) => NumericRule(attribute),
  "phone_number_us": (attribute) => PhoneNumberUsRule(attribute),
  "phone_number_uk": (attribute) => PhoneNumberUkRule(attribute),
  "zipcode_us": (attribute) => ZipCodeUsRule(attribute),
  "postcode_uk": (attribute) => PostCodeUkRule(attribute),
  "password_v1": (attribute) => PasswordV1Rule(attribute),
  "password_v2": (attribute) => PasswordV2Rule(attribute),
};
