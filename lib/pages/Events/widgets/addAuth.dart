import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void showAuthDialog(BuildContext context, String docId) {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController nameController = TextEditingController();
  String? errorMessage;

  showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setDialogState) {
        return AlertDialog(
          title: const Text("Add Event Manager"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Email Id",
                  border: OutlineInputBorder(),
                ),
              ),
              if (errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    errorMessage!,
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              child: const Text("Add"),
              onPressed: () async {
                if (nameController.text.isNotEmpty) {
                  try {
                    DocumentSnapshot docSnapshot = await _firestore
                        .collection('events')
                        .doc(docId) // Fetch directly using docId
                        .get();

                    if (docSnapshot.exists) {
                      DocumentReference eventDoc = docSnapshot.reference;
                      await eventDoc.update({
                        'manager': FieldValue.arrayUnion([nameController.text])
                      });

                      // TODO : add checks for username matching in database and add user id here
                      print("Manager added successfully to the event!");
                      Navigator.of(context).pop(); // Close dialog
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                '${nameController.text} updated as manager')),
                      );
                    } else {
                      print("No event found with the docId : $docId");
                    }
                  } catch (e) {
                    print("Error adding manager: $e");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error adding manager: ${e}')),
                    );
                  }
                }
              },
            ),
          ],
        );
      },
    ),
  );
}
