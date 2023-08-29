import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Cussuport extends StatelessWidget {
  const Cussuport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customer support policy",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 10,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: PhosphorIcon(
            PhosphorIcons.bold.caretLeft,
            size: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 10.0),
          child: Text('''Return and Refund Policy
Last updated: June 12, 2023
Thank you for shopping at Jeevan.
If, for any reason, You are not completely satisfied with a purchase We invite You to review our policy on refunds and returns. This Return and Refund Policy has been created with the help of the Free Return and Refund Policy Generator.
The following terms are applicable for any products that You purchased with Us.
Interpretation and Definitions
Interpretation
The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.
Definitions
For the purposes of this Return and Refund Policy:
•	Application means the software program provided by the Company downloaded by You on any electronic device, named Jeevan
•	Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Jeevan, Kelambakkam - Vandalur Rd, Rajan Nagar, Chennai, Tamil Nadu 600127.
•	Goods refer to the items offered for sale on the Service.
•	Orders mean a request by You to purchase Goods from Us.
•	Service refers to the Application.
•	You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.
Your Order Cancellation Rights
You are entitled to cancel Your Order within 14 days without giving any reason for doing so.
The deadline for cancelling an Order is 14 days from the date on which You received the Goods or on which a third party you have appointed, who is not the carrier, takes possession of the product delivered.
In order to exercise Your right of cancellation, You must inform Us of your decision by means of a clear statement. You can inform us of your decision by:
•	By email: jeevanmedicalcontact@gmail.com
We will reimburse You no later than 14 days from the day on which We receive the returned Goods. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.
Conditions for Returns
In order for the Goods to be eligible for a return, please make sure that:
•	The Goods were purchased in the last 14 days
•	The Goods are in the original packaging
The following Goods cannot be returned:
•	The supply of Goods made to Your specifications or clearly personalized.
•	The supply of Goods which according to their nature are not suitable to be returned, deteriorate rapidly or where the date of expiry is over.
•	The supply of Goods which are not suitable for return due to health protection or hygiene reasons and were unsealed after delivery.
•	The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items.
We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.
Only regular priced Goods may be refunded. Unfortunately, Goods on sale cannot be refunded. This exclusion may not apply to You if it is not permitted by applicable law.
Returning Goods
You are responsible for the cost and risk of returning the Goods to Us. You should send the Goods at the following address:
Kelambakkam - Vandalur Rd, Rajan Nagar, Chennai, Tamil Nadu 600127
We cannot be held responsible for Goods damaged or lost in return shipment. Therefore, We recommend an insured and trackable mail service. We are unable to issue a refund without actual receipt of the Goods or proof of received return delivery.
Gifts
If the Goods were marked as a gift when purchased and then shipped directly to you, You'll receive a gift credit for the value of your return. Once the returned product is received, a gift certificate will be mailed to You.
If the Goods weren't marked as a gift when purchased, or the gift giver had the Order shipped to themselves to give it to You later, We will send the refund to the gift giver.
Contact Us
If you have any questions about our Returns and Refunds Policy, please contact us:
•	By email: jeevanmedicalcontact@gmail.com
''',textAlign: TextAlign.justify,),
        ),
      ),
    );
  }
}
