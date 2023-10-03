import 'package:job_finder/data/models/notification_model.dart';
import 'package:job_finder/utils/assets.gen.dart';

List<NotificationModel> notificationData = [
  NotificationModel(
    company: 'Elux Space',
    assets: Assets.png.elux.path,
    dateAt: 'Thu, 5 Jan 2023 at 12.00',
    step: 'interview_user',
    description: 'Elux Space invite you to user interview',
  ),
  NotificationModel(
    company: 'Gojek',
    assets: Assets.png.gojek.path,
    dateAt: 'Thu, 5 Jan 2023 at 11.00',
    step: 'interview_hrd',
    description: 'Gojek invite you for a HRD interview',
  ),
  NotificationModel(
    company: 'Tokopedia',
    assets: Assets.png.tokped.path,
    dateAt: 'Mon, 2 Jan 2023 at 18.00',
    step: 'failed',
    description: "Sorry you didn't pass the screening",
  ),
  NotificationModel(
    company: 'Flip',
    assets: Assets.png.flip.path,
    dateAt: 'Thu, 2 Jan 2023 at 14.00',
    step: 'review_cv',
    description: "Flip review your CV",
  ),
  NotificationModel(
    company: 'Traveloka',
    assets: Assets.png.traveloka.path,
    dateAt: 'Mon, 2 Jan 2023 at 12.00',
    step: 'screening_passed',
    description: "Congratulation you escape screening",
  ),
];
