@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.success(User user) = AuthSuccess;
  const factory AuthState.failure(String error) = AuthFailure;
}
