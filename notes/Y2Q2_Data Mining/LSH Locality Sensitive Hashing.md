The goal is that points that are close in the original space hash to the same bucket with high probability, and points that are far hash to different buckets with high probability.

**OR-construction**: We take multiple hash functions/groups and say “two points collide (i.e., are in the same bin) if **any** of their hash signatures match.”
**AND-construction** in LSH says that two points collide only if **all** the hash signatures (in a group) match.


|                  |                      |                      |                    |
| ---------------- | -------------------- | -------------------- | ------------------ |
| OR-construction  | more false positives | some false negatives | more loosey goosey |
| AND-construction | some false positives | more false negatives | more constraints   |
|                  |                      |                      |                    |
