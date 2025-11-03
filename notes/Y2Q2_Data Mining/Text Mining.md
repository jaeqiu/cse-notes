Text mining transforms unstructured text into actionable insights through pattern discovery and analysis.


- **Forward Index**: For each document, it stores the list of terms (or tokens) that appear.
- **Inverted Index**: For each term, it stores the list of documents where the term appears.

**TAAT** stands for **Term-At-A-Time** query processing

**DAAT** (Document-At-A-Time) is sometimes better for scoring-based or OR-type queries, but for strict AND, TAAT is indeed a common approach

**TAAT** often suits conjunctive merges, especially if postings are sorted.
**DAAT** can be advantageous for scoring or more complex retrieval strategies


