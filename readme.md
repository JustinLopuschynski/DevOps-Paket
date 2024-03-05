# DEVOPS - Dokumentation

## CI / CD
Ziel von CI / CD, kurz für Continuos Integration und Continuos Delevery / Deployment, ist die Optimierung und Beschleunigung des Softwareentwicklungs-Lifecycle.
Continous Integration (CI) bezieht sich auf die Praktika, Codeänderungen automatisch und regelmäßig in ein gemeinsamen Quellcode-Respository zu integrieren. 
Continous Delivery und/oder Continous Deployment (CD) ist ein zweiteiliger Prozess, der die Integration, ees Testen und die Bereitstellung der Codeänderungen umfasst. CD beinhaltet kein automatisches Produktiv-Deployment, während beim Continous Deployment Update-Releases automatsich in die Produktivumgebung übergeben werden. 

## loT 
Das Hauptziel von IoT ist es, Objekte Daten sammeln und auszutauschen zu lassen, um die Effizienz, Genauigkeit und Bequemlichkeit in verschiedenen Bereichen zu verbesern. Das selbe prinzip verfolgt die die CI / CD.

lot und Devops können in vielerlei Hinsichten miteinander verbunden werden, insbdensodere in Bezug auf die Entwicklung, Bereitstellung und Verwaltung von loT-Anwedndungen und -Systemen. Es kann Dinge automatisiert vereinfachen. 

## Biceps
Bicep ist eine spezielle Sprache (DSL), die deklarativ Syntax nutzt, um Azure-Ressourcen zu deployen. In einer Bicep-Datei wird die Infrastuktur fesgelegt, die in Azure bereitgestellt werden soll, und verwendet diese Datei dann im gesamten Entwicklungszyklus, um die Infrastruktur wiederholt zu deployen. Die Ressourcen werden in einer konsistenten Weise bereitgestellt.
Biceo bietet eine präzise Syntax, zuverlässige Typsicherheit und unterstützt die Wiederverendung von Code. Bicep bietet eine erstklassige Effahrung beim Verfassen von Infrastruktur-as-Code-Lösungen in Azure.

Vorteile von Bicep: 

                    Ünterstüzung für alle Ressourcentypen und API-Versionen:
                    Bicep unterstützt sofort alle Vorschau- und GA-Versionen für Azure-Dienste. Sobals ein Ressourcenanbieter neue Ressourcentypen und API-Versionen einführt, 
                    können diese Bicep-Dateien verwenden. Dabei muss nicht gewartet werden, dass die Tools aktualisiert werden, bevor die neuen Diensten verwenden können.

                    Einfacher Syntax:
                    Im vergleich zu äquivalenten JSON-Vorlagen sind Bicep-Dateien präziser und leichter zu lesen. Bicep erfordert kein Vorwissen über Programmiersprachen. 
                    Die deklarative Bicep-Syntax gibt an, welche Ressourcen und Eigenschaften der Ressourcen bereigestellt werden soll.

                    Wiederholbare Ergebnisse: 
                    Wähend des gesamten Entwicklungszyklus kann die Infrastruktur wiederholt bereitgestellt werden und sicher sein, dass die Ressourcen konsistent bereigestellt werden. Bicep Dateien 
                    sind idempotent, was bedeutet, dass dieselbe Datei mehrmals bereistellen können und die gleichen Arten von Ressourcen im gleichen Zustand erhalten. 
                    Anstatt viele Seperate Dateien für Aktualisierungen zu entwickeln, kann eine Datei entwickelt werden, die den gewünschten Zustand repräsentiert. 

                    Orchestrierung: 
                    Es müssen sich keine Gedanken über die Komplexität der Operationnenreihenfolge gemacht werden. Der Resource Manager orchestriert die Bereitstellung 
                    voneinander abhängiger Ressourcen, damit sie in der richtigen reihenfolge erstellt werden. Wenn möglich, werden Ressourcen parallel bereitgestellt, sodass die 
                    Bereitstellung schneller abgschlossen sind als bei seriellen Bereitstellungen. Der Bereistellungsprozess wird mit einem einzigen Befehl ausgeführt.

                    Modularität: Durch die Verwendung von Modulen kann Bicep-Code in überschaubare Teile aufgeteilt werden, die jeweils eine Gruppe von verwandten Ressourcen bereitstellen.
                    Diese Modularität ermöglicht, Code wiederzuverwenden und vereinfacht die Entwicklung. 

                    Integration mit Azure-Diensten: 
                    Bicep ist nahtlos in verschiedenen Azure-Diensten wie Azure-Policy, Vorlagenspezifikationen und Blaupausen integriert. 

                    Vorschau von Änderungen: 
                    Vor dem eigentlichen Bereitstellen der Bicep-Datei kann mit der What-if-Operation eine Vorschau der anstehenden Änderung erhalten. Dadurch sieht man, welche Ressourcen
                    erstellt werden, aktualisiert oder gelöscht werdne und welche Eigenschaften sich ändern. Diese Vorschau basiert auf dem aktuellen Zustand der Umgebung und eliminiert die
                    Notwedendigkeit, den Zustand manuell zu verwalten. 

                    Keine Verwaltung von Zuständen oder Zustandsdateien: 
                    Alle relevanten Zustände werden sicher in Azure gespeichert. Dadurch können Benutzer effizient zusammenarbeiten, ohne sich um die Verwaltung von Zustände kümmern zu müssen.

                    Keine Kosten und Open Source: 
                    Bicep ist kompplett kostenlos Lösungen. Es fallen keine zuätztlichen Kosten für Premiumfunktionen an. Zu dem wird es von Microsoft untesrstützt.

