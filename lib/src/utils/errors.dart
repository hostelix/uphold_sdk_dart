class BadRequestError extends Error {
  @override
  String toString() {
    return "Bad Request – Validation failed.";
  }
}

class UnauthorizedError extends Error {
  @override
  String toString() {
    return "Bad credentials.";
  }
}

class ForbiddenError extends Error {
  @override
  String toString() {
    return "Forbidden.";
  }
}

class NotFoundError extends Error {
  @override
  String toString() {
    return "Object not found.";
  }
}

class ConflictError extends Error {
  @override
  String toString() {
    return "Entity already exists.";
  }
}

class PreconditionFailedError extends Error {
  @override
  String toString() {
    return "Precondition Failed.";
  }
}

class RequestedRangeNotSatisfiableError extends Error {
  @override
  String toString() {
    return "Requested Range Not Satisfiable.";
  }
}

class TooManyRequestsError extends Error {
  @override
  String toString() {
    return "Rate limit exceeded.";
  }
}

class InternalServerError extends Error {
  @override
  String toString() {
    return "Something went wrong in our server.";
  }
}

class ServiceUnavailableError extends Error {
  @override
  String toString() {
    return "We’re temporarily offline for maintenance. Please try again in a little bit.";
  }
}
