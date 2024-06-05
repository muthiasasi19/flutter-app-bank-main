import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('ViewPage displays the correct information',
      (WidgetTester tester) async {
    // Data untuk ViewPage
    const String name = 'Muthia';
    const String identityNumber = '20220140167';
    const String birthDate = '09-09-2009';
    const String gender = 'Female';
    const String phoneNumber = '081234567890';
    const String lastEducation = 'Master of Studies';
    const String religion = 'Muslim';
    const String job = 'Student';
    const String address = 'NTB';
    const String accountType = 'taktau';

    // Membangun widget untuk pengujian
    await tester.pumpWidget(
      MaterialApp(
        home: ViewPage(
          name: name,
          identitynumber: identityNumber,
          birthdate: birthDate,
          gender: gender,
          phonenumber: phoneNumber,
          lasteducation: lastEducation,
          religion: religion,
          job: job,
          address: address,
          accounttype: accountType,
        ),
      ),
    );

    // Memastikan teks yang benar ditampilkan
    expect(find.text('Name: $name'), findsOneWidget);
    expect(find.text('Identity Number: $identityNumber'), findsOneWidget);
    expect(find.text('Birht Date: $birthDate'), findsOneWidget);
    expect(find.text('Gender: $gender'), findsOneWidget);
    expect(find.text('Phone Number: $phoneNumber'), findsOneWidget);
    expect(find.text('Last Education: $lastEducation'), findsOneWidget);
    expect(find.text('Religion: $religion'), findsOneWidget);
    expect(find.text('Job: $job'), findsOneWidget);
    expect(find.text('Address: $address'), findsOneWidget);
    expect(find.text('Account Type: $accountType'), findsOneWidget);
  });
}