## Azure Subscription 
Eine Azure-Subscription ist ein Vetrag mit Microsoft, der es Kunden ermöglicht, Azure-Cloud-Dienste zu nutzen und zu bezahlen. Es bietet Zugriff von Diensten wie virtuelle Maschinen, 
Speicher und Datenbanken, über ein Pay-as-you-go-Modell.

## Ressource Groups
Eine Ressource Group in Azure ist eine logische Sammlung von Azure-Ressourcen, die es ermöglicht, diese Ressourcen zu organisieren, zu verwalten und zu überwachen. Sie vereinfacht die Verwaltung und Bereitstellung von Ressourcen sowie die Zuweisung von Zugriffsrechten. 

## Blob - Storage Type and what to store in it 
Ein Blob (Binary Large Objects) ist ein Typ von Datenspeicher in Azure, der zur Sicherung unstrukturierter Daten verwendet wird. Blobs können große Mengen an Daten speichern, darunter Texte, Bilder, Videos, Audiodateien und andere Arten von Binärdaten. Blobs werden oft verwendet, um große Dateien effizient und kostengünstig in der Cloud zu speichern. 

Es gibt drei Arten von Blob-Container in Azure Blob Storage: 

                    Blockblobs: Ideal für die Speicherung von Dateien wie Bilder, Videos oder Dokumenten.

                    Appendblobs: Geeignet für Szenarien, in denen Daten sequentiell hinzugefügt werden, wie z.B. Protokolldateien oder Streaming-Daten.

                    Pageblobs: Geeeignet für virtuelle Festplatten oder anderen Szenarien, die eine zufällige Zugriff auf Daten erfordern.
                
                
                    Was in einem Blob gespeichert werden soll, hängt von den spezifischen Anforderungen der Anwednung oder Projekts ab.

## Git - Source Control              
Git ist ein Versionskontrollsystem, das die Verwaltung von Quellcode ermöglicht, indem es Änderungen nachverfolgt, Branches unterstützt und die Zusammenarbeit zwischen Entwicklern erleichtert.

- Pull request: Ist eine Anfrage, Änderung aus einem Branch in einen anderen zu integrieren. Es ermgöglicht Entwicklern, Codeänderungen zu überprüfen, Feedback zu geben und sicherzustellen,
  dass sie den Richtlinien und Standards entsprechen, bevor sie in den Hauptcode übernommen werden. 

- Branche: Ein Branch ist eine isolierter Bereich der Entwicklung, die es Entwicklern ermöglicht, unabhängig voneinander an verschiedenen Funktionen oder Änderungen zu arbeiten. Jeder
  Branch repräsentiert einen seperaten Entwicklungszweig, der vo Hautpcode abzweigt. Dadurch können Entwickler Änderungen isolieren, organisieren und testen, bevor sie in den Hauptcode integriert werden.

- Commit: Ein Commit ist eine Aktion, bei der Änderungen an Dateien im Repository dauerhaft gespeichert werden. Ein Commit erstellt einen Schnappschuss des Codes zu einem bestimmten 
  Zeitpunkt, der als Referenzpunkt verwendet werden kann. Jeder Commit hat eine eindeutige Kennung und eine Nachricht, die die durchgeführten Änderungen beschreibt. Diese ermöglichen es Entwicklern, die Entwicklungsgeschichte des Codes nachzuverfolgen und bei Bedarf auf frühere Versionen zurückzugreifen.

## GitHub
Github ist eine Plattform zur Versionsverwaltung und Kollaboartion, die auf Git basiert. 

- Repository: Ein Speicherort für Projekte, der den Quellcode, Issues, Pull Requests und andere Dateien enthält. 

- Action: Automatisierte Workflows, die in einem GitHub-Repository definiert sind, z.B. Tests oder Bereitstellungen. 

- Service Principal: Ein Identitätsobjekt in Azure Active Directory, das verwendet wird, um automatisierte Aufgaben wie Bereitstellungen von Ressourcen in Azure durch GitHub-Workflows.
                