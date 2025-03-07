final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  getIt.registerLazySingleton<OrderRepository>(() => OrderRepositoryImpl());

  getIt.registerFactory<AuthCubit>(() => AuthCubit(getIt<AuthRepository>()));
}
//registerLazySingleton — объект создается только при первом запросе.
//registerFactory — создается новый экземпляр при каждом вызове.


class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit(this.authRepository) : super(AuthInitial());

  Future<void> login(String phone) async {
    emit(AuthLoading());
    try {
      final user = await authRepository.login(phone);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}


void main() {
  setup(); 
  runApp(MyApp());
}
//main init



abstract class AuthRepository {
  Future<User?> login(String phone);
}

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<User?> login(String phone) async {
  }
}//DI в отдельный файл
//Не используйте new для создания объектов – всё через DI.