import 'package:common_data/src/model/entry_log.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_ticket_and_entry_log.freezed.dart';
part 'profile_with_ticket_and_entry_log.g.dart';

@freezed
class ProfileWithTicketAndEntryLog with _$ProfileWithTicketAndEntryLog {
  const factory ProfileWithTicketAndEntryLog({
    required String id,
    required String email,
    required Profile profile,
    required Ticket? ticket,
    required EntryLog? entryLog,
  }) = _ProfileWithTicketAndEntryLog;

  factory ProfileWithTicketAndEntryLog.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithTicketAndEntryLogFromJson(json);
}

@freezed
class ProfileWithTicketAndEntryLogArgument
    with _$ProfileWithTicketAndEntryLogArgument {
  const factory ProfileWithTicketAndEntryLogArgument({
    bool? hasTicket,
    bool? hasEntryLog,
    String? userIdContains,
    String? emailContains,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(ProfileWithTicketAndEntryLogSort.id)
    ProfileWithTicketAndEntryLogSort sortBy,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(SortOrder.asc)
    SortOrder sortOrder,
  }) = _ProfileWithTicketAndEntryLogArgument;

  factory ProfileWithTicketAndEntryLogArgument.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileWithTicketAndEntryLogArgumentFromJson(json);
}

enum ProfileWithTicketAndEntryLogSort {
  id('id'),
  email('email'),
  createdAt('ticket->>created_at'),
  ticketType('ticket->>type'),
  entryLog('entry_log->>created_at'),
  ;

  const ProfileWithTicketAndEntryLogSort(this.order);

  final String order;
}

enum SortOrder {
  asc,
  desc,
  ;
}

@freezed
class ProfileWithTicketAndEntryLogView with _$ProfileWithTicketAndEntryLogView {
  const factory ProfileWithTicketAndEntryLogView({
    required String id,
    required String email,
    required ProfileTable profile,
    required Ticket? ticket,
    required EntryLog? entryLog,
  }) = _ProfileWithTicketAndEntryLogView;

  factory ProfileWithTicketAndEntryLogView.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileWithTicketAndEntryLogViewFromJson(json);
}
