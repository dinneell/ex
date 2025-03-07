class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;

  OrderBloc(this.orderRepository) : super(OrderInitial()) {
    on<LoadOrders>((event, emit) async {
      emit(OrderLoading());
      try {
        final orders = await orderRepository.getOrders();
        emit(OrderLoaded(orders));
      } catch (e) {
        emit(OrderError(e.toString()));
      }
    });
  }
}



//BlocProvider для передачи BLoC в виджеты
BlocProvider(
  create: (context) => AuthCubit(getIt<AuthRepository>()),
  child: MyApp(),
);


//BlocListener для обработки побочных эффектов 
BlocListener<AuthCubit, AuthState>(
  listener: (context, state) {
    if (state is AuthSuccess) {
      Navigator.pushReplacementNamed(context, "/home");
    }
  },
  child: AuthScreen(),
);

//hydrated_bloc для кеширования состояний