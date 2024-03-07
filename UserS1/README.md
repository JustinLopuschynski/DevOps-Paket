# User-Story 1
As a User I want to be able to access the application on all my devices without the need of an installation. 
Therefore, I would use my browser and we need to create a resource to host a website. 

- Task 1: Find a Resource to host a website on it
- Task 2: Create a Resource Template for it
- Task 3: Create Parameter Files for dev, test and prod resources
- Task 4: Write a PowerShell Script to deploy all stages. You want to only deploy one stage per execution (./createWebApp.ps1 -Environment dev)
- Task 5: short documentation why you choose the resource and what other options you found. Compare the different Features

## Task 5
Ich habe mich für die App-Services entschieden, da es Insgesamt eine bequeme und effiziente Möglichkeit, Anwendungen zu entwickeln, bereitzustellen und zu skalieren, ohne sich um die zugrunde liegende Infrastruktur kümmern zu müssen.

            Vorteile:

            Einfache Bereitstellung: Die Bereitstellung von Anwendungen ist schnell und unkompliziert, da die zugrunde liegende Infrastruktur vom Anbieter verwaltet wird.

            Skalierbarkeit: App-Services bieten automatische Skalierungsfunktionen, die es ermöglichen, Ressourcen basierend auf der Nachfrage hoch- oder herunterzuskalieren.

            Kosteneffizienz: Sie zahlen nur für die Ressourcen, die Sie tatsächlich nutzen, und vermeiden Überprovisionierung.

            Verwaltete Dienste: Der Anbieter übernimmt die Wartung der Infrastruktur, Sicherheitsupdates und andere administrative Aufgaben.

            Unterstützung für verschiedene Technologien: App-Services unterstützen eine Vielzahl von Programmiersprachen, Frameworks und Plattformen, was Flexibilität bei der Entwicklung 
            ermöglicht.


            Nachteile:

            Eingeschränkte Kontrolle: Da die Infrastruktur vom Anbieter verwaltet wird, haben Sie möglicherweise weniger Kontrolle über bestimmte Aspekte Ihrer Anwendungsumgebung.

            Abhängigkeit vom Anbieter: Sie sind von den Diensten und der Verfügbarkeit des Anbieters abhängig, was zu Einschränkungen führen kann, wenn der Anbieter Probleme hat oder 
            Änderungen vornimmt.

            Mögliche Leistungseinbußen: In einigen Fällen können App-Services aufgrund von Shared-Hosting-Umgebungen oder anderen Faktoren nicht die gleiche Leistung bieten wie dedizierte 
            Server.

            Einschränkungen bei benutzerdefinierten Konfigurationen: Sie können möglicherweise nicht alle gewünschten benutzerdefinierten Konfigurationen vornehmen, da dies von den 
            Einschränkungen des Dienstes abhängt.

            Kosten: Während App-Services oft kosteneffizient sind, können die Kosten im Laufe der Zeit steigen, insbesondere wenn Ihre Anwendung stark skaliert oder zusätzliche Dienste in 
            Anspruch nimmt.