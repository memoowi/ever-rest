import 'package:ever_rest/utils/theme.dart';
import 'package:ever_rest/widgets/custom_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatefulWidget {
  const ReserveScreen({super.key});

  @override
  State<ReserveScreen> createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  final _formKey = GlobalKey<FormState>();
  final _deceaseNameController = TextEditingController();
  final _deceaseAgeController = TextEditingController();
  final _deceaseDateTimeController = TextEditingController();
  final _pickupLocationController = TextEditingController();
  final _pickupDateTimeController = TextEditingController();

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? ageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? deceaseDateTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? pickupLocation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String? pickupDateTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  @override
  void dispose() {
    _deceaseNameController.dispose();
    _deceaseAgeController.dispose();
    _deceaseDateTimeController.dispose();
    _pickupLocationController.dispose();
    _pickupDateTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserve'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Enter Deceased Information',
                    style: CustomTextStyle.primary.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Deceased Name :',
                  style: CustomTextStyle.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                CustomFormField(
                  hintText: 'Enter Decease Name',
                  controller: _deceaseNameController,
                  validator: nameValidator,
                  prefixIcon: const Icon(CupertinoIcons.person),
                ),
                const SizedBox(height: 16),
                Text(
                  'Deceased Age :',
                  style: CustomTextStyle.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                CustomFormField(
                  hintText: 'Enter Decease Age',
                  controller: _deceaseAgeController,
                  validator: ageValidator,
                  prefixIcon: const Icon(CupertinoIcons.number),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                Text(
                  'Deceased At :',
                  style: CustomTextStyle.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                CustomFormField(
                  hintText: 'Enter Deceased At',
                  controller: _deceaseDateTimeController,
                  validator: deceaseDateTime,
                  prefixIcon: const Icon(CupertinoIcons.calendar),
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 16),
                Text(
                  'Pickup Location :',
                  style: CustomTextStyle.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                CustomFormField(
                  hintText: 'Enter Pickup Location',
                  controller: _pickupLocationController,
                  validator: pickupLocation,
                  prefixIcon: const Icon(CupertinoIcons.location),
                ),
                const SizedBox(height: 16),
                Text(
                  'Pickup Time :',
                  style: CustomTextStyle.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                CustomFormField(
                  hintText: 'Enter Pickup Time',
                  controller: _pickupDateTimeController,
                  validator: pickupDateTime,
                  prefixIcon: const Icon(CupertinoIcons.calendar_today),
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
