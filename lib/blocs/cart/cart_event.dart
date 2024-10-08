part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class LoadCart extends CartEvent {}

class AddToCart extends CartEvent {
  final Course course;
  AddToCart(this.course);
}

class RemoveFromCart extends CartEvent {
  final Course course;

  RemoveFromCart(this.course);
}

class Payment extends CartEvent {
  final BuildContext context;
  final Course course;
  final List<Course> cartItems;
  Payment(this.context, this.course, this.cartItems);
}

// paid courses

class LoadPaidCourses extends CartEvent {}

class DeletePaidCourse extends CartEvent {
  final Course course;

  DeletePaidCourse(this.course);
}

// clearing cart

class ClearCart extends CartEvent {}
