---
title: Relazione del progetto d'esame di Editoria Digitale
author: Salvatore Torrisi matricola 10451A
date:  a.a. 2024/2025
institute: Università degli Studi di Milano
course: Editoria Digitale
tags: sostenibilità, editoria digitale, cambiamento climatico
version: 1.0
bibliography: bibliografia.bib
---

![Logo UNIMI](./foto/minerva.jpg){width=100}

# Agire per il Futuro: Guida alla Sostenibilità

- [Link al poster](https://drive.google.com/file/d/17-n4tzHcDFeLUxUBcTL0LJgaEhToXM-U/view?usp=sharing)
- [Link alla repository](https://github.com/salvopk/Editoria-Digitale/tree/main)

## Introduzione

Il progetto "Agire per il Futuro: Guida alla Sostenibilità" è stato sviluppato per conto di un ente no-profit che promuove la sostenibilità ambientale. L'obiettivo principale è sensibilizzare i giovani di età compresa tra i 18 e i 25 anni sui temi del cambiamento climatico e dell'impatto ambientale delle scelte quotidiane. Il prodotto editoriale ideato è un poster promozionale distribuito tramite le storie Instagram dell'ente, con adesivi per il download diretto.

## Ideazione

### Tema

Il tema centrale del progetto è il cambiamento climatico e l'importanza di comportamenti sostenibili. Sono state approfondite le principali problematiche ambientali, come l'aumento delle emissioni di CO2, l'uso eccessivo delle risorse naturali e l'inquinamento, evidenziando domande frequenti e bisogni insoddisfatti del pubblico giovane. Oltre a ciò, l'ente tiene a realizzare delle iniziative per i giovani per combattere il cambiamento climatico, e tramite questo progetto editoriale vuole far diffondere sempre di più la voce su queste attività.

### Destinatari

Il target è rappresentato da giovani adulti (18-25 anni), digitalmente competenti e attivi sui social media. Attraverso la tecnica delle personas, è stato immaginato un pubblico interessato a comprendere meglio come contribuire alla sostenibilità ambientale. Ad esempio, una persona fittizia, Anna, 22 anni, studentessa universitaria di scienze ambientali, utilizza spesso Instagram per condividere e scoprire contenuti legati alla sostenibilità. Anna cerca suggerimenti pratici su come ridurre il proprio impatto ambientale e è interessata a iniziative locali sul tema. Un'altra persona, Marco, 24 anni, sviluppatore web, è interessato a tecnologie verdi e vuole adottare stili di vita sostenibili. Entrambi rappresentano target chiave del progetto e riflettono le diverse esigenze del pubblico giovane. e desideroso di informazioni pratiche e accessibili.

### Modello di fruizione

Il poster è pensato per una fruizione digitale semplice ed efficace, tramite un semplice PDF visualizzabile da mobile. Nel poster viene utilizzato un linguaggio chiaro e diretto, integrato di immagini per catturare l'attenzione.

La parte centrale del poster è stata strutturata per accogliere aggiornamenti regolari con notizie e iniziative legate al cambiamento climatico.

### Canali di distribuzione

Il principale canale di distribuzione è Instagram, utilizzando storie con adesivi per il download. Il formato scelto è PDF per garantire compatibilità e alta qualità visiva. Il design è orientato verso uno stile informale ma professionale, capace di comunicare efficacemente il messaggio dell'ente.

![Storia Instagram promozionale](./foto/insta.jpg){height=250}
&nbsp;
![Screenshot Poster](./foto/progetto.jpg){height=250}

## Processo di Produzione

### Acquisizione dei contenuti

I contenuti sono stati generati con l'ausilio di ChatGPT, applicando tecniche di prompt engineering per ottenere testi scientificamente accurati e adatti al target. Per le immagini sono state utilizzate fonti libere per minimizzare i costi di acquisizione, ad eccezione della locandina di una delle iniziative che è stata generata con DALL-E 3.

### Gestione documentale

Il flusso documentale comprende:

1. Acquisizione dei contenuti: I contenuti sono stati generati tramite prompt engineering con ChatGPT, combinando testi scientifici e divulgativi. Le immagini sono state ottenute da fonti libere o generate con DALL-E 3 per ridurre i costi e garantire originalità.
2. Organizzazione e scrittura: Tutti i contenuti sono stati redatti in Markdown, con l'integrazione di metadati YAML per una facile conversione in altri formati.
3. Conversione e layout: Tramite Pandoc, i file Markdown sono stati trasformati in LaTeX, utilizzando il template "ANT Center Poster" per la generazione del prodotto finale.
4. Revisione e controllo qualità: Il poster è stato sottoposto a controlli manuali per verificare coerenza, accuratezza e leggibilità.
5. Distribuzione: Il file finale è stato salvato in formato PDF e reso disponibile per il download tramite storie Instagram, sfruttando adesivi interattivi per una distribuzione semplice ed efficace.

![Flusso documentale](./foto/diagramma.jpg){height=250}

### Tecnologie adottate

- **Markdown**: Per la creazione e la gestione dei contenuti.
- **Pandoc**: Per la conversione in LaTeX e l'applicazione del template.
- **LaTeX**: Per la generazione del poster.

### Esecuzione del flusso

Il flusso di produzione è completamente documentato e riproducibile attraverso i comandi e le configurazioni forniti. Il comando utilizzato per la conversione principale per far sì che venisse integrato il template è il seguente:

```
pandoc -s contenuto.md -o output.tex -V documentclass=antposter
```

## Valutazione dei risultati raggiunti

### Valutazione del flusso di produzione

Il flusso di produzione ha portato ai seguenti risultati:

- Efficienza migliorata: L'uso di Markdown e Pandoc ha ridotto i tempi di gestione documentale, rendendo il processo più fluido e scalabile.
- Minimizzazione degli errori: L'intelligenza artificiale ha garantito contenuti accurati e coerenti, integrando informazioni da fonti affidabili. La revisione manuale ha ulteriormente ridotto il rischio di errori.
- Accessibilità e distribuzione: Il formato PDF e la distribuzione tramite social network hanno garantito una vasta accessibilità al target, senza necessità di software specifici.

### Confronto con lo stato dell'arte

Rispetto ai metodi tradizionali, l'approccio adottato ha reso il processo più efficiente e innovativo, grazie alla flessibilità offerta da Markdown e Pandoc. Inoltre, l'approccio digitale riduce significativamente i tempi di produzione rispetto ai processi tradizionali basati su software complessi o su supporti fisici.

### Limiti emersi

- Difficoltà iniziale nell'adattare il template LaTeX alle esigenze specifiche del progetto.
- Limitazioni nella gestione degli spazi e delle configurazioni avanzate del template.

## Conclusioni

Il progetto ha raggiunto gli obiettivi prefissati, sensibilizzando il target giovane con un prodotto editoriale digitale coinvolgente e aggiornabile. I risultati più soddisfacenti riguardano la qualità visiva del poster e l'efficacia del flusso di produzione. Tuttavia, rimangono margini di miglioramento nella personalizzazione dei template.

## Bibliografia e sitografia

Elenco delle fonti principali: [@antposter, @ipcc, @fao, @unep, @essc, @wwf, @eea, @pd, @undp, @emaf, @ng]
