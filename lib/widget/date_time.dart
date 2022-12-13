import 'package:flutter/material.dart';

class TodoDateTime extends StatefulWidget {
  final Function(DateTime) onDateTimeSelect;
  const TodoDateTime({super.key, required this.onDateTimeSelect});

  @override
  State<TodoDateTime> createState() => _DateTimeState();
}

class _DateTimeState extends State<TodoDateTime> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final firstDate = currentDate.subtract(const Duration(days: 3650));
    final lastDate = currentDate.add(const Duration(days: 700));

    final time = TimeOfDay.now();

    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: _itemBuilder(
            value: _selectedDate == null
                ? 'Date'
                : '${_selectedDate?.year}/${_selectedDate?.month}/${_selectedDate?.day}',
            icon: const Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
            onPressed: () async {
              final pickDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: firstDate,
                  lastDate: lastDate);
              setState(() {
                _selectedDate = pickDate;
              });
              final dateTimeToPass = DateTime(
                _selectedDate!.year,
                _selectedDate!.month,
                _selectedDate!.day,
                _selectedTime?.hour ?? 0,
                _selectedTime?.minute ?? 0,
              );
              widget.onDateTimeSelect(dateTimeToPass);
            },
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: _itemBuilder(
            value: _selectedTime == null
                ? 'Time'
                : '${_selectedTime?.hour}/${_selectedTime?.minute}',
            icon: const Icon(
              Icons.access_time_rounded,
              color: Colors.white,
            ),
            onPressed: () async {
              final pickTime =
                  await showTimePicker(context: context, initialTime: time);
              setState(() {
                _selectedTime = pickTime;
              });

              final dateTimeToPass = DateTime(
                _selectedDate?.year ?? 0,
                _selectedDate?.month ?? 0,
                _selectedDate?.day ?? 0,
                _selectedTime!.hour,
                _selectedTime!.minute,
              );
              widget.onDateTimeSelect(dateTimeToPass);
            },
          ),
        ),
      ]),
    );
  }

  Widget _itemBuilder({
    required final String value,
    required Icon icon,
    required final Function()? onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
        ]),
      ),
    );
  }
}
