 **Chain of Responsibility B:** Pass requests along a chain of handlers, any of which can decide to process or pass.

 We have a request that is propagated along a chain in a specific order. If a handler cannot satisfy the request (item not available at that location), it should propagate the request. Otherwise, it should handle the request and stop the propagation.