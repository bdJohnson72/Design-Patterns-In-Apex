/**
 * Created by bjohnson on 1/11/2022.
 */

@IsTest
private class OrderDetailBrittleTest {
	@IsTest
	static void testOrderDetailBrittle() {
        //given
        OrderDetailBrittle orderDetail = new OrderDetailBrittle('xz-123', 'Cool Product', 10,
		        10.00, .05, '123456789', '123 Main St');

		//when
		orderDetail.placeOrder();

	}
}