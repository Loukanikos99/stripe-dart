part of '../../../messages.dart';

/// https://stripe.com/docs/api/checkout/subscription/cancel
@JsonSerializable()
class CancelSubscriptionRequest {
  /// The ID of the subscription that will be cancel.
  final String subscription;

  /// Details about why this subscription was cancelled.
  final CancellationDetails? cancellationDetails;

  CancelSubscriptionRequest({
    required this.subscription,
    this.cancellationDetails,
  });

  factory CancelSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelSubscriptionRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CancelSubscriptionRequestToJson(this);
}
