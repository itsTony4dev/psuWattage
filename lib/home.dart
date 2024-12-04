import 'package:flutter/material.dart';
import 'package:project1/dropdown.dart';
import 'package:project1/parts.dart';
import 'recommendation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cpuWattage = 0;
  int gpuWattage = 0;
  int ramWattage = 0;
  int motherboardWattage = 0;
  int storageWattage = 0;
  int result = 0;

  void showTotal() {
    setState(() {
      result = (cpuWattage +
          gpuWattage +
          ramWattage +
          storageWattage +
          motherboardWattage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'PSU Wattage Calculator',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF01c28d), Color(0xFF006064)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildDropdownCard(
              title: 'Select CPU',
              child: MyDropdownMenu(
                items: CPU.models,
                updateSelection: (cpu) {
                  setState(() {
                    cpuWattage = cpu.wattage;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            _buildDropdownCard(
              title: 'Select GPU',
              child: MyDropdownMenu(
                items: GPU.models,
                updateSelection: (gpu) {
                  setState(() {
                    gpuWattage = gpu.wattage;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            _buildDropdownCard(
              title: 'Select RAM',
              child: MyDropdownMenu(
                items: RAM.models,
                updateSelection: (ram) {
                  setState(() {
                    ramWattage = ram.wattage;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            _buildDropdownCard(
              title: 'Select Motherboard',
              child: MyDropdownMenu(
                items: Motherboard.models,
                updateSelection: (motherboard) {
                  setState(() {
                    motherboardWattage = motherboard.wattage;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            _buildDropdownCard(
              title: 'Select Storage',
              child: MyDropdownMenu(
                items: Storage.models,
                updateSelection: (storage) {
                  setState(() {
                    storageWattage = storage.wattage;
                  });
                },
              ),
            ),
            const SizedBox(height: 32),
            _buildResultCard(),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            RecommendedPSUCard(totalWattage: result),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: showTotal,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                backgroundColor: const Color(0xFF01c28d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Calculate Total Wattage',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownCard({required String title, required Widget child}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Selected Wattages',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text('CPU: $cpuWattage W'),
            Text('GPU: $gpuWattage W'),
            Text('RAM: $ramWattage W'),
            Text('Motherboard: $motherboardWattage W'),
            Text('Storage: $storageWattage W'),
            const Divider(height: 32, thickness: 1),
            Text(
              'Estimated Power: $result W',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
