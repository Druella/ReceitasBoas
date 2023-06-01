import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import '../models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  //1
  final Function(GroceryItem) onCreate;
  //2
  final Function(GroceryItem) onUpdate;
  //3
  final GroceryItem? originalItem;
  //4
  final bool isUpdating;
  const GroceryItemScreen({
    super.key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  }) : isUpdating = (originalItem != null);
  @override
  GroceryItemScreenState createState() => GroceryItemScreenState();
}

class GroceryItemScreenState extends State<GroceryItemScreen> {
  final _nameController = TextEditingController();
  String _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  int _currentSliderValue = 0;
  @override
  void initState() {
    super.initState();
    //1
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _currentSliderValue = originalItem.quantity;
      _importance = originalItem.importance;
      _currentColor = originalItem.color;
      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }
    //2
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      //2
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              //TODO: Add callback handler
            },
          )
        ],
        //3
        elevation: 0.0,
        //4
        title: Text(
          'Grocery Item',
          style: GoogleFonts.lato(fontWeight: FontWeight.w600),
        ),
      ),
      //5
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // TODO: Add buildNameField()
            // TODO: Add buildImportanceField()
            // TODO: Add buildDateField()
            // TODO: Add buildTimeField()
            // TODO: Add buildColorPicker()
            // TODO: Add buildQuantityField()
          ],
        ),
      ),
    );
  }
}
