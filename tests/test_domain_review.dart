import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(53, 35, 19, 83);
  assert(DomainReviewLens.score(item) == 167);
  assert(DomainReviewLens.lane(item) == 'ship');
}
