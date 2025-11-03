Past similar preferences can inform future preferences

"Similar users" have similar taste.

Value opinions of similar people higher.

If your friend rates a TV-show 1/5, and a random on IG reels comments rates it a 5/5, believe your friend.
Do not do an average => 3/5, do a weighted average:
I believe my friend twice as much as a random.
66% 1/5
33% 5/5
Thus, 2.33/5 is my predicted score



Disadvantages:
- Expensive compute, there are a lot of pairs, computing cosine similarity for each is expensive.
- Sparcity: empty cells
- grey sheep, users who belong in the middle of two user clusters
- black sheep, users who belong nowhere near any clusters

Collaborative filtering generally does _not_ rely on item metadata; it primarily relies on user-to-user or item-to-item rating patterns.