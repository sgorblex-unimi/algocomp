# TODO
Questa è una raccolta non esaustiva delle cose che rimangono da fare per migliorare le dispense.
I TODO non citati qui compaiono direttamente in commenti nel codice con la keyword TODO.
Riporto qui quelli più complicati da spiegare o complessi da implementare.

Nota bene che quando una correzione viene implementata bisogna rimuovere i relativi TODO qui e nel sorgente.



## Correzioni facili ma noiose
- rimuovere label quando non servono. Adottare una nomenclatura consistente delle label
- usare `\ref` invece che `\cref` dove è rimasto quest'ultimo
- adottare una notazione consistente per le tuple (`<>` vs `()` - vedi anche comando `\tuple`)
- nella scheda del problema bisogna essere coerenti: si dice prima cos'è una copertura/dominatingset/etc. e poi nella scheda si dice di trovarne uno di costo minimo. Evitare di dare una spiegazione (specie se vaga) dell'oggetto da minimizzare nella scheda invece che citare semplicemente il nome tecnico spiegato altrove. Bilanciare citazione/spiegazione, tenere in considerazione il rapporto tra tempo "Semantica" e campo "Ammissibili". In effetti, valutare se tutte le sezioni della scheda sono necessarie
- aggiungere `\text.` e analoghi quando serve alla fine delle formule
- aggiungere `\qedhere` quando serve alla fine delle dimostrazioni
- rinominare ambienti corollario e simili: `thm`, `lem`/`lemma`, cambiare `oss` che è brutto
- nei problemi sui grafi, studiare e specificare quali siano su grafi orientati, quali non, quali su ipergrafi, quali su multigrafi, etc.
- parecchie correzioni esplicitate nel sorgente sul capitolo delle strutture succinte (e non solo)



## Correzioni non banali
- occorre rifare in modo pulito tutte le figure pesantemente basate su coordinate (retaggio della vecchia versione in cui le figure erano probabilmente esportate da qualche GUI). Vedi sezione sotto
- bisogna decidere come gestire la definizione di NP. Nel primo capitolo non viene spiegato in modo esaustivo, quindi potrebbe essere utile spostare il concetto di macchina di Turing oracolare lì (invece che prima del verificatore probabilistico per PCP)
- in BiMaxMatching, bisogna spiegare meglio come funziona la visita per trovare il cammino aumentante, spiegando perché tale approccio non sia possibile per il caso non bipartito (riferirsi al fatto che MaxMatching richiede una visita più complessa per trovare un cammino aumentante)
- nella costruzione del bad input per GreedySetCover, bisogna capire e specificare che valori di n sono buoni, ed eventuali ceiling/floor
- in 2LB, bisogna integrare le informazioni del pdf di Boldi riguardo al caso in cui l'ultimo task della macchina più carica sia assegnato nella fase esaustiva (possibilmente senza copiare l'intera dimostrazione)
- in MaxSat PCP, si fa l'assunzione che il numero di query sia costante tra i diversi input, il che permette di scegliere un epsilon ma non è banale. Analizzare il caso e dimostrare che non c'è perdita di generalità. A seconda di quanto il risultato è complesso, potrebbe essere necessario includere la cosa in un'appendice
- nella struttura di Jacobson, bisogna capire e specificare se sono necessari eventuali ceiling/floor e requisiti sulla lunghezza del vettore


### Immagini da sistemare
- [x] Classi di complessità strutturale
- [x] Classi ottimizzazione
- [x] BiMaxMatching: bipartito, aumentante pre, aumentante post
- [x] CenterSelectionPlus
- [ ] GreedySetCover: chiarire la teoria (quali valori di n sono validi) e rifare
- [x] Christofides
- [x] Macchine di Turing: deterministica, probabilistica, oracolare, verificatore probabilistico
- [ ] Jacobson - blocchi e superblocchi, calcolo del rango: rifare. Scegliere migliori dimensioni di blocchi e superblocchi
- [ ] Alberi binari: migliorare figura del passo induttivo; la radice dovrebbe essere adiacente alle radici dei sottoalberi
- [x] Alberi binari: albero con vettore, calcolo del rango
- [x] Parentesi bilanciate: funzione eccesso, divisione in blocchi, foresta ordinata, isomorfismo alberi/foreste
- [ ] Peeling MWHC: brutto grafo e notazione incoerente




## Contenuti mancanti
- manca l'analisi dell'algoritmo di MaxEkSat derandomizzato. Non l'ho inclusa in quanto andrebbe rivista in chiave combinatoria invece che probabilistica (cosa che per l'analisi di un algoritmo deterministico lascia il tempo che trova). È possibile che il professore cambi approccio nello spiegare questo argomento nelle edizioni successive a quella del 2022/23, quindi se hai seguito l'insegnamento in un anno successivo potresti essere un buon candidato a completare questa parte :)
- manca del tutto la revisione della struttura di Clarke
- manca la parte di information theoretical lower bound per l'hashing perfetto. Un ottimo punto da cui partire è la nota di Chiara Prezioso su questo esatto argomento




## Meta
- rinominare il capitolo delle strutture succinte (dal momento che ben poche tra quelle viste sono succinte)?
- per ogni argomento, includere le fonti bibliografiche citate da Boldi nel [programma](https://boldi.di.unimi.it/Corsi/AlgComp2022/)
- per ogni argomento, verificare se esistono altre fonti da citare (e.g., chi ha prodotto un certo risultato - a maggior ragione se non ne è riportata la dimostrazione)




## Appendici


### Dimostrazioni extra
- in DisjointPaths perché si sceglie quel valore per beta (studio di una funzione in beta che ha minimo in quel valore)
- ordine della funzione armonica (paragrafo SetCover)


### Idee per approfondimenti
- soundness e completeness nelle classi PCP
- dimostrazione PCP o una sua idea
