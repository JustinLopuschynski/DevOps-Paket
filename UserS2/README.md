# User-Story 2

As an Admin, I want to connect devices to the application. The Devices are sending MQTT Messages, which are needed in the Application. 
We need an Endpoint in Azure, which receives all the IoT messages. 
- Task 1: Find a Resource to receive IoT messages
- Task 2: Create a Resource Template for it
- Task 3: Create Parameter Files for dev, test and prod resources
- Task 4: Extend the Deployment Script for this resource

## MQTT Messages
MQTT (Message Queuing Telemetry Transport) ist ein leichtgewichtiges Nachrichtenprotokoll, das für kleine Sensoren und mobile Geräte entwickelt wurde und für hochlatente oder unzuverlässige Netzwerke optimiert ist. MQTT arbeitet nach einem Veröffentlichungs-/Abonnementmodell, bei dem Geräte Nachrichten zu bestimmten Themen veröffentlichen können und andere Geräte diese Themen abonnieren können, um Nachrichten zu empfangen.



- Veröffentlichungsnachricht: Diese Nachricht wird von einem Client an einen Broker (Server) gesendet. Sie enthält eine Nutzlast (die tatsächlichen Daten, die gesendet werden) und ein Thema 
(eine Zeichenfolge, die die Art der Daten identifiziert). Der Broker verteilt dann die Nachricht an alle Clients, die dieses Thema abonniert haben.

- Abonnementnachricht: Diese Nachricht wird von einem Client an den Broker gesendet, um anzuzeigen, dass er Nachrichten abonnieren möchte, die zu einem bestimmten Thema veröffentlicht 
wurden. Der Client kann sich für mehrere Themen abonnieren.

- Abonnementkündigungsnachricht: Diese Nachricht wird von einem Client an den Broker gesendet, um anzuzeigen, dass er keine Nachrichten mehr abonnieren möchte, die zu einem bestimmten Thema 
veröffentlicht wurden.

- Ping-Anforderungsnachricht: Diese Nachricht wird von einem Client an den Broker gesendet, um die Verbindung aufrechtzuerhalten. Sie wird verwendet, um sicherzustellen, dass der Client und 
der Broker immer noch verbunden sind, insbesondere in Szenarien, in denen es längere Inaktivitätszeiten geben kann.

- Ping-Antwortnachricht: Dies ist eine Antwort des Brokers auf eine Ping-Anforderung des Clients, die anzeigt, dass die Verbindung immer noch besteht.

- Trennungsnachricht: Diese Nachricht wird von einem Client oder einem Broker gesendet, um die Verbindung ordnungsgemäß zu beenden.

Diese Nachrichten bilden den Kern der Kommunikation in MQTT. Sie ermöglichen es Geräten, Daten zu veröffentlichen, Daten zu abonnieren, Verbindungen aufrechtzuerhalten und sich bei Bedarf ordnungsgemäß zu trennen.

## Azure IoT Hub 
Warum ich Azure IoT Hub verwendet habe:

            - Sichere Kommunikation zwischen IoT-Geräten und der Cloud ermöglicht.
            - Hochgradig skalierbar ist und Millionen von Geräten unterstützt.
            - Einfache Geräteverwaltung und Integration mit anderen Azure-Diensten bietet.
            - Erweiterte Funktionen für IoT-Anwendungen bietet.
            - Unterschiedliche Geräte und Plattformen unterstützt.

Skus: 

            - F1: Die kostenlose SKU, die einige begrenzte Funktionen bietet und für Entwicklungs- und Testzwecke geeignet ist.
            - S1: Die Standard-SKU, die für die meisten Produktionsanwendungen geeignet ist. Sie bietet eine höhere Kapazität und Funktionen im Vergleich zur kostenlosen SKU.
            - S2 und S3: Höhere Leistungsstufen mit zusätzlicher Kapazität und Funktionen für anspruchsvollere Anwendungen und Workloads.

            Nähere Informationen: https://learn.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-quotas-throttling
            


