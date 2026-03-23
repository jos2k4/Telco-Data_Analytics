# SQL Case Study: Subscription & Telco Analytics

### Projektübersicht
Dieses Repository enthält ein relationales Datenbankmodell für ein fiktives Dienstleistungsunternehmen (Fokus: Telekommunikation). Das Ziel des Projekts ist es, Rohdaten in wertvolle Geschäftskennzahlen zu transformieren, um Management-Entscheidungen datenbasiert zu unterstützen.

Das Projekt wurde im Rahmen meiner Vorbereitung auf das duale Studium **Wirtschaftsinformatik** entwickelt, um die Brücke zwischen technischer Datenbankstruktur und betriebswirtschaftlicher Analyse zu schlagen.

### Kernfunktionalitäten (Business Cases)
Ich habe gezielte SQL-Abfragen entwickelt, um reale geschäftliche Herausforderungen zu lösen:

* **Upselling-Potential:** Identifikation von Kunden, die kurz vor ihrem Datenlimit stehen (>90% Auslastung), um gezielte Tarif-Upgrades anzubieten.
* **Churn-Prävention (Kündigungsschutz):** Analyse von Kunden mit hohen Fixkosten bei gleichzeitig sehr geringer Nutzung (Risiko der Abwanderung).
* **Revenue by Region:** Ermittlung des Umsatzes pro Postleitzahl zur Unterstützung der Infrastrukturplanung und des regionalen Marketings.
* **Premium-Segmentierung:** Identifikation von "High-Value"-Kunden, deren monatliche Gebühren über dem aktuellen Marktdurchschnitt liegen.

### Technischer Aufbau
Das Modell ist normalisiert und besteht aus vier zentralen Tabellen:
1.  `customer`: Stammdaten der Kunden.
2.  `Plans`: Verfügbare Tarife und Preisstrukturen.
3.  `Contracts`: Verknüpfung von Kunden mit Tarifen inkl. Status und Hardware-Optionen.
4.  `usage`: Monatliche Verbrauchsdaten für die Performance-Analyse.

### Verwendete SQL-Konzepte
- **Relationale Verknüpfungen:** Komplexe `JOIN`-Operationen über mehrere Ebenen.
- **Daten-Aggregation:** Nutzung von `SUM()`, `AVG()` und `COUNT()` für Reports.
- **Dynamische Filter:** Einsatz von **Subqueries**, um Live-Durchschnitte als Schwellenwerte für Filter zu nutzen.
- **Datenintegrität:** Einsatz von Primary und Foreign Keys zur Vermeidung von Redundanzen.

### Struktur der Dateien
- `01_schema.sql`: Definition der Tabellenstruktur.
- `02_data.sql`: Repräsentative Testdaten mit verschiedenen Kundenszenarien.
- `03_analysis_queries.sql`: Die Analyse-Skripte für den Vertrieb und das Controlling.

---
*Fokus: Schnittstelle zwischen IT-Systemen und strategischer Unternehmensführung.*
