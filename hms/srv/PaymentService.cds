using {com.hms.payment as payment} from '../db/PaymentSchema';
service PaymentService {

    entity Payment as projection on payment.Payment;

}