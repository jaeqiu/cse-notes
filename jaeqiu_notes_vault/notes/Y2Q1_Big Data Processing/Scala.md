Lists are Nil-tailed
1::2::3::4::Nil, or List(1,2,3,4)

element :: list
element +: list
list :+ element
list ::: list
collection ++ collection

B>:A
This means B must be supertype of A

Monad
```trait Monad[M[_]] {
  // Takes a value of type S and returns a value of type M[S]
  def unit[S](a: S): M[S]

  // Takes a monadic value M[S] and a function f from S to M[T],
  // and returns a monadic value M[T]
  def flatMap[S, T](m: M[S])(f: S => M[T]): M[T]
}
