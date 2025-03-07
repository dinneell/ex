class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<User?> call(String phone) {
    return authRepository.login(phone);
  }
}
