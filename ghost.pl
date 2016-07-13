#!/usr/bin/perl
use strict;    # PERL by Example (2015) p. 77 
use warnings;  # PERL by Example (2015) p. 85 
# use Encode; # 2016feb16: http://perldoc.perl.org/perlunitut.html
# use utf8;   # 2016feb16: for Cyrillic Russian characters
# use feature "unicode_strings"; # 2016feb16: Perl_Programming/Unicode_UTF-8
# binmode STDIN, ":encoding(UTF-8)";  # 2016feb16 
# ghost175.pl being coded on Sun.10.JUL.2016 or later
# Please host the Ghost Perl AI and install it for other persons. 
# http://doc.perl6.org/language/variables 
# http://ai.neocities.org/var.html -- Table of Variables in Perl AI
our $. = 0;          # 2016jan14: line counter variable; PbyX 299
our $_ = " ";        # 2016jan10: hidden variable; P_by_Ex p. 301
our $abc = "";       # AudBuffer() transfer character;
our $act = 0;        # 2016jan16: quasi-neuronal activation-level
our $actpsi = 0;     # 2016apr11: psi from which activation is to be spread
our $age = 0;        # 2015apr26: Temporary age for loop-counting. 
our $aud = " ";      # 2016jan28: explicit package from @ear array
our $audbase = 0;    # 2016jan27: recall-vector for VerbGen()
our $audbeg = 0;     # 2016jan17: auditory-beginning tag for start of word. 
our $audjuste = 0;   # 2016feb12: NounPhrase motjuste aud to Speech() module
our $audnew = 0;     # 2016jan17: holds onset-tag while rest of word comes in.
our $audpsi = 0;     # 2016feb12: concept number of word in @ear array
our $audrec = 0;     # 2016jan23: auditory recognition concept-number
our $audrv = 0;      # 2016feb12: auditory recall-vector for Speech()
our $audrun = 1;     # 2016jan26: counter of loops through AudRecog()
our $auxverb = 0;    # 2016jun16: such as 800=BE; 830=DO; or modal verb; 
our $b01 = "";       # 2016apr02: for OutBuffer();
our $b02 = "";       # 2016apr02: for OutBuffer();
our $b03 = "";       # 2016apr02: for OutBuffer();
our $b04 = "";       # 2016apr02: for OutBuffer();
our $b05 = "";       # 2016apr02: for OutBuffer();
our $b06 = "";       # 2016apr02: for OutBuffer();
our $b07 = "";       # 2016apr02: for OutBuffer();
our $b08 = "";       # 2016apr02: for OutBuffer();
our $b09 = "";       # 2016apr02: for OutBuffer();
our $b10 = "";       # 2016apr02: for OutBuffer();
our $b11 = "";       # 2016apr02: for OutBuffer();
our $b12 = "";       # 2016apr02: for OutBuffer();
our $b13 = "";       # 2016apr02: for OutBuffer();
our $b14 = "";       # 2016apr02: for OutBuffer();
our $b15 = "";       # 2016apr02: for OutBuffer();
our $b16 = "";       # 2016may21: http://ai.neocities.org/var.html#b16
our $beep = 0;       # 2016apr29: flag for Motorium() to create a beep.
our $bias = 5;       # 2016feb10: EnParser; NewConcept: expected POS 
our $birth = localtime($^T);  #2016apr21: PERL Black Book p. 444
our $c01 = "";       # 2016may21: http://ai.neocities.org/var.html#c01
our $c02 = "";       # 2016apr02: for AudBuffer();
our $c03 = "";       # 2016apr02: for AudBuffer();
our $c04 = "";       # 2016apr02: for AudBuffer();
our $c05 = "";       # 2016apr02: for AudBuffer();
our $c06 = "";       # 2016apr02: for AudBuffer();
our $c07 = "";       # 2016apr02: for AudBuffer();
our $c08 = "";       # 2016apr02: for AudBuffer();
our $c09 = "";       # 2016apr02: for AudBuffer();
our $c10 = "";       # 2016apr02: for AudBuffer();
our $c11 = "";       # 2016apr02: for AudBuffer();
our $c12 = "";       # 2016apr02: for AudBuffer();
our $c13 = "";       # 2016apr02: for AudBuffer();
our $c14 = "";       # 2016apr02: for AudBuffer();
our $c15 = "";       # 2016apr02: for AudBuffer();
our $c16 = "";       # 2016apr02: for AudBuffer();
our $c17 = "";       # 2016apr03: for AudBuffer() space
our $chaincon = 0;   # 2016apr15: chain-of-thought condition-flag
our $char = " ";     # 2016jan12: For use with getc in FileInput()
our $cns = 4096;     # 2016apr19: size of central nervous system
our $coda = 64;      # 2016apr19: memory recycled in ReJuvenate()
our $dba = 0;        # 2016jan16: doing-business-as noun-case or verb-person
our $defact = 0;     # 2015apr06: default activation for NounPhrase()
our $defcon = 5;     # 2016jan21: defense condition
our $dirobj = 0;     # 2016mar29: flag indicates seeking for a direct object 
our $eot = 0;        # 2016feb01: end-of-transmission for end of input
our $eureka = " ";   # 2016feb23: something "found" in the aud-recog modules
our $fyi = 2;        # 2016feb08: 2 = Tutorial mode; 3 = Diagnostic mode
our $gencon = 0;     # 2016apr02: status-con flag when calling VerbGen()
our $hlc = "en";     # 2016jan22: human-language code; 1=en; 2=de; 3=ru.
our $idea = " ";     # 2016apr09: for re-entry of AI thought back into the AI.
our $inhibcon = 0;   # 2016apr17: flag for neural inhibition 
our $iob = 0;        # 2016mar26: indirect-object tag for @psy concept array
our $jrt = 0;        # 2016apr18: ReJuvenate() "junior time" for memories moved
our $jux = 0;        # 2016jan20: jux(taposed) concept in @psy array.
our $k = 0;          # 2016mar15: k(knowledge) element from @psy concept array
our $krt = 0;        # 2015may10: knowledge representation time
our $len = 0;        # 2016jan27: length, for avoiding input non-words 
our $mfn = 0;        # 2016jan16: masculine-feminine-neuter gender flag.
our $midway = 0;     # 2016jan23: limit for searching backwards in memory
our $mjact = 0;      # 2016jun18: motjuste-activation for defaulting to 701=I
our $monopsi = 0;    # 2016jan27: For use in AudRecog() module 
our $morphpsi = 0;   # 2016jan27: "for audRecog recognition of morphemes"
our $motjuste = 0;   # 2016feb12: "best word for inclusion in a thought" 
our $msg = " ";      # 2015may01: $msg is for "message" of input.
our $num = 0;        # 2016jan16: number-flag for grammatical number.
our $node = 0;       # 2016jan27: "split" @psy array row into nodes
our $nounlock = 0;   # 2016apr07: for a verb to lock onto a seq-noun 
our $nphrnum = 0;    # 2016apr02: grammatical number of noun-phrase
our $nphrpos = 0;    # 2016apr07: for testing during EnThink() process 
our $nxr = " ";      # 2016jan26: for AudRecog dealing with next memory row
our $nxt = 0;        # 2016feb03: number incremented for each new concept
our $oldpsi = 0;     # 2016jan30: used in OldConcept to de-globalize "psi"
our $onset = 0;      # 2016jan16: onset-tag for use as recall-vector. 
our $output = " ";   # 2016feb17: output string as in JavaScript AiMind.html
our $pho = "";       # $pho is for a "phoneme" or character of input. 
our $phodex = 0;     # 2016apr02: pho-index for AudBuffer()
our $pos = "5";      # 1=adj 2=adv 3=conj 4=interj 5=noun 6=prep 7=pron 8=verb
our $pov = 1;        # 2016mar27: point-of-view: 1=self; 2=dual; 3=alien.
our $prc = 0;        # 2016jan26: provisional recognition in AudRecog()
our $prclen = 0;     # 2016JUL01: lenth of stem when $prc is declared. 
our $pre = 0;        # 2016jan20: pre(vious) associated @psy concept. 
our $prejux = 0;     # 2016jun17: previous $jux to carry NOT to verb 
our $prepcon = 0;    # 2016mar19: prepositional condition-flag for parsing.
our $prepgen = 0;    # 2016mar30: urgency to generate a prepositional phrase. 
our $prevtag = 0;    # 2016jun18: may need to be global for InStantiate()?
our $prsn = 0;       # 2016apr02: 1st, 2nd, 3rd person of verb-forms. 
our $psi = 1;        # 2016jan19: variable for elements of @psy array
our $psibase = 0;    # 2016jan27: "winning psibase with winning actbase"
our $quapsi = 0;     # 2016jun19: last input concept by which call to SpreadAct()
our $recnum = 0;     # 2016jan27: "recognized number of a recognized word"
our $rjc = 0;        # 2016apr18: counter of rejuvenation cycles
our $rv = 0;         # 2016jan22: recall-vector for auditory memory. 
our $seq = 0;        # 2016jan20: subSEQuent @psy concept in an idea.
our $seqneed = 0;    # 2016mar03: noun/pronoun or verb needed as a "seq"; 2016mar03
our $seqpsi = 0;     # 2016apr11: concept to which activation should be spread. 
our $snu = 0;        # 2016apr02: subject-number as parameter for verb-selection.
our $spt = 0;        # 2016jan23: blank space time before start of a word
our $stemgap = 0;    # 2016jan27: "for avoiding false audRecog stems"
our $subject = 0;    # 2016mar18: subject for parser module
our $subjectflag = 0; # 2016mar29: initial default for NounPhrase 
our $subjnum = 0;    # 2016apr07: for agreement with predicate nominative;
our $subjpre = 0;    # 2016mar19: subject-$pre to be held for verb in parsing.
our $subjpsi = 0;    # 2016apr02: parameter to govern person of verb-forms 
our $sublen = 0;     # 2016jan27: "length of audRecog subpsi word-stem"
our $subpsi = 0;     # 2016jan27: "for AudRecog of sub-component wordstems"
our $t = 0;          # 2015may02: Lifetime experiential time "$t"
our $t2s = 0;        # 2015apr26: auditory text-to-speech index 
our $tai = 0;        # 2016apr14: time of artificial intelligence diagnostics
our $tdo = 0;        # 2016mar21: time-of-direct-object for a parser module.
our $tio = 0;        # 2016mar21: time-of-indirect-object for parser module.
our $tkb = 0;        # 2016jan20: time-in-knowledge-base of an idea.
our $topic = 0;      # 2016apr07: @psy topic for a question to be asked 
our $tpp = 0;        # 2016mar19: time-of-preposition for parsing.
our $trigger = 0;    # 2016apr29: a trigger for Volition() to call Motorium()
our $tsj = 0;        # 2016mar18: time-of-subject for parsing.
our $tseln = 0;      # 2016mar29: time of selection of noun.
our $tselv = 0;      # 2016apr13: time of selection of verb (for neural inhibition)
our $tsn = 0;        # 2016mar15: time of input as $seqneed time for InStantiate()
our $tult = 0;       # 2016jan18: t penultimate, or time-minus-one 
our $tvb = 0;        # 2016mar21: time-of-verb for parsing
our $unk = " ";      # 2016feb20: all-putpose $unk for troubeshooting
our $utf8char = " "; # 2016feb16: wiki/Perl_Programming/Unicode_UTF-8
our $vault = 2425;   # 2016may23: size of MindBoot() sequence in time-points.
our $verbcon = 0;    # 2016mar21: verb-condition for seeking (in)direct objects.
our $verblock = 0;   # 2016apr07: for subject-noun to lock onto seq-verb;
our $verbpsi = 0;    # 2016apr07: $psi concept-number of verb in the @psy array
our $vphraud = 0;    # 2016apr02: holds aud-fetch of verb-form for Speech() module
our $vrsn="ghost175"; # 2016JUL10: version identifier for sake of minddata.txt log.
our @ear = " ";      # 2016jan28: new name for auditory memory array. 
our @psy = " ";      # 2016jan19: conceptual array renamed as @psy
sub AudBuffer;   # 2016mar26: for transfer of words to OutBuffer().
sub AudInput;    # 2016mar26: auditory input module for keyboard input.
sub AudMem;      # 2016mar26: auditory memory module for storing engrams.
sub AudRecog;    # 2016jan23 auditory recognition module. 
sub DeThink;     # 2016jan24: Selected dynamically by $hlc flag.
sub Emotion;     # 2016mar26: for stub of physiological emotion. 
sub EnNounPhrase;  # 2016feb18: for thinking with nouns and pronouns.
sub EnThink;     # 2016jan24: Selected dynamically by $hlc flag.
sub EnVerbPhrase;  # 2016feb17: for verbs to be used in a thought. 
sub FileInput;   # 2016jan10 PbEx5e p. 351: Forward declaration.
sub InStantiate; # 2016jan19 PbEx5e p. 351: Forward declaration.
sub KbLoad;      # 2016jan22 PbEx5e p. 351: Forward declaration.
sub MindBoot;    # 2016jan23 PbEx5e p. 351: Forward declaration.
sub motorium;    # 2015apr25 PbEx5e p. 351: Forward declaration.
sub NewConcept;  # 2015may28 PbEx5e p. 351: Forward declaration.
sub NounPhrase;  # 2016feb11: for nouns and pronouns in a thought.
sub OldConcept;  # 2016jan14 PbEx5e p. 351: Forward declaration.
sub RuThink;     # 2016jan24: Selected dynamically by $hlc flag.
sub Sensorium;   # 2016mar26: sensory input module
sub TabulaRasa;  # 2016jan25: Called from MainLoop as in MindForth
sub VisRecog;    # 2015apr26 PbEx5e p. 351: Forward declaration.
sub volition;    # 2015apr24 PbEx5e p. 351: Forward declaration.

sub TabulaRasa() {  # 2016jan25: Establish size and emptiness of CNS. 
  print "Size of AI memory is $cns human language code = $hlc \n"; #2016feb16
  my $trc = 0;  # 2015apr2015 $trc is "tabula rasa counter".
  until ($trc == $cns) {  # 2015apr26 PbEx5e p. 193 "Loops".
    $psy[$trc] = "0,0,0,0,0,0,0,0,0,0,0,0,0"; # 2016mar26: adding $iob.
    $ear[$trc] = " ,0,0";  # 2016jan28: initialize three columns.
    $trc++;  # 2015apr26: Increment tabula-rasa-counter $trc.
  }  # End of loop filling auditory memory with blank engrams.
}  # 2016feb11: End of TabulaRasa "clean slate" sequence. 


sub PsiDecay() {  # 2016apr13: let conceptual activations dwindle 
  print "  PsiDecay() moves conceptual activations towards zero. \n"; # 2016JUL04
  for (my $i=$t; $i>$midway; $i--) {  # 2016apr13: move backwards in time.
    my @k=split(',',$psy[$i]);  # 2016apr13: inspect @psy flag-panel
    if ($k[1] > 2) { $k[1] = ($k[1] - 2) }  # 2016may01: approach zero.
#   if ($k[1] < 0) { $k[1] = ($k[1] + 1) }  # 2016may02: reduce inhibition.
    if ($k[1] < 0) { $k[1] = ($k[1] + 2) }  # 2016JUL04: rapid recovery. 
$psy[$i]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  }  # 2016apr13: End of (for loop) moving backwards in time 
}  # 2016apr13: PsiDecay() returns to EnThink()...


sub AudDamp() {  # 2016feb03: "deactivate auditory engrams"
  for (my $i=$midway; $i<$cns; $i++) {  # 2016feb03: 
    my @aud=split(',',$ear[$i]);  # 2016feb03: Examine the @ear array.
     $ear[$i] = "$aud[0],0,$aud[2]";  # 2016feb03: Reset act to zero. 
  }  # 2016feb03: end of forwards sweep through auditory memory.
}  # 2016feb03: End of AudDamp(0; return to input module. 


# $act 33-48 = consciousness tier where concepts win selection.
# $act 17-32 = subconscious where concepts remain available. 
# $act  1-16 = noise tier below logical association threshold.
sub SpreadAct() {  # 2016apr11: spread activation from concept to concept.
  print "\nSpreadAct() has been called to spread conceptual activation.\n"; #2016apr29
  print " SprA: krt= $krt quapsi= $quapsi actpsi= $actpsi \n"; #2016jun19
  PsiDecay();  # 2016may01: reduce conceptual activation in general.
  if ($actpsi > 0) {  # 2016apr11: if there is an actpsi concept...
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr12: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016apr11: inspect @psy flag-panel
      if ($k[0] == $actpsi && $k[8] > 0) { $seqpsi = $k[8] } #2016apr12: if seq, seqpsi
      if ($k[0] == $actpsi && $k[7] > 0) {  # 2016apr29: require verblock.
        print "  i= $i actpsi= $actpsi seqpsi= $seqpsi \n";  #2016apr29
        $k[1] = ($k[1] + 32);  # 2016jun28: impose less than half of subj-inhibition. 
  print "   SprAct-mid: for $k[0] setting $k[1] activation \n"; # 2016jun19
  $psy[$i]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
      }  # 2016apr12: end of diagnostic test
    }  # 2016apr11: end of (for loop) searching for actpsi concept.
  }  # 2016apr11: end of test for a positive $actpsi.
  print "    SpreadAct-end : t= $t actpsi= $actpsi seqpsi= $seqpsi \n";  # 2016apr29
  $actpsi = 0;  # 2016apr12: reset for safety. 
}  # 2016jun30: SpreadAct() returns to ReEntry().


sub KbLoad() {  # 2016jan23: load MindBoot knowledge-base bootstrap.
  if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
    print "KbLoad stores MindBoot knowledge-base, t= $t. \n";  # 2016jan23
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  $psy[$t] = "$psi,$act,$hlc,$pos,$jux,$pre,$iob,$tkb,$seq,$num,$mfn,$dba,$rv"; 
}  # 2016jan23: End of KbLoad; return to MindBoot knowledge bootstrap.


sub OutBuffer() {  # 2016apr02: right-justifies a word in memory.
  $b01=""; $b02=""; $b03=""; $b04=""; $b05=""; $b06="";  # 2016apr02
  $b07=""; $b08=""; $b09=""; $b10=""; $b11=""; $b12="";  # 2016apr02
  $b13=""; $b14=""; $b15=""; $b16="";  # 2016apr02: clear tabula rasa;
  if ($c16 ne "") {  # 2016apr03: if the AudBuffer is full; 
  $b16=$c16; $b15=$c15; $b14=$c14; $b13=$c13;  # 2016apr02
  $b12=$c12; $b11=$c11; $b10=$c10; $b09=$c09;  # 2016apr02
  $b08=$c08; $b07=$c07; $b06=$c06; $b05=$c05;  # 2016apr02
  $b04=$c04; $b03=$c03; $b02=$c02; $b01=$c01;  # 2016apr02
  return;    # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 16-character word;
  if ($c15 ne "") {  # 2016apr03: if the word is only 15 characters
    $b16=$c15; $b15=$c14; $b14=$c13; $b13=$c12; $b12=$c11; $b11=$c10;
    $b10=$c09; $b09=$c08; $b08=$c07; $b07=$c06; $b06=$c05; $b05=$c04; 
    $b04=$c03; $b03=$c02; $b02=$c01; $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02:  end of transfer of a 15-character word;
  if ($c14 ne "") {  # 2016apr03: if the word is only 14 characters
    $b16=$c14; $b15=$c13; $b14=$c12; $b13=$c11; $b12=$c10; $b11=$c09;
    $b10=$c08; $b09=$c07; $b08=$c06; $b07=$c05; $b06=$c04; $b05=$c03;
    $b04=$c02; $b03=$c01; $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of a 14-character word;
  if ($c13 ne "") {  # 2016apr03: if the word is only 13 characters
    $b16=$c13; $b15=$c12; $b14=$c11; $b13=$c10; $b12=$c09; $b11=$c08;
    $b10=$c07; $b09=$c06; $b08=$c05; $b07=$c04; $b06=$c03; $b05=$c02;
    $b04=$c01; $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of a 13-character word;
  if ($c12 ne "") {  # 2016apr03: if the word is only 12 characters
    $b16=$c12; $b15=$c11; $b14=$c10; $b13=$c09; $b12=$c08; $b11=$c07;
    $b10=$c06; $b09=$c05; $b08=$c04; $b07=$c03; $b06=$c02; $b05=$c01;
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02:  abandon remainder of function; 
  }  # 2016apr02:  end of transfer of a 12-character word;
  if ($c11 ne "") {  # 2016apr03: if the word is only 11 characters
    $b16=$c11; $b15=$c10; $b14=$c09; $b13=$c08; $b12=$c07; $b11=$c06;
    $b10=$c05; $b09=$c04; $b08=$c03; $b07=$c02; $b06=$c01; $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of an 11-character word;
  if ($c10 ne "") {  # 2016apr03: if the word is only 10 characters
    $b16=$c10; $b15=$c09; $b14=$c08; $b13=$c07; $b12=$c06; $b11=$c05;
    $b10=$c04; $b09=$c03; $b08=$c02; $b07=$c01; $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of a 10-character word;
  if ($c09 ne "") {  # 2016apr03: if the word is only 9 characters
    $b16=$c09; $b15=$c08; $b14=$c07; $b13=$c06; $b12=$c05; $b11=$c04;
    $b10=$c03; $b09=$c02; $b08=$c01; $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of a 9-character word; 
  if ($c08 ne "") {  # 2016apr03: if the word is only 8 characters
    $b16=$c08; $b15=$c07; $b14=$c06; $b13=$c05; $b12=$c04; $b11=$c03;
    $b10=$c02; $b09=$c01; $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02:  abandon remainder of function;
  }  # 2016apr02: end of transfer of an 8-character word;
  if ($c07 ne "") {  # 2016apr03: if the word is only 7 characters
    $b16=$c07; $b15=$c06; $b14=$c05; $b13=$c04; $b12=$c03; $b11=$c02;
    $b10=$c01; $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function;
  }  # 2016apr02: end of transfer of a 7-character word; 
  if ($c06 ne "") {  # 2016apr03: if the word is only 6 characters
    $b16=$c06; $b15=$c05; $b14=$c04; $b13=$c03; $b12=$c02; $b11=$c01;
    $b10="";  $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 6-character word; 
  if ($c05 ne "") {  # 2016apr03: if the word is only 5 characters
    $b16=$c05; $b15=$c04; $b14=$c03; $b13=$c02; $b12=$c01; $b11="";
    $b10="";  $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 5-character word; 
  if ($c04 ne "") {  # 2016apr03: if the word is only 4 characters
    $b16=$c04; $b15=$c03; $b14=$c02; $b13=$c01; $b12="";  $b11="";
    $b10="";  $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 4-character word; 
  if ($c03 ne "") {  # 2016apr03: if the word is only 3 characters
    $b16=$c03; $b15=$c02; $b14=$c01; $b13=""; $b12="";  $b11="";
    $b10="";  $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 3-character word; 
  if ($c02 ne "") {  # 2016apr03: if the word is only 2 characters
    $b16=$c02; $b15=$c01; $b14="";  $b13=""; $b12="";  $b11="";
    $b10="";  $b09="";  $b08="";  $b07="";  $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 2-character word;
  if ($c01 ne "") {  # 2016apr03: if the word is only 1 character
    $b16=$c01; $b15=""; $b14="";  $b13=""; $b12="";  $b11="";
    $b10="";  $b09="";  $b08="";  $b07=""; $b06="";  $b05="";
    $b04="";  $b03="";  $b02="";  $b01="";  # 2016apr02
    return;  # 2016apr02: abandon remainder of function; 
  }  # 2016apr02: end of transfer of a 1-character word; 
}  # 2016apr02: OutBuffer() returns to AudBuffer or VerbGen()


sub AudBuffer() {  # 2016apr02: for transfer of words to OutBuffer()
  if ($abc ne "") { $phodex++ }  # 2016apr03: avoid blank space.
  if ($phodex == 1) {  # 2016apr02: Erase any left-over old data;
    $c01 = $abc; $c02=""; $c03 = ""; $c04  ="";  # 2016apr02
    $c05 = ""; $c06 = ""; $c07 = ""; $c08 = "";  # 2016apr02
    $c09 = ""; $c10 = ""; $c11 = ""; $c12 = "";  # 2016apr02
    $c13 = ""; $c14 = ""; $c15 = ""; $c16 = "";  # 2016apr02
  }  # 2016apr02: end of using $phodex=1 to blank out the AudBuffer()
  if ($phodex == 2)  { $c02 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 3)  { $c03 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 4)  { $c04 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 5)  { $c05 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 6)  { $c06 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 7)  { $c07 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 8)  { $c08 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 9)  { $c09 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 10) { $c10 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 11) { $c11 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 12) { $c12 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 13) { $c13 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 14) { $c14 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 15) { $c15 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 16) { $c16 = $abc }  # 2016apr02: AudBuffer Character
  if ($phodex == 17) { $c17 = $abc }  # 2016apr03: AudBuffer space
}  # End of AudBuffer; return to AudInput or FileInput or VerbGen.


sub Parser() {  # 2016mar17: enlarging the parser function.
  # 2016mar17: OldConcept() shall have provided flag-panel data.
  if ($prepcon == 0) {  # 2016mar19: if not handling a preposition...
    if ($pos == 5 || $pos == 7) {  # 2016mar21: expanding then-clause
      $tsj = $tult;  # 2016mar19: subject?
      if ($verbcon == 1) {  # 2016mar21: if a verb has come in...
        if ($tio > 0)  {  # 2016mar21: if $tio previously set...
          $tdo = $tult;  # 2016mar21: second noun sets time of dir.obj.
        }  # 2016mar21: end of test to make 2nd noun the direct object.
        if ($tio == 0) {$tio = $tult}  # 2016mar21: set only once
        if ($tdo == 0) {$tdo = $tult}  # 2016mar21: initial d.o. setting
        my @k=split(',',$psy[$tvb]);  # 2016mar21: expose flag-panel of verb
        $pre = $k[0];  # 2016mar21: verb psi will be $pre of direct object
        @k=split(',',$psy[$tio]);  # 2016mar26: expose flag-panel of indir.obj.
        $iob = $k[0];  # 2016mar27: excerpt indirect-object concept for k[6]
  $psy[$tio]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],3,$k[12]";
        # 2016mar23: Above line inserts dba=3 for dative-case indirect object. 
        @k=split(',',$psy[$tdo]);  # 2016mar26: expose flag-panel of dir.obj.
  $psy[$tdo]="$k[0],$k[1],$k[2],$k[3],$k[4],$pre,$k[6],$k[7],0,$k[9],$k[10],4,$k[12]";
        # 2016mar21: Above line inserts verb-$psi as $pre of direct object. 
        @k=split(',',$psy[$tvb]);  # 2016mar26: expose flag-panel of main verb.
  $tdo = $tult;  # 2016jun26: insert time-of-direct-object for nounlock; 
 $psy[$tvb]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$iob,$tdo,$psi,$k[9],$k[10],$k[11],$k[12]";
        $iob = 0;  # 2016mar27: reset indirect-object identifier for safety. 
      }  # 2016mar21: end of test for a condition following a verb.
    }  # 2016mar21: end of test for noun not object of a preposition.
  }  # 2016mar21: end of test for a non-prepositional condition.
  if ($pos == 6) { $prepcon = 1; $tpp = $tult }  # 2016mar19: prepare for noun.
  if ($pos == 5 || $pos == 7) {  # 2016mar19: 
  print "\n PrsrSbj: tsj= $tsj tvb= $tvb tio= $tio iob= $iob tdo= $tdo \n"; #2016jun26
    if ($prepcon == 1) {  # 2016mar19: 
      my @k=split(',',$psy[$tpp]);  # 2016mar19: expose flag-panel of preposition;
      $pre = $k[0];  # 2016mar19: Let $pre briefly be the preposition.
 $psy[$tpp]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7]$psi,$k[9],$k[10],$k[11],$k[12]";
  print "ParserA: tult $tult psi= $psi pos= $pos tpp= $tpp prepcon= $prepcon \n"; # 2016mar
      @k=split(',',$psy[$tult]);  # 2016mar21: expose flag-panel of obj of prep.
  $psy[$tult]="$k[0],$k[1],$k[2],$k[3],$k[4],$pre,$k[6],$k[7],0,$k[9],$k[10],4,$k[12]";
# 2016mar19: Line above for object sets prep as $pre; $seq as 0; $dba as 4. 
  print "ParserB: tult $tult psi= $psi pos= $pos tpp= $tpp prepcon= $prepcon \n"; # 2016mar19
  print "ParserB: tult $tult psi= $psi tpp= $tpp verbcon= $verbcon \n"; # 2016mar21
      $prepcon = 0;  # 2016mar19: Reset to prevent carry-over. 
    }  # 2016mar19: end of test for a positive $prepcon.
  }  # 2016mar19: end of test for a noun or pronoun.
# if ($pos == 8) {  # 2016mar19: assign flags to both subject and verb.
  if ($pos == 8 && $psi != 830) {  # 2016jun17: if verb other than "DO"
    $tvb = $tult;  # 2016mar21: hold onto time-of-verb for flag-insertions.
    $verbcon = 1;  # 2016mar21: verb-condition is "on" for ind. & dir. objects.
  print " Parser: t= $t tsj= $tsj psi= $psi pos= $pos prepcon= $prepcon \n";  # 2016mar19
    my @k=split(',',$psy[$tsj]);  # 2016mar19: expose flag-panel of subject noun
    $subjpre = $k[0];  # 2016mar19: Hold onto $subjpre for the pos=8 verb
 $psy[$tsj]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$tvb,$psi,$k[9],$k[10],1,$k[12]";
    $tsj = 0;  # 2016mar23: Reset to zero after deployment for setting flags.
    @k=split(',',$psy[$tult]);  # 2016mar21: expose flag-panel of verb.
 $psy[$tult]="$k[0],$k[1],$k[2],$k[3],$k[4],$subjpre,$k[6],$k[7],0,$k[9],$k[10],$k[11],$k[12]";
    $subjpre = 0;  # 2016mar19: Reset for safety. 
  }  # 2016mar19: end of test for a pos=8 verb.
}  # 2016mar17: End of Parser; return to InStantiate()


sub InStantiate() {  # http://mind.sourceforge.net/instiate.html
  $pre = $prevtag;    # 2016jun18: re-globalize?
  $prevtag = 0;  # 2016mar12: Reset for safety.
  if ($oldpsi == 701) { $pos = 7 }  # 2016jun19: 7 = pronoun.
  if ($fyi > 0) {  # 2016feb10: TEST MODE
    print "\nInStantiate() has been called by a parser module \n"; # 2016feb24
    print " InSt: psi= $psi,act= $act,hlc= $hlc,pos= $pos,";  # 2016jun30: flags
    print "jux= $jux,pre= $pre,\n"; # 2016jun30: @psy associative-tag flag-panel
    print " InSt: iob=$iob,tkb=$tkb,seq=$seq,num=$num,mfn=$mfn,dba=$dba,rv=$rv\n"; 
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  $act = 0;   # 2016jun26: preparing to activate only older nodes of concepts.
  print "InStantiate: pov= $pov pos= $pos psi= $psi \n"; # 2016jun26: TEST; REMOVE
  if ($pov > 0) {  # 2016JUL03: if the point-of-view does not matter; TEST
    for (my $i=$t; $i>$midway; $i--) {  # 2016jun26: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016jun26: inspect @psy flag-panel
      if ($k[0] == $psi) { $k[1] = ($k[1] + 32) } #2016JUL04: impart activation.
      if ($k[0] == $psi) { print "$k[1] @ $i " } #2016JUL03: 
$psy[$i]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
    }  # 2016jun26: end of (for loop) searching backwards in time.
  }  # 2016jun26: end of test for an external source of inputs.
  $tult = $t - 1;  # 2016feb10: penultimate time
  $act = -48;  # 2016JUL06: for a "trough" of recent-most inhibition. 
  # 2016mar26:   $k[0]$k[1]$k[2]$k[3]$k[4]$k[5]$k[6]$k[7]$k[8]$k[9]$k[10]$k[11]$k[12]
  $psy[$tult] = "$psi,$act,$hlc,$pos,$jux,$pre,$iob,$tkb,$seq,$num,$mfn,$dba,$rv"; 
  if ($jux == 250) { $jux = 0 }  # 2016jun17: Reset after use.
  if ($prejux == 250) {  # 2016jun17: 250=NOT from OldConcept()
    $jux = 250;  # 2016jun17: set $jux for next instantiand;
    $prejux = 0;  # 2016jun17: Reset for safety.
  }  # 2016jun17: end of post-instantiation test;
  Parser();  # 2016mar17: building up the parser function.
  if ($pos == 5 || $pos == 7) { $prevtag = $psi };  # 2016mar12: after subject
  if ($pos == 8) { $prevtag = $psi };  # 2016mar12: after a verb.
  if ($pos == 8 && $seqneed == 0) { $seq = $psi };  # 2016mar15: for the $seq of a subject
  if ($pos == 5 || $pos == 7) {  # 2016mar15: if noun or pronoun...
    $seq = 0;  # 2016mar15: until set by the $seqneed mechanism...
    if ($seqneed == 0) { $seqneed = 8 } # 2016mar15: if start of input sentence...
    if ($seqneed == 5) { $seqneed = 0 } # 2016mar15: for subject only
  }  # 2016mar15: 
  if ($pos == 5 || $pos == 7) { $actpsi = $psi }  # 2016JUL10: for ReEntry() & SpreadAct()
  if ($pos == 8) { $seqneed = 5 };  # 2016mar15: if verb, need direct object.
  $pre = 0;  # 2016mar12: Reset to prevent carry-over. 
  $act = 0;  # 2016apr27: reset to prevent carry-over.
  print "  InSta-end: actpsi= $actpsi quapsi= $quapsi \n \n";  # 2016JUL10: TEST
}  # http://code.google.com/p/mindforth/wiki/InStantiate


# 2015jun04 Requirements of EnParser English Parser module:
# EnParser shall at first assume that a new word is a noun.
# EnParser shall call InStantiate to complete the parsing process. 
sub EnParser() {  # http://mind.sourceforge.net/parser.html
  $act = 48;  # 2016apr27: an arbitrary activation for InStantiate()
  $bias = 5;  # 2015jun04: Expect a noun until overruled. 
  if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
    print "   EnParser has been called by NewConcept \n";  # 2016jan14
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  if ($pos == 5) { $bias = 8 }  # 2016feb10: after noun, expect verb.
  if ($pos == 7) { $bias = 8 }  # 2016feb10: after pronoun, expect verb.
  if ($pos == 8) { $bias = 5 }  # 2016feb10: after verb, expect noun
  InStantiate(); # 2016jan19: for creating @psi concept-nodes
}  # 2016feb10: EnParser() returns to OldConcept() or NewConcept().


sub RuParser() {  # http://mind.sourceforge.net/parser.html
  $act = 48;  # 2016apr28: an arbitrary activation for InStantiate()
  $bias = 5;  # 2016feb24: Expect a noun until overruled. 
  if ($fyi > 2) {  # 2016feb24: if mode is Diagnostic 
    print "   RuParser has been called by NewConcept \n";  # 2016jfeb24
  }  # 2016feb24: end of test for Diagnostic or Tutorial mode.
  if ($pos == 5) { $bias = 8 }  # 2016feb24: after noun, expect verb.
  if ($pos == 7) { $bias = 8 }  # 2016feb24: after pronoun, expect verb.
  if ($pos == 8) { $bias = 5 }  # 2016feb24: after verb, expect noun
  print "RuParser: pos= $pos bias= $bias hlc= $hlc psi= $psi \n"; #2016feb24
  InStantiate(); # 2016feb24: for creating @psi concept-nodes
}  # 2016feb24: RuParser() returns to OldConcept() or NewConcept().


sub OldConcept() {  # http://mind.sourceforge.net/oldcept.html
  if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
    print "\nOldConcept() called by an input module.\n";  # 2016jan30
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  for (my $i=$t; $i>$midway; $i--) {  # 2016feb10: search backwards in time.
    my @k=split(',',$psy[$i]);  # 2016mar15: inspect @psy knowledge nodes
    if ($k[0] == $oldpsi) {  # 2016mar15: find most recent oldpsi engram
      if ($k[2] ne 0)  { $hlc = $k[2] }  # 2016apr07: human-language code;
      if ($k[3] > 0)  { $pos = $k[3] }   # 2016apr06: pos = part of speech;
      if ($k[9] > 0)  { $num = $k[9] }   # 2016apr06: grammatical num(ber);
      if ($k[10] > 0) { $mfn = $k[10] }  # 2016apr06: m/f/n gender 1/2/3; 
    }  # 2016feb10: end of test for $oldpsi match in @psy array
  }  # 2016mar13: End of (for loop) searching through @psy conceptual array. 
  if ($hlc eq "en") {  # 2016feb10: test for governing human-language-code 
    if ($oldpsi == 250) { $prejux = 250 }  # 2016jun17: a flag for negation.
    $psi = $oldpsi;  # 2016feb10: from MindForth.
    if ($pov == 2) {  # 2016mar27: during a pov "dual" conversation...
      if ($oldpsi == 245) { $prepgen = 8 }  # 2016mar30: if "Where?" call EnPrep()
      if ($oldpsi == 707) { $psi = 701; $rv = 0 }  # 2016mar27: interpret "YOU" as "I";
      if ($oldpsi == 701) { $psi = 707; $rv = 0 }  # 2016mar27: interpret "I" as "YOU".
      if ($oldpsi == 731) { $psi=737; $num=2; $dba=1; $rv=0 } # 2016mar30: we --> you.
      print "\nOldConcept: oldpsi= $oldpsi real psi= $psi \n";  # 2016apr30: TEST
    }  # 2016mar27: end of test for other person communicating with the AI.
    EnParser(); # 2016feb10: In preparation to call InStantiate().
  }  # 2016feb10: end of test for English human-language-code 
  if ($hlc eq "ru") {  # 2016feb24: test for governing human-language-code 
    $psi = $oldpsi;  # 2016feb24: from MindForth.
    if ($pov == 2) {  # 2016apr01: during a pov "dual" conversation...
      if ($oldpsi == 245) { $prepgen = 8 }  # 2016apr01: if "Where?" call RuPrep()
      if ($oldpsi == 707) { $psi = 701; $rv = 0 }  # 2016apr01: interpret "YOU" as "I";
      if ($oldpsi == 701) { $psi = 707; $rv = 0 }  # 2016apr01: interpret "I" as "YOU".
      if ($oldpsi == 731) { $psi=737; $num=2; $dba=1; $rv=0 } # 2016apr01: we --> you.
      if ($oldpsi == 1707) { $psi=1701; $num=1; $dba=1; $rv = 0 } #2016apr01: ТЫ --> Я
      if ($oldpsi == 1701) { $psi=1707; $num=1; $dba=1; $rv = 0 } #2016apr01: Я --> ТЫ 
      if ($oldpsi == 1731) { $psi=1737; $num=2; $dba=1; $rv=0 }   #2016apr01: МЫ --> ВЫ
      print "\nOldConcept: oldpsi= $oldpsi real psi= $psi \n";  # 2016apr30
    }  # 2016mar27: end of test for other person communicating with the AI.
    RuParser(); # 2016feb24: In preparation to call InStantiate().
  }  # 2016feb24: end of test for Russian human-language-code 
  $audnew = 0;  # 2016feb09: Reset for sake of $rv of next input word.
  $oldpsi = 0;  # 2016jan30: reset for safety.
}  # http://code.google.com/p/mindforth/wiki/OldConcept


# 2015may28 Requirements of NewConcept mind-module: 
# NewConcept shall create a concept in @psy for each new word encountered. 
# A flag-panel shall lodge associative tags with each new @psy concept.
sub NewConcept() {  # http://mind.sourceforge.net/newcept.html
  print  "\nNewConcept: nxt= $nxt len= $len \n";  # 2016mar08
  $psi = $nxt;           # 2016jan22: For xfer to InStantiate().
  if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic
    print " NewC hlc= $hlc calls InStantiate for psi $psi len $len \n"; # 2016feb12
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  $pos = $bias;  # 2016feb10: InStantiate() stores value from EnParser().
# if ($hlc eq "de") {  # 2016jan22: test for governing human-language-code 
#   DeParser(); # 2016jan22: In preparation to call InStantiate().
# }  # 2016feb19: http://de.perl6intro.com 
  if ($hlc eq "en") {  # 2016jan22: test for governing human-language-code 
    EnParser(); # 2015jun04: In preparation to call InStantiate().
  }  # 2016jan22: end of test for English human-language-code 
  if ($hlc eq "ru") {  # 2016feb24: test for governing human-language-code 
    RuParser(); # 2016feb24: In preparation to call InStantiate().
  }  # 2016feb24: end of test for Russian human-language-code.
  if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
    print  "NewConcept-late: nxt= $nxt len= $len \n";  # 2016feb03:
  }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  if ($len > 0)  {  # 2016jan30: do not count spurious new concepts
    $nxt++;     # 2016jan22: Increment for each new human word/concept. 
    if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
      print "NewConcept increments nxt counter to $nxt \n"; # 2016feb02
    }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
  }  # 2016jan30: end of test for new concepts with positive length.
  $audnew = 0;  # 2016feb09: Reset for sake of $rv of next input word. 
  $audpsi = 0;  # 2016feb03: reset to prevent carry-overs. 
}  # 2016feb10: NewConcept() returns to AudInput() or FileInput().


sub AudRecog() {  # http://code.google.com/p/mindforth/wiki/AudRecog
  $audrec = 0;  # 2016jan23: prevent carry-over of previous value. 
  $psi = 0;     # 2016jan23: prevent carry-over of previous value. 
  $act = 8;     # 2016jan30: as in Mindforth, start with a hefty value.
  my $actbase = 0; # 2016may22: trying to de-globalize the variable. 
  for (my $i=$spt; $i>$midway; $i--) {  # 2016feb07: search backwards in time.
    my @aud=split(',',$ear[$i]);    # 2016jan28: @ear is new array-name
    if ($pho ne $aud[0]) { $ear[$i] = "$aud[0],0,$aud[2]" }  #2016apr22: de-activate
    if ($pho eq $aud[0])  { # 2016jan29: If incoming pho matches stored aud0;
      if ($aud[1]==0) { # 2016jan28: if matching engram has no activation;
        my @prv=split(',',$ear[$i-1]);  # 2016mar14: "@prv" for "previous" row.
        if ($prv[0] !~ /[A-Z]/) {  # 2016feb3: "if beg=1 on matching no-act aud engram"
          if ($audrun < 2) { # 2016jan27: "if comparing start of a word"
            my @nxr=split(',',$ear[($i+1)]);  # 2016jan28: for next-in-line char
            if ($nxr[0] =~ /[A-Z]/) {   # 2016jan27: pattern binding operator
              $ear[$i+1] = "$nxr[0],8,$nxr[2]"; # 2016feb3: "activate N-I-L character"
              $audrec = 0;  # 2016jan27: from MindForth AI
            } # 2016jan27: "end of test for continuation of beg-aud"
            my @aud=split(',',$ear[($i)]);  # 2016jan31: for current char
            if ($aud[2] > 0)  {  # 2016jan31: if concept number present
              $monopsi = $aud[2];  # 2016feb06: hold onto potential monopsi
              $prc = $aud[2];  # 2016mar08: provisional recognition; TEST
              if (($len - $prclen) > 2) { $prc = 0 }  # 2016JUL01: word too long
            }  # 2016feb06: end of test for potential monopsi ultimate-tag
          }  # 2016jan27: Mindforth "end of test for audrun=1 start of word"
        }  # 2016jan24: "end of test for a beg(inning) non-active aud0"      
      }  # 2016jan27: "end of test for matching aud0 with no activation"
      my @aud=split(',',$ear[$i]);  # 2016JUL01: break apart @ear auditory array.
      if ($aud[1] > 0) {  # 2016jan28: "If matching aud0 has activation"
        if ($aud[2] > 0) {  # 2016mar08: check for an audpsi tag
          $prc = $aud[2];  # 2016mar08: provisional recognition of a stem
          $prclen = $len;  # 2016JUL01: length at time of provisional recognition
        }  # 2016mar08: end of test for available audpsi
        $audrec = 0;  # 2016jan27: "Zero out any previous audrec."
        my @nxr=split(',',$ear[($i+1)]);  # 2016jan27: for next-in-line char
        if ($nxr[0] =~ /[A-Z]/) {   # 2016jan27: pattern binding operator
          $act = ($act + 2);  # 2016jan27: Increment $act for discrimination.
          $audrec = 0;  # 2016jan27: "because match-up is not complete"
          $ear[$i+1] = "$nxr[0],$act,$nxr[2]"; # "Increment for discrimination."
        }  # 2016jan27: "end of test for active-match aud0 continuation" 
           @nxr=split(',',$ear[($i+1)]);  # 2016jan28: for next-in-line char
        if ($nxr[0] !~ /[A-Z]/) {   # 2016jan27: If ctu=0 indicates end of word
          if ($len == 2) {  # 2016jan27: "If len(gth) is only two characters."
            my @aud=split(',',$ear[$i]);  # Expose values of @ear row #i
            if ($aud[1] > 7) {  # 2016jan28: "testing for eight (8)"
              $psibase = $aud[2];  # 2016jan28 MindForth: "Assume a match."
            }  # 2016jan27 MindForth: "End of test for act=8 or positive."
          }  # 2016jan27 MindForth: "End of test for two-letter words."
        }  # 2016jan27 MindForth: "End of test in AudRecog for end of word."
        my @aud=split(',',$ear[$i]);  # Expose values of @ear row #i
        if ($aud[1] > 8) {  # 2016jan28: "If activation higher than initial
          $actbase = 8;  # 2016jan27 Mindforth: "Since act is > 8 anyway;"
          my @nxr=split(',',$ear[($i+1)]);  # 2016jan27: for next-in-line char
          if ($nxr[0] !~ /[A-Z]/) {   # 2016jan27: If matching word-engram ends
            if ($aud[1] > $actbase) {  # 2016feb03: "Testing for high act."
              $audrec = $aud[2];  # 2016jan28: "Fetch the potential tag"
              $subpsi = $aud[2];  # 2016jan28: "Seize a potential stem."
              $sublen = $len;  # 2016jan27:  "Hold length of word-stem."
              $psibase = $aud[2];  # 2016jan28: "Hold onto winner."
              my @k=split(',',$psy[$i]);  # 2016mar15: "k" for knowledge
              $recnum = $k[9];  # 2016mar26: recognized grammatical number
              if ($k[11] > 0) { $dba = $k[11] }  # 2016jun24
              $actbase = $aud[1];  # 2016jan28: "Winner is new actbase."
            }  else { # 2016jan27: "End of test for act higher than actbase."
              $audrec = 0;  # 2016jan27: no word has been recognized
            } # 2016jan27: End of else-clause
          }  # 2016jan27: "End of test for final char that has a psi-tag."
        }  # 2016jan27: "End of test for engram-activation above eight."
      }  # 2016jan27: "End of test for matching aud0 with activation."
      @aud=split(',',$ear[$i]);  # 2016jun30:
    }  # 2016jan27: "End of test for a character matching 'pho'."
  }  # 2016feb07: End of backwards search through auditory memory. 
  if (($len - $prclen) > 2) { $prc = 0 }  # 2016JUL01: abandon prc if word too long
  $audrun++;   # 2016jan27: audrun is only a counter, not a factor.
  $act = 0;  # 2016jan27:
  $actbase = 0;  # 2016jan27: 
  if ($psibase > 0) { $audrec = $psibase }  # 2016jan27: 
  if ($audrec == 0) {  # 2016feb06: correction, to what MindForth does here.
    if ($monopsi > 0)  {  # 2016jan27:
      if ($len < 2) {  # 2016jan27:
        $audrec = $monopsi;  # 2016jan27: recognize one-letter word.
        print "  AudRec: t= $t finding one-letter audrec= $audrec \n"; #2016feb24
      }  # 2016jan27: end of test for word-length less than two
    }  # 2016jan27: end of test for presence of a found monopsi
  }  # 2016jan27: end of test for a found auditory recognition.
  if ($audrec == 0 && $prc > 0) {  # 2016jan27
    $audrec = $prc;  # 2016jan27: from Dushka RuAi; prov. recog;
  }  # 2016jan27
  if ($audrec == 0) {  # 2016jan27:
    $audrec = $morphpsi;  # 2016jan27: 
    if ($sublen > 0) {  # 2016jan27:
      $stemgap = ($len - $sublen);  # 2016jan27
    }  # 2016jan27:
    if ($stemgap < 0) { $stemgap = 0 }  # 2016jan27
    if ($stemgap > 1) { $subpsi = 0 }  # 2016jan27
    if ($stemgap > 1) { $morphpsi = 0 }  # 2016jan27
    if ($stemgap > 1) { $audrec = 0 }  # 2016jan27
  }  # 2016jan27:
  $psibase = 0;  # 2016jan27
  $subpsi = 0;  # 2016jan27
  if ($audrec > 0) {  # 2016jan27
    if ($stemgap > 2) {  # 2016jan27
      $audrec = 0;  # 2016jan27
    }  # 2016jan27
  }  # 2016jan27
  $audpsi = $audrec;  # 2016jan27
  $audrec = 0;  # 2016jan27: temporary safety precaution after xfer.
  $stemgap = 0;  # 2016jan27: safety measure
}  # End of AudRecog(); return to AudMem(); 2016jan26


sub RuAudRecog() {  # http://code.google.com/p/mindforth/wiki/AudRecog
  $audrec = 0;  # 2016feb20: prevent carry-over of previous value. 
  $psi = 0;     # 2016feb20: prevent carry-over of previous value. 
  $act = 8;     # 2016feb20: as in Mindforth, start with a hefty value.
  my $actbase = 0; # 2016may22: de-globalize here and in English AudRecog().
  for (my $i=$spt; $i>$midway; $i--) {  # 2016feb20: search backwards in time.
    my @aud=split(',',$ear[$i]);    # 2016feb20: @ear is the auditory array
    if ($pho ne $aud[0]) { $ear[$i] = "$aud[0],0,$aud[2]" }  #2016apr05: de-activate
    if ($pho eq $aud[0])  { # 2016feb20: If incoming pho matches stored aud0;
      if ($audrun == 1) {  # 2016apr05: at start of an input word...
        my @prv=split(',',$ear[$i-1]);  # 2016apr05: "@prv" for "previous" row.
        # 2016apr05: if previous space is blank...
        if ($prv[0] eq "" || $prv[0] eq " " || $prv[0] eq "\N{U+0}" ) {   # 2016apr05: 
          if ($aud[2] > 0) { $monopsi = $aud[2] }  # 2016apr05: a throw-away monopsi
          if ($aud[2] > 0) { print " i= $i arun = $audrun monopsi= $monopsi" }  # 2016apr05: 
          my @nxr=split(',',$ear[($i+1)]);  # 2016apr05: for next-in-line char
          $ear[$i+1] = "$nxr[0],8,$nxr[2]"; # 2016apr05: "activate N-I-L character"
        }  # 2016apr05: end of test for matching pho as start of a word
      }  # 2016apr05: end of test for initial audrun, meaning start of word.
      my @aud=split(',',$ear[$i]);  # 2016feb20: row in @ear auditory array
      if ($aud[1] > 0) {  # 2016feb20: "If matching aud0 has activation"
        if ($aud[2] > 0) {  # 2016mar04: check for an audpsi tag
          $prc = $aud[2];  # 2016mar04: provisional recognition of a stem
        }  # 2016mar04: end of test for available audpsi
        $audrec = 0;  # 2016feb20: "Zero out any previous audrec."
        my @nxr=split(',',$ear[($i+1)]);  # 2016feb20: for next-in-line char
          $act = ($act + 2);  # 2016feb20: Increment $act for discrimination.
          $audrec = 0;  # 2016feb20: "because match-up is not complete"
          $ear[$i+1] = "$nxr[0],$act,$nxr[2]"; # "Increment for discrimination."
         @nxr=split(',',$ear[($i+1)]);  # 2016feb20: for next-in-line char
         if ($nxr[0] eq " ") {  # 2016feb28: if blank space after end of word... 
          if ($len == 2) {  # 2016feb20: "If len(gth) is only two characters."
            my @aud=split(',',$ear[$i]);  # Expose values of @ear row #i
            if ($aud[1] > 7) {  # 2016feb20: "testing for eight (8)"
              $psibase = $aud[2];  # 2016jan28 MindForth: "Assume a match."
      print "  RuAudRec: i= $i match $aud[0] len= $len psibase= $psibase \n"; # 2016feb28
              $prc = $aud[2];  # 2016mar04: provisional recognition
  print "     RuAudRec: i= $i match $aud[0] len= $len prc= $prc \n"; # 2016mar04
            }  # 2016feb20: MindForth: "End of test for act=8 or positive."
          }  # 2016feb20: MindForth: "End of test for two-letter words."
        }  # 2016feb20: MindForth: "End of test in AudRecog for end of word."
        my @aud=split(',',$ear[$i]);  # 2016feb20: Expose values of @ear row #i
        if ($aud[1] > 8) {  # 2016feb20: "If activation higher than initial"
          $actbase = 8;  # 2016feb20: Mindforth: "Since act is > 8 anyway;"
          my @nxr=split(',',$ear[($i+1)]);  # 2016feb20: for next-in-line char
          if ($nxr[0] eq " ") {     # 2016feb23 English or German: !~ /[A-Z]/)
          print "   RuAR: i= $i no activation \n";  # 2016feb23 TEST
            if ($aud[1] > $actbase) {  # 2016feb20: "Testing for high act."
              if ($audrec == 0) {  # 2016feb28: TEST; REMOVE
                $audrec = $aud[2];  # 2016feb20: "Fetch the potential tag"
              }  # 2016feb28: TEST
              $prc = $aud[2];  # 2016ymar04: provisional recognition for stems

   print "    RuAudRec general: i= $i finding prc= $prc pho= $pho \n"; #2016mar04
              $subpsi = $aud[2];  # 2016feb20: "Seize a potential stem."
              $sublen = $len;  # 2016feb20:  "Hold length of word-stem."
              if ($psibase == 0) {  # 2016feb28: protect earlier $psibase
                $psibase = $aud[2];  # 2016feb20: "Hold onto winner."
              }  # 2016feb28: end of TEST
              my @k=split(',',$psy[$i]);  # 2016mar15: "k" for knowledge
              $recnum = $k[9];  # 2016mar26: recognized grammatical number
              if ($k[11] > 0) {  # 2016mar26: if there is a $dba value
                $dba = $k[11];  # 2016mar26: for verb-recognition, etc. 
              }  # 2016feb20: "end of test for dba"
              $actbase = $aud[1];  # 2016feb20: "Winner is new actbase."
            }  else { # 2016feb20: "End of test for act higher than actbase."
              $audrec = 0;  # 2016feb20: no word has been recognized
            } # 2016feb20: End of else-clause
          my @aud=split(',',$ear[$i]);  # 2016feb23: Expose values of @ear
          $audrec = $aud[2];  # 2016feb23: capture audpsi of current engram
          print "   RuAudRec: at word-end $aud[0] recognizing $audrec \n"; #2016feb23
          }  # 2016feb20: "End of test for final char that has a psi-tag."
        }  # 2016feb20: "End of test for engram-activation above eight."
      }  # 2016feb20: "End of test for matching aud0 with activation."
    }  # 2016feb20: "End of test for a character matching 'pho'."
  }  # 2016feb20: End of backwards search through auditory memory. 
  $audrun++;   # 2016feb20: audrun is only a counter, not a factor.
  $act = 0;  # 2016feb20:
  $actbase = 0;  # 2016feb20: 
  if ($psibase > 0) { $audrec = $psibase }  # 2016feb20:   
  if ($audrec == 0) {  # 2016feb20: correction, to what MindForth does here.
    if ($monopsi > 0)  {  # 2016feb20:
      if ($len < 2) {  # 2016jan20:
        $audrec = $monopsi;  # 2016feb20: recognize one-letter word.
      }  # 2016feb20: end of test for word-length less than two
    }  # 2016feb20: end of test for presence of a found monopsi
  }  # 2016feb20: end of test for a found auditory recognition.
  if ($audrec == 0 && $prc > 0) {  # 2016feb20
    $audrec = $prc;  # 2016feb20: from Dushka RuAi; prov. recog;
    print   "      RuAudR: t= $t audrec= $audrec prc= $prc pho= $pho \n"; #2016mar03
  }  # 2016feb20
  if ($audrec == 0) {  # 2016feb20:
    $audrec = $morphpsi;  # 2016feb20: 
    if ($sublen > 0) {  # 2016feb20:
      $stemgap = ($len - $sublen);  # 2016feb20
    }  # 2016feb20:
    if ($stemgap < 0) { $stemgap = 0 }   # 2016feb20
    if ($stemgap > 1) { $subpsi = 0 }    # 2016feb20
    if ($stemgap > 1) { $morphpsi = 0 }  # 2016feb20
    if ($stemgap > 1) { $audrec = 0 }    # 2016feb20
  }  # 2016feb20:
  $psibase = 0;  # 2016feb20
  $subpsi = 0;   # 2016feb20
  if ($audrec > 0) {  # 2016feb20
    if ($stemgap > 2) {  # 2016feb20
      $audrec = 0;  # 2016feb20
    }  # 2016feb20
  }  # 2016feb20
  $audpsi = $audrec;  # 2016feb20
  $audrec = 0;  # 2016feb20: temporary safety precaution after xfer.
  $stemgap = 0;  # 2016feb20: safety measure
}  # End of RuAudRecog(); return to RuAudMem(); 2016feb22


sub AudMem() {  # 2016feb21: Re-instated from ghost075.pl of 13feb2016
  print "  AudMem-START: t= $t len= $len hlc= $hlc pho = $pho \n"; # 2016apr30
  if ($pho =~ /[A-Z]/) {  # 2016jan30: Only try to recognize pho(nemes)
    AudRecog();    # 2016jan23: Recognize old words $char by $char. 
  }  # 2016jan30: End of test for a letter of the alphabet. 
  if ($audpsi == 0) {  # 2016feb05: if no news from AudRecog() early in the word
      $ear[$t] = "$pho,$act,0";  # 2016feb05: no ultimate-tag
  }  # 2016feb05: end of test for storing pre-audpsi pho(nemes)
  if ($len > 0) {  # 2016feb05: assign tags to words, not empty rows
    my @aud=split(',',$ear[($t)]);  # 2016feb05: look at current row
    if ($aud[0] !~ /[A-Z]/) {  # 2016feb05: if aud0 is not a letter
      if ($audpsi == 0) {  # 2016feb05: if word unrecognized, nxt new concept
        my @prv=split(',',$ear[($t-1)]);  # 2016feb05: assuming post-word blank
        $ear[$t-1] = "$prv[0],$prv[1],$nxt"; # 2016feb05: retroactive audpsi
        if ($prv[0] eq "S") {  # 2016mar08: if potentially "S" inflection...
          @prv=split(',',$ear[($t-2)]);  # 2016mar08: go back on more char
          $ear[$t-2] = "$prv[0],$prv[1],$nxt"; # 2016mar08: possible end of stem
        }  # 2016mar08: end of test for word ending in "S"
      }  # 2016feb05: end of test to declare new concept for lack of old.
    }  # 2016feb05: end of check to see if space is reached after a word.
  }  # 2016feb05: end of test for a positive word-length
  if ($audpsi > 0) {  # 2016feb05: if there is an audpsi
    $ear[$t] = "$pho,$act,0";  # 2016feb05: at first store no audpsi
    my @aud=split(',',$ear[($t)]);  # 2016feb05: look at current row
    if ($aud[0] !~ /[A-Z]/) {  # 2016feb05: if aud0 is not a letter
      my @prv=split(',',$ear[($t-1)]);  # 2016feb05: assuming post-word blank
      $ear[$t-1] = "$prv[0],$prv[1],$audpsi"; # 2016feb05: retroactive audpsi
    }  # 2016feb06: end of waiting until just after a word to identify it. 
  }  # 2016feb05: end of test for an audpsi from AudRecog()
  if ($pho !~ /[A-Z]/) {  # 2016feb03
    $ear[$t] = "$pho,0,0";   # 2016jan28: initialize @ear panel-flags.
  }  # 2016jan23: Establish end of word.
}  # 2016feb22: AudMem() returns to AudInput().


sub RuAudMem() {  # 2016feb21: necessary for Cyrillic and not Roman
  print "\nRuAudMem-START: t= $t len= $len hlc= $hlc pho = $pho \n"; # 2016apr05
# if ($pho =~ /[A-Z]/) {  # 2016jan30: Only try to recognize pho(nemes)
  if ($pho ne " ") {  # 2016feb19: for this Russian experimental AI
    if ($hlc eq "ru") {  # 2016yfeb20: human-language-code
      RuAudRecog();  # 2016feb20: Recognize old words $char by $char. 
      if ($audpsi == 0) {  # 2016mar04: from JavaScript Russian Dushka AI
        if ($prc > 0) { $audpsi = $prc }  # 2016mar04: prov. recog; 2016mar04
      }  # 2016mar04: end of test for not yet an audpsi
    }  # 2016feb20: end of test for human-language-code "ru"
  }  # 2016jan30: End of test for a letter of the alphabet. 
  if ($audpsi == 0) {  # 2016feb05: if no news from AudRecog() early in the word
    if ($prc > 0) { $audpsi = $prc }  # 2016mar04: for word-stems   
    $ear[$t] = "$pho,$act,0";  # 2016feb05: no ultimate-tag
    if ($len > 4) {  # 2016mar05: if long enough to include a verb-stem
      $ear[$t] = "$pho,$act,$audpsi";  # 2016mar05: audpsi for verb-stems
    }  # 2016mar05: end of test for length long enough to be a verb
  }  # 2016feb05: end of test for storing pre-audpsi pho(nemes)
 if ($hlc eq "ru") {  # 2016feb20: special handling for Russian
  if ($len > 0) {  # 2016feb20: assign tags to words, not empty rows
    my @aud=split(',',$ear[($t)]);  # 2016feb20: look at current row
    if ($aud[0] eq " " || $aud[0] eq "\n") {  # 2016feb24: if aud0 is not a letter
      if ($audpsi == 0) {  # 2016feb20: if word unrecognized, nxt new concept
        my @prv=split(',',$ear[($t-1)]);  # 2016feb20: assuming post-word blank
        $ear[$t-1] = "$prv[0],$prv[1],$nxt"; # 2016feb20: retroactive audpsi
        if ($len > 4) {  # 2016mar05: long enough to include a verb-stem
          @prv=split(',',$ear[($t-2)]);  # 2016mar05: penultimate character
          $ear[$t-2] = "$prv[0],$prv[1],$nxt"; # 2016mar05: retroactive audpsi
          @prv=split(',',$ear[($t-3)]);  # 2016mar05: pre-penultimate char
          $ear[$t-3] = "$prv[0],$prv[1],$nxt"; # 2016mar05: retroactive audpsi
          @prv=split(',',$ear[($t-4)]);  # 2016apr04: back one more character
          $ear[$t-4] = "$prv[0],$prv[1],$nxt"; # 2016apr04: retroactive audpsi
        }  # 2016mar05: end of length-test adapted from Dushka Russian AI
      }  # 2016feb20: end of test to declare new concept for lack of old.
    }  # 2016feb20: end of check to see if space is reached after a word.
  }  # 2016feb20: end of test for a positive word-length
 }  # 2016feb20: end of special handling for Russian
  if ($audpsi > 0) {  # 2016feb05: if there is an audpsi
   if ($hlc eq "ru") {  # 2016feb20: special handling for Russian "ru"
    $ear[$t] = "$pho,$act,$audpsi";  # 2016feb20: TEST
    my @aud=split(',',$ear[($t)]);  # 2016feb05: look at current row
#   if ($aud[0] !~ /[A-Z]/) {  # 2016feb05: if aud0 is not a letter
    if ($aud[0] eq " ") {  # 2016feb20: if post-character blank-space
#     print " RuAudM: storing retroactive audpsi $audpsi \n"; # 2016feb22
      my @prv=split(',',$ear[($t-1)]);  # 2016feb05: assuming post-word blank
      $ear[$t-1] = "$prv[0],$prv[1],$audpsi"; # 2016feb05: retroactive audpsi
    }  # 2016feb06: end of waiting until just after a word to identify it. 
   }  # 2016feb20: end of test for Russian human-language-code $hlc
  }  # 2016feb05: end of test for an audpsi from AudRecog()
  if ($pho eq " ") {  # 2016feb20
    $ear[$t] = "$pho,0,0";   # 2016jan28: initialize @ear panel-flags.
    my @aud=split(',',$ear[$t]);  # 2016feb19: Examine the @ear array.
  }  # 2016jan23: Establish end of word.
}  # 2016feb22: RuAudMem() returns to AudInput()


sub AudInput() {  # 2016feb21: reinstated from ghost075 as TEST; modified
  $spt = $t;      # 2016jan28: as in FileInput() module.
  $bias = 5;      # 2016fev11: Expect a noun until overruled. 
  $krt = $t;      # 2016feb08: for Tutorial display of @ear array 
  $tsn = $t;      # 2016mar13: current input is time-of-seqneed $tsn
  $_ = " ";       # 2016FEB03: PERL by Example (2015), p. 301 
  if ($pov == 2) {  # 2016apr09: use STDIN only for external input...
    print "\nEnter English or Russian words as Subject-Verb-Object: \n \n"; #2016apr21
    $msg = <STDIN>;   # 2015may01: PERL by Example (2015), p. 50 
    if ($hlc eq "en" || $hlc eq "de") {  # 2016feb21: English or German
      print "Changing to uppercase \n";  # 2016apr05
      print "You entered: \n";  # 2016mar04
      $msg = uc $msg;  # 2016jan29: from Perl Black Book, p. 341.
    }  # 2016feb21: end of test for non-Cyrillic English or German
    print "\nHuman: $msg \n";  # 2016jan29: newline is now _outside_ $msg. 
  }  # 2016apr09: End of test to decide between STDIN and re-entry. 
  my $reversed = reverse $msg;  # 2016jan29: PbyEx p. 125

# if ($reversed =~ /[Q]/) {  # 2016jun21: enlarging quit-sequence
#   my $fh = new IO::File; # 2016jun21: Perl_Black_Book p. 561
#   print "Opening diagnostic minddata.txt file...\n";  # 2016jun21
#   $fh->open(">minddata.txt") or die "Can't open: $!\n"; #2016jun21
#   $tai = $vault;  # 2016jun21: skip the MindBoot() sequence.
#   $fh->printf ("Log-file of $vrsn AI born on $birth\n");  # 2016jun26
#   $fh->printf ("time psi act hlc pos jux pre iob tkb ");  # 2016jun26
#   $fh->printf ("seq num mfn dba rv  pho act audpsi \n");  # 2016jun26
#   do {  # 2016jun21: make a loop
#     print "t=$tai. psi=$psy[$tai], ";  # 2016jun21: show @psy concept array 
#     print " aud= $ear[$tai], \n";     # 2016jun21: show @ear auditory array
#     $fh->printf ("t=$tai. psi=$psy[$tai], aud= $ear[$tai], \n");  # 2016jun21: PBB p. 535
#     $tai++;  # 2016jun21: increment $tai up until current time $t.
#   } while ($tai < $t);  # 2016jun21: show @psi and @ear array at recent time-points  
#   print "Closing minddata.txt file...\n";  # 2016jun21
#   $fh->close;  # 2016jun21: Perl_Black_Book p. 561
#   die "TERMINATE: Q means quit. \n";  # 2016jun21
# }  # 2016jun21: end of quit-sequence commented out prior to Web release.

# if ($reversed =~ /[Q]/) {  # 2016jun21: enlarging quit-sequence
#   my $fh = new IO::File; # 2016jun21: Perl_Black_Book p. 561
#   print "Opening diagnostic minddata.txt file...\n";  # 2016jun21
#  $fh->open(">minddata.txt") or die "Can't open: $!\n"; #2016jun21
#  $tai = $midway; # 2016jun28: include the MindBoot() sequence.
#  $fh->printf ("Log-file of $vrsn AI born on $birth\n");  # 2016jun26
#  $fh->printf ("time psi act hlc pos jux pre iob tkb ");  # 2016jun26
#  $fh->printf ("seq num mfn dba rv  pho act audpsi \n");  # 2016jun26
#  do {  # 2016jun21: make a loop
#    print "t=$tai. psi=$psy[$tai], ";  # 2016jun21: show @psy concept array 
#    print " aud= $ear[$tai], \n";     # 2016jun21: show @ear auditory array
#    $fh->printf ("t=$tai. psi=$psy[$tai], aud= $ear[$tai], \n");  # 2016jun21: PBB p. 535
#    $tai++;  # 2016jun21: increment $tai up until current time $t.
#  } while ($tai < $t);  # 2016jun21: show @psi and @ear array at recent time-points  
#  print "Closing minddata.txt file...\n";  # 2016jun21
#  $fh->close;  # 2016jun21: Perl_Black_Book p. 561
#  die "TERMINATE: Q means quit. \n";  # 2016jun21
# }  # 2016jun21: end of quit-sequence commented out prior to Web release.

  if ($reversed =~ /[Q]/) { die "TERMINATE: Q for quit. \n"; } # 2016apr29
  if ($fyi == 2) { print "Tutorial shows workings of the AI Mind. \n"; }
  do {  # 2016feb02: outer loop receives input of an entire sentence.
    do {   # 2016feb02: inner loop treats each word character by character.
      $pho = chop($reversed);  # 2016jan29 returns chopped character as $pho.
      if ($pho eq "\n") { $eot = 1 }  # 2016feb01: for escape from outer loop.
      if ($pho eq "\n" && $msg eq "") { $trigger++ } # 2016apr29
      if ($pho eq "\n") {  # 2016jun19: TEST
        print "AudInput: psi= $psi oldpsi= $oldpsi actpsi= $actpsi \n";  # 2016jun19: TEST
      } # 2016jun19
      # 2016feb21: Following 33 tests convert to uppercase and $hlc to "ru":
      if ($pho eq "\xA0"||$pho eq "\x80") {$pho="\x80"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA1"||$pho eq "\x81") {$pho="\x81"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA2"||$pho eq "\x82") {$pho="\x82"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA3"||$pho eq "\x83") {$pho="\x83"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA4"||$pho eq "\x84") {$pho="\x84"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA5"||$pho eq "\x85") {$pho="\x85"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xF1"||$pho eq "\xF0") {$pho="\xF0"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA6"||$pho eq "\x86") {$pho="\x86"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA7"||$pho eq "\x87") {$pho="\x87"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA8"||$pho eq "\x88") {$pho="\x88"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xA9"||$pho eq "\x89") {$pho="\x89"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAA"||$pho eq "\x8A") {$pho="\x8A"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAB"||$pho eq "\x8B") {$pho="\x8B"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAC"||$pho eq "\x8C") {$pho="\x8C"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAD"||$pho eq "\x8D") {$pho="\x8D"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAE"||$pho eq "\x8E") {$pho="\x8E"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xAF"||$pho eq "\x8F") {$pho="\x8F"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE0"||$pho eq "\x90") {$pho="\x90"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE1"||$pho eq "\x91") {$pho="\x91"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE2"||$pho eq "\x92") {$pho="\x92"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE3"||$pho eq "\x93") {$pho="\x93"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE4"||$pho eq "\x94") {$pho="\x94"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE5"||$pho eq "\x95") {$pho="\x95"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE6"||$pho eq "\x96") {$pho="\x96"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE7"||$pho eq "\x97") {$pho="\x97"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE8"||$pho eq "\x98") {$pho="\x98"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xE9"||$pho eq "\x99") {$pho="\x99"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xEA"||$pho eq "\x9A") {$pho="\x9A"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xEB"||$pho eq "\x9B") {$pho="\x9B"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xEC"||$pho eq "\x9C") {$pho="\x9C"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xED"||$pho eq "\x9D") {$pho="\x9D"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xEE"||$pho eq "\x9E") {$pho="\x9E"; $hlc="ru"} # 2016feb20
      if ($pho eq "\xEF"||$pho eq "\x9F") {$pho="\x9F"; $hlc="ru"} # 2016feb20
      $t++;  # 2016jan16: Increment time "t" here instead of AudMem()
      if ($t > $cns) { die "Safety stop: out of memory \n"; }  # 2016apr09
      if ($hlc eq "en" || $hlc eq "de") {  # 2016feb21: for English or German
        if ( $pho =~ /[A-Z]/) {   # 2016jan29: pattern binding operator
          if ($audnew == 0) {$audnew = $t};  # 2016feb09 Set only once. 
          if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
            print "  pho $pho is an alphabetic letter \n";  # 2016jan29
          }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
          $len++;  # 2016jan31: increment length as per MindForth
          print "\nAudInput: increasing len(gth) to $len \n";  # 2016apr30
          if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
            print " AudInput: increasing len(gth) to $len \n";  # 2016jan31
          }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
          if ($len == 1) { $rv = $t }  # 2016jan30: set recall-vector.
          AudMem();    # 2016jan29: Calling memory-insertion subroutine
        } else {  # 2016jan30:
          $pho = " ";  # 2016jan30: Send blank space...
          AudMem();    # 2016jan30: ...as a message that word has ended
        }  # 2016feb02: end of else-clause for sending a blank space
      }  # 2016feb21: end of test for non-Cyrillic English or German
      if ($hlc eq "ru") {  # 2016feb21: for Russian input
        if ($len == 0) { $rv = $t }  # 2016feb29: set recall-vector.
        if ($pho eq "\x80") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x81") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x82") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x83") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x84") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x85") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\xF0") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x86") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x87") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x88") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x89") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8A") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8B") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8C") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8D") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8E") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x8F") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x90") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x91") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x92") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x93") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x94") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x95") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x96") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x97") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x98") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x99") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9A") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9B") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9C") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9D") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9E") { $len++; RuAudMem() } #2016feb22: brute force
        if ($pho eq "\x9F") { $len++; RuAudMem() } #2016feb22: brute force
        if ($audnew == 0) {$audnew = $t};  # 2016feb22 Set only once. 
      }  # 2016feb21: end of test to select proper memory storage module
      if ($pho eq "\n") { $pho = " " }  # 2016feb24: for escape from loop.
      if ($hlc eq "ru") {  # 2016feb24
        if ($pho eq " ") {  # 2016feb24
          RuAudMem();    # 2016feb24: ...as a message that word has ended
        }  # 2016feb24:
      }  # 2016feb24: End of test of $hlc
      $pos = 0;      # 2016mar12: Reset to prevent InStantiate() carry-over.
      $pre = 0;      # 2016mar12: Reset to prevent InStantiate() carry-over.
      $psi = 0;      # 2016mar12: Reset to prevent InStantiate() carry-over.
    } until $pho eq " ";  # 2016jan30: Store whole word until $pho is empty.
    if ($pho eq "\n") { $eot = 1 }  # 2016feb01: for escape from outer loop.
    AudDamp();  # 2016feb03:
    $monopsi = 0;  # 2016feb06: zero out to prevent carry-over
    if ($audpsi > 0) {       # 2016jan30: would be from AudRecog()
      $oldpsi = $audpsi; # 2016jan30: JSAI: for conformance with MindForth
      $audpsi = 0;  # 2016feb04: zero out to prevent carry-over
      $prc = 0;  # 2016feb06: as is done in the JavaScript AiMind.html
      if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
        print " AudInput() calls OldConcept() for oldpsi $oldpsi \n"; # 2016feb04
      }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
      OldConcept() }         # 2016jan30: code-bloc from FileInput()
    else {              # 2016jan30: Expanding for diagnostic message.
      if ($len > 0) {  # 2016jan31: if input word one char or longer
        if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
          print "AudInput-else calls NewConcept nxt $nxt len= $len \n"; #2016jan30
        }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
        NewConcept();  # 2016jan30: if not old concept, then new concept
      }  # 2016jan31: end of test for positive length before NewConcept().
      $len = 0;    # 2016jan30: Reset so next word must accumulate length.
    }  # 2016feb13: as in MindForth AudInput module.
    $audpsi = 0;  # 2016jan30: reset for safety
    $len = 0;  # 2016jan31: when pho=0 length reverts to zero. 
    $audrun = 1;  # 2016feb06: for multiple calls to AudMem().
  } until $eot == 1;  # 2016feb01: a condition set within inner loop. 
  $eot = 0;  # 2016feb02: Reset to zero for the sake of whole sentences. 
  $audpsi = 0;  # 2016jan30: reset for safety
  $phodex = 1;  # 2016apr03: reset for AudBuffer();
  $psi = 0;  # 2016mar12: Reset to prevent carry-over.
  $tio = 0;  # 2016mar23: Reset because zero plays role as a trigger. 
  $verbcon = 0;  # 2016mar23: reset for safety.
}  # http://mind.sourceforge.net/audition.html 


sub FileInput() {  #2016jan10
  $pov = 3;        # 2016mar27: no re-interpretation of personal pronouns. 
  $spt = $t;       # 2016jan23: from MindForth AudInput
  my $_ = " ";     # 2016jan10: PERL by Example (2015), p. 301 
  print "PerlAI will try to open and read input.txt file \n"; # 2016jan28
# open (my $fh, "<", "input.txt") or die "Can't open: $!\n"; #2016jan14
  open (my $fh, "<", "input.txt") or AudInput();  # 2016jan28
  # print "Switching to human input because file not found... \n"; 
  # AudInput() } # 2016jan28: Human user must communicate by keyboard. 
  # 2016jan28: end of measures to take if input.txt file not found.
  while (defined($char=getc $fh)) {   # 2016jan12 P_B_Book p. 569
    $char = uc $char;    # 2016jan26: from Perl Black Book, p. 341.
    AudBuffer();  #2016jan15: to manipulate inflections in OutBuffer()
    if ($char eq " ") {  # 2016jan18: i.e., at the end of a word
      $onset = $audnew;  # 2016jan18 set only at start of each word
      print "\nFileInput for audnew $audnew calling NewConcept \n"; # 2016jan18
      NewConcept();   # 2016jan17 test
      print "\n";   #2016jan18: new-line for diagnostic clarity
    };   # 2016jan13 Stop at end of word. 
    $rv = $t;    # 2016jan16: Capture auditory onset as recall-vector.
    if ($char ne " ") {  # 2016jan14: Avoid storing blank characters. 
      if ($audnew == 0) {$audnew = $t};  # 2016jan17 Set only once. 
      print "F-Input calls AudMem for char $char audrun $audrun \n"; # 2016jan26
    }  # 2016jan14: End of test for a non-blank character. 
    $t++;  # 2016jan16: Increment time "t" here instead of AudMem()
    if ( $char =~ /[A-Z]/) {   # 2016jan27: pattern binding operator
      if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
        print "  char $char is an alphabetic letter \n";  # 2016jan27:
      }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
      $len++;  # 2016jan27: increment length as per MindForth
      if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
        print "  FileInput: increasing len(gth) to $len \n";  # 2016jan31
      }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
      AudMem();     # 2016jan27: Calling memory-insertion subroutine
    } else {  # 2016jan27:
      if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
        print "  char $char is not a letter \n" # 2016jan27:
      }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
    }  # 2016jan27: Perl by Example, p. 222 (binding operator)
  }  # 2016jan12 P_B_Book p. 569
  $audnew = 0;  # 2016jan24: Reset $audnew for sake of next word.
  close ($fh);  #2016jan10: P_by_Ex p. 301
  if ($audpsi > 0) {       # 2016jan17: would be from AudRecog()
    if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
      print "  FileInput() calls OldConcept() \n";  # 2016jan28
    }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
    OldConcept() }         # 2016jan17:
  else {              # 2016jan18: Expanding for diagnostic message.
    if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
      print "FileInput-else calling NewConcept";  # 2016jan18
    }  # 2016feb07: end of test for Diagnostic or Tutorial mode.
    NewConcept()   
  }  # 2016feb13: as in MindForth AudInput module.
  $audrun = 1;  # 2016jan26: for multiple calls to AudMem().
}  # http://mind.sourceforge.net/audition.html 


sub GusRecog() {  # 2016may01: stub for gustatory recognition of taste
  # http://mind.sourceforge.net/gusrecog.html 
}  # 2016may01: GusRecog() will return to the Sensorium() module.


sub OlfRecog() {  # 2016may01: stub for olfactory recognition of smells
  # http://mind.sourceforge.net/olfrecog.html 
}  # 2016may01: OlfRecog() will return to the Sensorium() module.


sub TacRecog() {  # 2016may01: stub for tactile recognition of touch
  # http://mind.sourceforge.net/tacrecog.html 
}  # 2016may01: TacRecog() will return to the Sensorium() module.


# The visual recognition module in the Perlmind for robots
# when fully implemented will serve the purpose of letting
# AI Minds dynamically describe what they see in real time
# instead of fetching knowledge from the AI knowledge base.
sub VisRecog() {  # http://www.openhub.net/p/opencv-perl 
  # 2016jan22: NOTHING = default answer for "What do you see?"
}  # http://code.google.com/p/mindforth/wiki/VisRecog


sub Sensorium() {  # 2016mar26: sensory input module. 
  $pov = 2;        # 2016apr08: Users communicate with AI in "dual" mode.
  print "\nGhost: $output \n";  # 2016apr21: array-display; output; input...
  if ($chaincon == 0) {  # 2016apr15: if no chain of thought in progress...
    AudInput();      # 2015apr25: Calling the sense of audition. 
  }  # 2016apr15: end of test for an internal chain of thought.
# FileInput();     # 2016jan10: Inputting from file, not keyboard.
# GusRecog();      # http://mind.sourceforge.net/gusrecog.html
# OlfRecog();      # http://mind.sourceforge.net/olfrecog.html
# TacRecog();      # http://mind.sourceforge.net/tacrecog.html
# VisRecog();      # 2015apr26: Opportunity to add vision.
} # http://mind.sourceforge.net/sesorium.html


sub MindBoot() {  # 2016jan23 Bootstrap prior to learning new words. 
  $t = 0;  # 2015apr26: bootstrap stretches over time "$t". 
  print "MindBoot is loading the knowledge base... \n";  #2016jan23
  # ERROR -- first word so any bug will announce itself 
  $t=0; $ear[$t] = "E,0,0";    # 2016mar12
  $t=1; $ear[$t] = "R,0,0";    # 2016mar12
  $t=2; $ear[$t] = "R,0,0";    # 2016mar12
  $t=3; $ear[$t] = "O,0,0";    # 2016mar12
  $t=4; $ear[$t] = "R,0,586";  # 2016mar12
  $psi=586; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=0; $rv=0; KbLoad();  # 2016mar12

  $t = 6; $ear[$t] = " ,0,0";  # 2016jan28: Initialize row properly.
  # A -- En(glish) Article for EnArticle module 
  $t = 7; $ear[$t] = "A,0,101";  # 2016jan28
  $psi=101; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=7; KbLoad();  # 2016feb07

  # ALL -- for machine reasoning logic 
  $t =  9; $ear[$t] = "A,0,0";  # 2016jan28
  $t = 10; $ear[$t] = "L,0,0";  # 2016jan28
  $t = 11; $ear[$t] = "L,0,123";  # 2016jan28
  $psi=123; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=9; KbLoad();  # 2016feb07

  # AN -- to be selected instead of "A" before a vowel 
  $t = 13; $ear[$t] = "A,0,0";    # 2016feb07
  $t = 14; $ear[$t] = "N,0,102";  # 2016feb07
  $psi=102; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=13; KbLoad();  # 2016feb07

  # AND -- for machine reasoning logic 
  $t=16; $ear[$t] = "A,0,0";    # 2016feb07
  $t=17; $ear[$t] = "N,0,0";    # 2016feb07
  $t=18; $ear[$t] = "D,0,302";  # 2016feb07
  $psi=302; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=16; KbLoad();  # 2016feb07

  # ANY -- for machine reasoning logic 
  $t=20; $ear[$t] = "A,0,0";    # 2016feb07
  $t=21; $ear[$t] = "N,0,0";    # 2016feb07
  $t=22; $ear[$t] = "Y,0,111";    # 2016feb07
  $psi=111; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=20; KbLoad();  # 2016feb07

  # ANYTHING -- a default direct object for AskUser()
  $t=24; $ear[$t] = "A,0,0";    # 2016feb07
  $t=25; $ear[$t] = "N,0,0";    # 2016feb07
  $t=26; $ear[$t] = "Y,0,0";    # 2016feb07
  $t=27; $ear[$t] = "T,0,0";    # 2016feb07
  $t=28; $ear[$t] = "H,0,0";    # 2016feb07
  $t=29; $ear[$t] = "I,0,0";    # 2016feb07
  $t=30; $ear[$t] = "N,0,0";    # 2016feb07
  $t=31; $ear[$t] = "G,0,711";  # 2016feb07
  $psi=711; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=24; KbLoad();  # 2016feb07

  # BAD -- adjective for EnAdjective module 
  $t=33; $ear[$t] = "B,0,0";    # 2016feb07
  $t=34; $ear[$t] = "A,0,0";    # 2016feb07
  $t=35; $ear[$t] = "D,0,186";  # 2016feb07
  $psi=186; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=33; KbLoad();  # 2016feb07

  # BE -- infinitive impersonal form of 800=BE; 2016feb07
  $t=37; $ear[$t] = "B,0,0";    # 2016feb07
  $t=38; $ear[$t] = "E,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=37; KbLoad();  # 2016feb07

  # AM -- 1st person singular I-form of 800=BE; 2016feb07
  $t=40; $ear[$t] = "A,0,0";    # 2016feb07
  $t=41; $ear[$t] = "M,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=40; KbLoad();  # 2016feb07

  # ARE -- 2nd person singular YOU-form of 800=BE; 2016feb07
  $t=43; $ear[$t] = "A,0,0";    # 2016feb07
  $t=44; $ear[$t] = "R,0,0";    # 2016feb07
  $t=45; $ear[$t] = "E,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=43; KbLoad();  # 2016feb07

  # IS -- 3rd person singular HE-SHE-IT-form of 800=BE; 2016feb07
  $t=47; $ear[$t] = "I,0,0";    # 2016feb07
  $t=48; $ear[$t] = "S,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=47; KbLoad();  # 2016feb07

  # ARE -- 1st person plural WE-form of 800=BE; 2016feb07
  $t=50; $ear[$t] = "A,0,0";    # 2016feb07
  $t=51; $ear[$t] = "R,0,0";    # 2016feb07
  $t=52; $ear[$t] = "E,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=50; KbLoad();  # 2016feb07

  # ARE -- 2nd person plural YOU-form of 800=BE; 2016feb07
  $t=54; $ear[$t] = "A,0,0";    # 2016feb07
  $t=55; $ear[$t] = "R,0,0";    # 2016feb07
  $t=56; $ear[$t] = "E,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=54; KbLoad();  # 2016feb07

  # ARE -- 3rd person plural THEY-form of 800=BE; 2016feb07
  $t=58; $ear[$t] = "A,0,0";    # 2016feb07
  $t=59; $ear[$t] = "R,0,0";    # 2016feb07
  $t=60; $ear[$t] = "E,0,800";  # 2016feb07
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=58; KbLoad();  # 2016feb07

  # BECAUSE -- conjunction for machine reasoning logic 
  $t=62; $ear[$t] = "B,0,0";  # 2016feb07
  $t=63; $ear[$t] = "E,0,0";  # 2016feb07
  $t=64; $ear[$t] = "C,0,0";  # 2016feb07
  $t=65; $ear[$t] = "A,0,0";  # 2016feb07
  $t=66; $ear[$t] = "U,0,0";  # 2016feb07
  $t=67; $ear[$t] = "S,0,0";  # 2016feb07
  $t=68; $ear[$t] = "E,0,344";  # 2016feb07
  $psi=344; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=62; KbLoad();  # 2016feb07

  # BECOME -- essential intransitive verb 
  $t=70; $ear[$t] = "B,0,0";  # 2016feb07
  $t=71; $ear[$t] = "E,0,0";  # 2016feb07
  $t=72; $ear[$t] = "C,0,0";  # 2016feb07
  $t=73; $ear[$t] = "O,0,0";  # 2016feb07
  $t=74; $ear[$t] = "M,0,0";  # 2016feb07
  $t=75; $ear[$t] = "E,0,808";  # 2016feb07
  $psi=808; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=70; KbLoad();  # 2016feb07

  # BOY -- always masculine noun for use with gender flags 
  $t = 77; $ear[$t] = "B,0,0";    # 2016feb07
  $t = 78; $ear[$t] = "O,0,0";    # 2016feb07
  $t = 79; $ear[$t] = "Y,0,589";  # 2016feb07
  $psi=589; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=0; $rv=77; KbLoad();  # 2016feb08
  $t = 80;                 # 2016jan31: Leave a gap of one space in memory. 

  # BUT -- conjunction for ConJoin module 
  $t=81; $ear[$t] = "B,0,0";    # 2016feb08
  $t=82; $ear[$t] = "U,0,0";    # 2016feb08
  $t=83; $ear[$t] = "T,0,305";  # 2016feb08
  $psi=305; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=81; KbLoad();  # 2016feb08

  # CHESS -- important singular AI noun ending in "S"
  $t=85; $ear[$t] = "C,0,0";    # 2016feb08
  $t=86; $ear[$t] = "H,0,0";    # 2016feb08
  $t=87; $ear[$t] = "E,0,0";    # 2016feb08
  $t=88; $ear[$t] = "S,0,0";    # 2016feb08
  $t=89; $ear[$t] = "S,0,564";  # 2016feb08
  $psi=564; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=85; KbLoad();  # 2016feb08

  # CHILD -- example of irregular noun for a polyglot AI Mind
  $t=91; $ear[$t] = "C,0,0";    # 2016feb08
  $t=92; $ear[$t] = "H,0,0";    # 2016feb08
  $t=93; $ear[$t] = "I,0,0";    # 2016feb08
  $t=94; $ear[$t] = "L,0,0";    # 2016feb08
  $t=95; $ear[$t] = "D,0,525";  # 2016feb08
  $psi=525; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=0; $rv=91; KbLoad();  # 2016feb08

  # CHILDREN -- irregular plural for retrieval by parameters
  $t=97; $ear[$t] = "C,0,0";     # 2016feb08
  $t=98; $ear[$t] = "H,0,0";     # 2016feb08
  $t=99; $ear[$t] = "I,0,0";     # 2016feb08
  $t=100; $ear[$t] = "L,0,0";    # 2016feb08
  $t=101; $ear[$t] = "D,0,0";    # 2016feb08
  $t=102; $ear[$t] = "R,0,0";    # 2016feb08
  $t=103; $ear[$t] = "E,0,0";    # 2016feb08
  $t=104; $ear[$t] = "N,0,526";  # 2016feb08
  $psi=526; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=0; $rv=97; KbLoad();  # 2016feb08

  # DATA -- always plural noun in correction of modern usage 
  $t=106; $ear[$t] = "D,0,0";    # 2016feb08
  $t=107; $ear[$t] = "A,0,0";    # 2016feb08
  $t=108; $ear[$t] = "T,0,0";    # 2016feb08
  $t=109; $ear[$t] = "A,0,599";    # 2016feb08
  $psi=599; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=3; $dba=0; $rv=106; KbLoad();  # 2016feb08

  # DO -- infinitive form of verb essential for EnAuxVerb module 
  $t=111; $ear[$t] = "D,0,0";    # 2016feb08
  $t=112; $ear[$t] = "O,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=111; KbLoad();  # 2016feb08

  # DO -- 1st person singular I-form of auxiliary verb
  $t=114; $ear[$t] = "D,0,0";    # 2016feb08
  $t=115; $ear[$t] = "O,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=114; KbLoad();  # 2016feb08

  # DO -- 2nd person singular YOU-form of auxiliary verb
  $t=117; $ear[$t] = "D,0,0";    # 2016feb08
  $t=118; $ear[$t] = "O,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=117; KbLoad();  # 2016feb08

  # DOES -- 3rd person singular HE-SHE-IT-form of auxiliary verb
  $t=120; $ear[$t] = "D,0,0";    # 2016feb08
  $t=121; $ear[$t] = "O,0,0";    # 2016feb08
  $t=122; $ear[$t] = "E,0,0";    # 2016feb08
  $t=123; $ear[$t] = "S,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=120; KbLoad();  # 2016feb08

  # DO -- 1st person plural WE-form of auxiliary verb
  $t=125; $ear[$t] = "D,0,0";    # 2016feb08
  $t=126; $ear[$t] = "O,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=125; KbLoad();  # 2016feb08

  # DO -- 2nd person plural YOU-form of auxiliary verb
  $t=128; $ear[$t] = "D,0,0";    # 2016feb08
  $t=129; $ear[$t] = "O,0,830";  # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=128; KbLoad();  # 2016feb08

  # DO -- 3rd person plural THEY-form of auxiliary verb
  $t=131; $ear[$t] = "D,0,0";    # 2016feb08
  $t=132; $ear[$t] = "O,0,0";    # 2016feb08
  $psi=830; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=131; KbLoad();  # 2016feb08

  # DOING -- high word-frequency verb participle  
  $t=134; $ear[$t] = "D,0,0";    # 2016feb08
  $t=135; $ear[$t] = "O,0,0";    # 2016feb08
  $t=136; $ear[$t] = "I,0,0";    # 2016feb08
  $t=137; $ear[$t] = "N,0,0";    # 2016feb08
  $t=138; $ear[$t] = "G,0,183";  # 2016feb08
  $psi=183; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=134; KbLoad();  # 2016feb08

  # ELSE -- adverb for machine reasoning logic; 2016feb08
$t=140; $ear[$t] = "E,0,0";    # 2016feb08
$t=141; $ear[$t] = "L,0,0";    # 2016feb08
$t=142; $ear[$t] = "S,0,0";    # 2016feb08
$t=143; $ear[$t] = "E,0,266";  # 2016feb08
  $psi=266; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=140; KbLoad();  # 2016feb08

  # FOR -- preposition for EnPrep module 
$t=145; $ear[$t] = "F,0,0";    # 2016feb08
$t=146; $ear[$t] = "O,0,0";    # 2016feb08
$t=147; $ear[$t] = "R,0,640";  # 2016feb08
  $psi=640; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=145; KbLoad();  # 2016feb08

  # FRIEND -- for coding assignment of ad-hoc gender tags
$t=149; $ear[$t] = "F,0,0";    # 2016feb08
$t=150; $ear[$t] = "R,0,0";    # 2016feb08
$t=151; $ear[$t] = "I,0,0";    # 2016feb08
$t=152; $ear[$t] = "E,0,0";    # 2016feb08
$t=153; $ear[$t] = "N,0,0";    # 2016feb08
$t=154; $ear[$t] = "D,0,517";  # 2016feb08
  $psi=517; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=149; KbLoad();  # 2016feb08

  # GIRL -- always feminine noun for use with gender flags )
$t=156; $ear[$t] = "G,0,0";    # 2016feb08
$t=157; $ear[$t] = "I,0,0";    # 2016feb08
$t=158; $ear[$t] = "R,0,0";    # 2016feb08
$t=159; $ear[$t] = "L,0,510";  # 2016feb08
  $psi=510; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=0; $rv=156; KbLoad();  # 2016feb08

  # GOD -- masculine noun important for philosophy of AI
$t=161; $ear[$t] = "G,0,0";    # 2016feb08
$t=162; $ear[$t] = "O,0,0";    # 2016feb08
$t=163; $ear[$t] = "D,0,533";  # 2016feb08
  $psi=533; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=0; $rv=161; KbLoad();  # 2016feb08

  # GOOD -- adjective for EnAdjective module 
$t=165; $ear[$t] = "G,0,0";    # 2016feb08
$t=166; $ear[$t] = "O,0,0";    # 2016feb08
$t=167; $ear[$t] = "O,0,0";    # 2016feb08
$t=168; $ear[$t] = "D,0,140";  # 2016feb08
  $psi=140; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=165; KbLoad();  # 2016feb08

  # HAVE -- irregular high word-frequency verb  
$t=170; $ear[$t] = "H,0,0";    # 2016feb08
$t=171; $ear[$t] = "A,0,0";    # 2016feb08
$t=172; $ear[$t] = "V,0,0";    # 2016feb08
$t=173; $ear[$t] = "E,0,810";  # 2016feb08
  $psi=810; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=170; KbLoad();  # 2016feb08

  # HAS -- high word-frequency irregular verb form 
$t=175; $ear[$t] = "H,0,0";    # 2016feb08
$t=176; $ear[$t] = "A,0,0";    # 2016feb08
$t=177; $ear[$t] = "S,0,810";  # 2016feb08
  $psi=810; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=175; KbLoad();  # 2016feb08

  # HE -- nominative form of high word-frequency pronoun  
$t=179; $ear[$t] = "H,0,0";    # 2016feb08
$t=180; $ear[$t] = "E,0,713";  # 2016feb08
  $psi=713; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=179; KbLoad();  # 2016feb08

  # HIS -- genitive form of personal pronoun  
$t=182; $ear[$t] = "H,0,0";    # 2016feb08
$t=183; $ear[$t] = "I,0,0";    # 2016feb08
$t=184; $ear[$t] = "S,0,113";  # 2016feb08
  $psi=113; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=1; $dba=2; $rv=182; KbLoad();  # 2016feb08

  # HIM -- dative indirect-object form of personal pronoun
$t=186; $ear[$t] = "H,0,0";    # 2016feb08
$t=187; $ear[$t] = "I,0,0";    # 2016feb08
$t=188; $ear[$t] = "M,0,713";  # 2016feb08
  $psi=713; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=3; $rv=186; KbLoad();  # 2016feb08

  # HIM -- accusative direct-object form of personal pronoun
$t=190; $ear[$t] = "H,0,0";    # 2016feb08
$t=191; $ear[$t] = "I,0,0";    # 2016feb08
$t=192; $ear[$t] = "M,0,713";  # 2016feb08
  $psi=713; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=4; $rv=190; KbLoad();  # 2016feb08

  # HELLO -- interjection for human-computer interaction 
$t=194; $ear[$t] = "H,0,0";    # 2016feb08
$t=195; $ear[$t] = "E,0,0";    # 2016feb08
$t=196; $ear[$t] = "L,0,0";    # 2016feb08
$t=197; $ear[$t] = "L,0,0";    # 2016feb08
$t=198; $ear[$t] = "O,0,450";  # 2016feb08
  $psi=450; $hlc="en"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=194; KbLoad();  # 2016feb08

  # HERE -- adverb for discussion of physical location
$t=200; $ear[$t] = "H,0,0";    # 2016feb08
$t=201; $ear[$t] = "E,0,0";    # 2016feb08
$t=202; $ear[$t] = "R,0,0";    # 2016feb08
$t=203; $ear[$t] = "E,0,201";  # 2016feb08
  $psi=201; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=200; KbLoad();  # 2016feb08

  # HOW -- adverb for EnAdverb module 
$t=205; $ear[$t] = "H,0,0";    # 2016feb08
$t=206; $ear[$t] = "O,0,0";    # 2016feb08
$t=207; $ear[$t] = "W,0,209";  # 2016feb08
  $psi=209; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=205; KbLoad();  # 2016feb08

  # I -- nominative subject-form of personal pronoun; 2016feb08
$t=209; $ear[$t] = "I,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=209; KbLoad();  # 2016feb08

  # MINE -- genitive form of personal pronoun; 2016feb08
$t=211; $ear[$t] = "M,0,0";    # 2016feb08
$t=212; $ear[$t] = "I,0,0";    # 2016feb08
$t=213; $ear[$t] = "N,0,0";    # 2016feb08
$t=214; $ear[$t] = "E,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=211; KbLoad();  # 2016feb08

  # ME -- dative indirect-object form of personal pronoun; 2016feb08
$t=216; $ear[$t] = "M,0,0";    # 2016feb08
$t=217; $ear[$t] = "E,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=3; $rv=216; KbLoad();  # 2016feb08

  # ME -- accusative direct-object form of personal pronoun
$t=219; $ear[$t] = "M,0,0";    # 2016feb08
$t=220; $ear[$t] = "E,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=219; KbLoad();  # 2016feb08

  # IF -- for machine reasoning logic 
$t=222; $ear[$t] = "I,0,0";    # 2016feb08
$t=223; $ear[$t] = "F,0,390";  # 2016feb08
  $psi=390; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=222; KbLoad();  # 2016feb08

  # IN -- preposition for EnPrep module 
$t=225; $ear[$t] = "I,0,0";    # 2016feb08
$t=226; $ear[$t] = "N,0,639";  # 2016feb08
  $psi=639; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=225; KbLoad();  # 2016feb08

  # IT -- nominative subject-form of personal pronoun; 2016feb08
$t=228; $ear[$t] = "I,0,0";    # 2016feb08
$t=229; $ear[$t] = "T,0,725";  # 2016feb08
  $psi=725; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=228; KbLoad();  # 2016feb08

  # ITS -- genitive form of personal pronoun; 2016feb08
$t=231; $ear[$t] = "I,0,0";    # 2016feb08
$t=232; $ear[$t] = "T,0,0";    # 2016feb08
$t=233; $ear[$t] = "S,0,725";  # 2016feb08
  $psi=725; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=2; $rv=231; KbLoad();  # 2016feb08

  # IT -- dative indirect-object form of personal pronoun; 2016feb08
$t=235; $ear[$t] = "I,0,0";    # 2016feb08
$t=236; $ear[$t] = "T,0,725";  # 2016feb08
  $psi=725; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=3; $rv=235; KbLoad();  # 2016feb08

  # IT -- accusative direct-object form of personal pronoun
$t=238; $ear[$t] = "I,0,0";    # 2016feb08
$t=239; $ear[$t] = "T,0,725";  # 2016feb08
  $psi=725; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=238; KbLoad();  # 2016feb08

  # KNOW -- germane to artificial intelligence 
$t=241; $ear[$t] = "K,0,0";    # 2016feb08
$t=242; $ear[$t] = "N,0,0";    # 2016feb08
$t=243; $ear[$t] = "O,0,0";    # 2016feb08
$t=244; $ear[$t] = "W,0,850";  # 2016feb08
  $psi=850; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=241; KbLoad();  # 2016feb08

  # MAN -- always masculine noun for use with gender flags 
$t=246; $ear[$t] = "M,0,0";    # 2016feb08
$t=247; $ear[$t] = "A,0,0";    # 2016feb08
$t=248; $ear[$t] = "N,0,543";  # 2016feb08
  $psi=543; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=0; $rv=246; KbLoad();  # 2016feb08

  # MEN -- irregular plural for retrieval by parameters
$t=250; $ear[$t] = "M,0,0";    # 2016feb08
$t=251; $ear[$t] = "E,0,0";    # 2016feb08
$t=252; $ear[$t] = "N,0,543";  # 2016feb08
  $psi=543; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=1; $dba=0; $rv=250; KbLoad();  # 2016feb08

  # MAYBE -- adverb response as alternative to YES or NO
$t=254; $ear[$t] = "M,0,0";    # 2016feb08
$t=255; $ear[$t] = "A,0,0";    # 2016feb08
$t=256; $ear[$t] = "Y,0,0";    # 2016feb08
$t=257; $ear[$t] = "B,0,0";    # 2016feb08
$t=258; $ear[$t] = "E,0,270";  # 2016feb08
  $psi=270; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=254; KbLoad();  # 2016feb08

  # MEDIA -- always plural noun in correction of modern usage 
$t=260; $ear[$t] = "M,0,0";    # 2016feb08
$t=261; $ear[$t] = "E,0,0";    # 2016feb08
$t=262; $ear[$t] = "D,0,0";    # 2016feb08
$t=263; $ear[$t] = "I,0,0";    # 2016feb08
$t=264; $ear[$t] = "A,0,584";  # 2016feb08
  $psi=584; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=3; $dba=0; $rv=260; KbLoad();  # 2016feb08

  # MY -- adjective for personal pronoun "I"; 2016feb08
$t=266; $ear[$t] = "M,0,0";    # 2016feb08
$t=267; $ear[$t] = "Y,0,181";  # 2016feb08
  $psi=181; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=266; KbLoad();  # 2016feb08

  # NO -- interjection for human-computer interaction 
$t=269; $ear[$t] = "N,0,0";    # 2016feb08
$t=270; $ear[$t] = "O,0,404";  # 2016feb08
  $psi=404; $hlc="en"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=269; KbLoad();  # 2016feb08

  # NOT -- for machine reasoning logic 
$t=272; $ear[$t] = "N,0,0";    # 2016feb08
$t=273; $ear[$t] = "O,0,0";    # 2016feb08
$t=274; $ear[$t] = "T,0,250";  # 2016feb08
  $psi=250; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=272; KbLoad();  # 2016feb08

  # NOTHING --  VisRecog default for what the AI Mind sees
$t=276; $ear[$t] = "N,0,0";    # 2016feb08
$t=277; $ear[$t] = "O,0,0";    # 2016feb08
$t=278; $ear[$t] = "T,0,0";    # 2016feb08
$t=279; $ear[$t] = "H,0,0";    # 2016feb08
$t=280; $ear[$t] = "I,0,0";    # 2016feb08
$t=281; $ear[$t] = "N,0,0";    # 2016feb08
$t=282; $ear[$t] = "G,0,760";  # 2016feb08
  $psi=760; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=0; $rv=276; KbLoad();  # 2016feb08

  # OF -- preposition for EnPrep module 
$t=284; $ear[$t] = "O,0,0";    # 2016feb08
$t=285; $ear[$t] = "F,0,604";  # 2016feb08
  $psi=604; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=284; KbLoad();  # 2016feb08

  # OR -- for machine reasoning logic  
$t=287; $ear[$t] = "O,0,0";    # 2016feb08
$t=288; $ear[$t] = "R,0,324";  # 2016feb08
  $psi=324; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=287; KbLoad();  # 2016feb08

  # OUR -- adjective for personal pronoun "WE"; 2016feb08
$t=290; $ear[$t] = "O,0,0";    # 2016feb08
$t=291; $ear[$t] = "U,0,0";    # 2016feb08
$t=292; $ear[$t] = "R,0,186";  # 2016feb08
  $psi=186; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=290; KbLoad();  # 2016feb08

  # PEOPLE -- establish as plural for EnParser 
$t=294; $ear[$t] = "P,0,0";    # 2016feb08
$t=295; $ear[$t] = "E,0,0";    # 2016feb08
$t=296; $ear[$t] = "O,0,0";    # 2016feb08
$t=297; $ear[$t] = "P,0,0";    # 2016feb08
$t=298; $ear[$t] = "L,0,0";    # 2016feb08
$t=299; $ear[$t] = "E,0,587";  # 2016feb08
  $psi=587; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=0; $rv=294; KbLoad();  # 2016feb08

  # PERSON -- for ad-hoc gender tags and robot philosophy 
$t=301; $ear[$t] = "P,0,0";    # 2016feb08
$t=302; $ear[$t] = "E,0,0";    # 2016feb08
$t=303; $ear[$t] = "R,0,0";    # 2016feb08
$t=304; $ear[$t] = "S,0,0";    # 2016feb08
$t=305; $ear[$t] = "O,0,0";    # 2016feb08
$t=306; $ear[$t] = "N,0,537";  # 2016feb08
  $psi=537; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=301; KbLoad();  # 2016feb08

  # PLEASE -- interjection for human-computer interaction 
$t=308; $ear[$t] = "P,0,0";    # 2016feb08
$t=309; $ear[$t] = "L,0,0";    # 2016feb08
$t=310; $ear[$t] = "E,0,0";    # 2016feb08
$t=311; $ear[$t] = "A,0,0";    # 2016feb08
$t=312; $ear[$t] = "S,0,0";    # 2016feb08
$t=313; $ear[$t] = "E,0,410";  # 2016feb08
  $psi=410; $hlc="en"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=308; KbLoad();  # 2016feb08

  # SEE -- lets VisRecog report non-KB direct objects.
$t=315; $ear[$t] = "S,0,0";    # 2016feb08
$t=316; $ear[$t] = "E,0,0";    # 2016feb08
$t=317; $ear[$t] = "E,0,820";  # 2016feb08
  $psi=820; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=315; KbLoad();  # 2016feb08

  # SHE -- nominative subject-form of personal pronoun; 2016feb08
$t=319; $ear[$t] = "S,0,0";    # 2016feb08
$t=320; $ear[$t] = "H,0,0";    # 2016feb08
$t=321; $ear[$t] = "E,0,719";  # 2016feb08
  $psi=719; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=1; $rv=319; KbLoad();  # 2016feb08

  # HERS -- genitive form of personal pronoun; 2016feb08
$t=323; $ear[$t] = "H,0,0";    # 2016feb08
$t=324; $ear[$t] = "E,0,0";    # 2016feb08
$t=325; $ear[$t] = "R,0,0";    # 2016feb08
$t=326; $ear[$t] = "S,0,719";  # 2016feb08
  $psi=719; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=2; $rv=323; KbLoad();  # 2016feb08

  # HER -- dative indirect-object form of pers. pron. 2016feb08
$t=328; $ear[$t] = "H,0,0";    # 2016feb08
$t=329; $ear[$t] = "E,0,0";    # 2016feb08
$t=330; $ear[$t] = "R,0,719";  # 2016feb08
  $psi=719; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=3; $rv=328; KbLoad();  # 2016feb08

  # HER -- accusative direct-object form of pers. pron. 2016feb08 
$t=332; $ear[$t] = "H,0,0";    # 2016feb08
$t=333; $ear[$t] = "E,0,0";    # 2016feb08
$t=334; $ear[$t] = "R,0,719";  # 2016feb08
  $psi=719; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=4; $rv=332; KbLoad();  # 2016feb08

  # SOME -- adjective for machine reasoning logic 
$t=336; $ear[$t] = "S,0,0";    # 2016feb08
$t=337; $ear[$t] = "O,0,0";    # 2016feb08
$t=338; $ear[$t] = "M,0,0";    # 2016feb08
$t=339; $ear[$t] = "E,0,173";  # 2016feb08; 2016apr19
  $psi=173; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=336; KbLoad();  # 2016feb08

  # THAT -- high word-frequency pronoun  
$t=341; $ear[$t] = "T,0,0";    # 2016feb08
$t=342; $ear[$t] = "H,0,0";    # 2016feb08
$t=343; $ear[$t] = "A,0,0";    # 2016feb08
$t=344; $ear[$t] = "T,0,745";  # 2016feb08
  $psi=745; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=341; KbLoad();  # 2016feb08

  # THE -- EnArticle highest-frequency English word 
$t=346; $ear[$t] = "T,0,0";    # 2016feb08
$t=347; $ear[$t] = "H,0,0";    # 2016feb08
$t=348; $ear[$t] = "E,0,117";  # 2016feb08
  $psi=117; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=346; KbLoad();  # 2016feb08

  # THEIR -- adjective for personal pronoun "THEY"; 2016feb08
$t=350; $ear[$t] = "T,0,0";    # 2016feb08
$t=351; $ear[$t] = "H,0,0";    # 2016feb08
$t=352; $ear[$t] = "E,0,0";    # 2016feb08
$t=353; $ear[$t] = "I,0,0";    # 2016feb08
$t=354; $ear[$t] = "R,0,188";  # 2016feb08
  $psi=188; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=350; KbLoad();  # 2016feb08

  # THEN -- for machine reasoning logic  
$t=356; $ear[$t] = "T,0,0";    # 2016feb08
$t=357; $ear[$t] = "H,0,0";    # 2016feb08
$t=358; $ear[$t] = "E,0,0";    # 2016feb08
$t=359; $ear[$t] = "N,0,213";  # 2016feb08
  $psi=213; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=356; KbLoad();  # 2016feb08

  # THERE -- adverb for discussion of physical location 
$t=361; $ear[$t] = "T,0,0";    # 2016feb08
$t=362; $ear[$t] = "H,0,0";    # 2016feb08
$t=363; $ear[$t] = "E,0,0";    # 2016feb08
$t=364; $ear[$t] = "R,0,0";    # 2016feb08
$t=365; $ear[$t] = "E,0,205";  # 2016feb08
  $psi=205; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=361; KbLoad();  # 2016feb08

  # THEY -- nominative subject-form of pers. pronoun; 2016feb08
$t=367; $ear[$t] = "T,0,0";    # 2016feb08
$t=368; $ear[$t] = "H,0,0";    # 2016feb08
$t=369; $ear[$t] = "E,0,0";    # 2016feb08
$t=370; $ear[$t] = "Y,0,743";  # 2016feb08
  $psi=743; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=367; KbLoad();  # 2016feb08

  # THEIRS -- genitive form of personal pronoun; 2016feb08 
$t=372; $ear[$t] = "T,0,0";    # 2016feb08
$t=373; $ear[$t] = "H,0,0";    # 2016feb08
$t=374; $ear[$t] = "E,0,0";    # 2016feb08
$t=375; $ear[$t] = "I,0,0";    # 2016feb08
$t=376; $ear[$t] = "R,0,0";    # 2016feb08
$t=377; $ear[$t] = "S,0,743";  # 2016feb08
  $psi=743; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=372; KbLoad();  # 2016feb08

  # THEM -- dative indirect-object form of pers. pron. 2016feb08
$t=379; $ear[$t] = "T,0,0";    # 2016feb08
$t=380; $ear[$t] = "H,0,0";    # 2016feb08
$t=381; $ear[$t] = "E,0,0";    # 2016feb08
$t=382; $ear[$t] = "M,0,743";  # 2016feb08
  $psi=743; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=379; KbLoad();  # 2016feb08

  # THEM -- acc. direct-object form of pers. pron. 2016feb08
$t=384; $ear[$t] = "T,0,0";    # 2016feb08
$t=385; $ear[$t] = "H,0,0";    # 2016feb08
$t=386; $ear[$t] = "E,0,0";    # 2016feb08
$t=387; $ear[$t] = "M,0,743";  # 2016feb08
  $psi=743; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=384; KbLoad();  # 2016feb08

  # THINK -- germane to artificial intelligence  
$t=389; $ear[$t] = "T,0,0";    # 2016feb08
$t=390; $ear[$t] = "H,0,0";    # 2016feb08
$t=391; $ear[$t] = "I,0,0";    # 2016feb08
$t=392; $ear[$t] = "N,0,0";    # 2016feb08
$t=393; $ear[$t] = "K,0,840";  # 2016feb08
  $psi=840; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=389; KbLoad();  # 2016feb08

  # WE -- nominative subject-form of personal pronoun; 2016feb08
$t=395; $ear[$t] = "W,0,0";    # 2016feb08
$t=396; $ear[$t] = "E,0,731";  # 2016feb08
  $psi=731; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=395; KbLoad();  # 2016feb08

  # OURS -- genitive form of personal pronoun; 2016feb08
$t=398; $ear[$t] = "O,0,0";    # 2016feb08
$t=399; $ear[$t] = "U,0,0";    # 2016feb08
$t=400; $ear[$t] = "R,0,0";    # 2016feb08
$t=401; $ear[$t] = "S,0,731";  # 2016feb08
  $psi=731; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=398; KbLoad();  # 2016feb08

  # US -- dative indirect-object form of pers. pron. 2016feb08
$t=403; $ear[$t] = "U,0,0";    # 2016feb08
$t=404; $ear[$t] = "S,0,731";  # 2016feb08
  $psi=731; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=403; KbLoad();  # 2016feb08

  # US -- accusative direct-object form of pers. pron. 2016feb08
$t=406; $ear[$t] = "U,0,0";    # 2016feb08
$t=407; $ear[$t] = "S,0,731";  # 2016feb08
  $psi=731; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=406; KbLoad();  # 2016feb08

  # WHAT -- nominative pronoun for SelfReferentialThought 
$t=409; $ear[$t] = "W,0,0";    # 2016feb08
$t=410; $ear[$t] = "H,0,0";    # 2016feb08
$t=411; $ear[$t] = "A,0,0";    # 2016feb08
$t=412; $ear[$t] = "T,0,781";  # 2016feb08
  $psi=781; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=409; KbLoad();  # 2016feb08

  # WHAT -- accusative pronoun for SelfReferentialThought 
$t=414; $ear[$t] = "W,0,0";    # 2016feb08
$t=415; $ear[$t] = "H,0,0";    # 2016feb08
$t=416; $ear[$t] = "A,0,0";    # 2016feb08
$t=417; $ear[$t] = "T,0,781";  # 2016feb08
  $psi=781; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=414; KbLoad();  # 2016feb08

  # WHEN -- for SelfReferentialThought 
$t=419; $ear[$t] = "W,0,0";    # 2016feb08
$t=420; $ear[$t] = "H,0,0";    # 2016feb08
$t=421; $ear[$t] = "E,0,0";    # 2016feb08
$t=422; $ear[$t] = "N,0,263";  # 2016feb08
  $psi=263; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=419; KbLoad();  # 2016feb08

  # WHERE -- for SelfReferentialThought 
$t=424; $ear[$t] = "W,0,0";    # 2016feb08
$t=425; $ear[$t] = "H,0,0";    # 2016feb08
$t=426; $ear[$t] = "E,0,0";    # 2016feb08
$t=427; $ear[$t] = "R,0,0";    # 2016feb08
$t=428; $ear[$t] = "E,0,245";  # 2016feb08
  $psi=245; $hlc="en"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=424; KbLoad();  # 2016feb08

  # WHO -- for SelfReferentialThought 
$t=430; $ear[$t] = "W,0,0";    # 2016feb08
$t=431; $ear[$t] = "H,0,0";    # 2016feb08
$t=432; $ear[$t] = "O,0,791";  # 2016feb08
  $psi=791; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=430; KbLoad();  # 2016feb08

  # WHOSE -- for AI to ask grammatically correct questions 
$t=434; $ear[$t] = "W,0,0";    # 2016feb08
$t=435; $ear[$t] = "H,0,0";    # 2016feb08
$t=436; $ear[$t] = "O,0,0";    # 2016feb08
$t=437; $ear[$t] = "S,0,0";    # 2016feb08
$t=438; $ear[$t] = "E,0,794";  # 2016feb08
  $psi=794; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=434; KbLoad();  # 2016feb08

  # WHOM -- for AI to ask grammatically correct questions 
$t=440; $ear[$t] = "W,0,0";    # 2016feb08
$t=441; $ear[$t] = "H,0,0";    # 2016feb08
$t=442; $ear[$t] = "O,0,0";    # 2016feb08
$t=443; $ear[$t] = "M,0,794";  # 2016feb08
  $psi=794; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=440; KbLoad();  # 2016feb08

  # WHOM -- for AI to ask grammatically correct questions 
$t=445; $ear[$t] = "W,0,0";    # 2016feb08
$t=446; $ear[$t] = "H,0,0";    # 2016feb08
$t=447; $ear[$t] = "O,0,0";    # 2016feb08
$t=448; $ear[$t] = "M,0,794";  # 2016feb08
  $psi=794; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=445; KbLoad();  # 2016feb08

  # WHY -- for machine reasoning logic; 2016feb10
$t=450; $ear[$t] = "W,0,0";    # 2016feb08
$t=451; $ear[$t] = "H,0,0";    # 2016feb08
$t=452; $ear[$t] = "Y,0,370";  # 2016feb08
  $psi=370; $hlc="en"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=450; KbLoad();  # 2016feb08

  # WITH -- preposition for EnPrep module 
$t=454; $ear[$t] = "W,0,0";    # 2016feb08
$t=455; $ear[$t] = "I,0,0";    # 2016feb08
$t=456; $ear[$t] = "T,0,0";    # 2016feb08
$t=457; $ear[$t] = "H,0,680";  # 2016feb08
  $psi=680; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=454; KbLoad();  # 2016feb08

  # WOMAN -- always feminine noun for use with gender flags 
$t=459; $ear[$t] = "W,0,0";    # 2016feb08
$t=460; $ear[$t] = "O,0,0";    # 2016feb08
$t=461; $ear[$t] = "M,0,0";    # 2016feb08
$t=462; $ear[$t] = "A,0,0";    # 2016feb08
$t=463; $ear[$t] = "N,0,515";  # 2016feb08
  $psi=515; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=0; $rv=459; KbLoad();  # 2016feb08

  # WOMEN -- irregular plural for retrieval by parameters
$t=465; $ear[$t] = "W,0,0";    # 2016feb08
$t=466; $ear[$t] = "O,0,0";    # 2016feb08
$t=467; $ear[$t] = "M,0,0";    # 2016feb08
$t=468; $ear[$t] = "E,0,0";    # 2016feb08
$t=469; $ear[$t] = "N,0,515";  # 2016feb08
  $psi=515; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=2; $dba=0; $rv=465; KbLoad();  # 2016feb08

  # YES -- interjection for human-computer interaction 
$t=471; $ear[$t] = "Y,0,0";    # 2016feb08
$t=472; $ear[$t] = "E,0,0";    # 2016feb08
$t=473; $ear[$t] = "S,0,432";  # 2016feb08
  $psi=432; $hlc="en"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=471; KbLoad();  # 2016feb08

  # YOU -- nominative singular of personal pronoun; 2016feb08
$t=475; $ear[$t] = "Y,0,0";    # 2016feb08
$t=476; $ear[$t] = "O,0,0";    # 2016feb08
$t=477; $ear[$t] = "U,0,707";  # 2016feb08
  $psi=707; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=475; KbLoad();  # 2016feb08

  # YOURS -- genitive singular of personal pronoun; 2016feb08
$t=479; $ear[$t] = "Y,0,0";    # 2016feb08
$t=480; $ear[$t] = "O,0,0";    # 2016feb08
$t=481; $ear[$t] = "U,0,0";    # 2016feb08
$t=482; $ear[$t] = "R,0,0";    # 2016feb08
$t=483; $ear[$t] = "S,0,707";  # 2016feb08
  $psi=707; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=479; KbLoad();  # 2016feb08

  # YOU -- dative singular of personal pronoun; 2016feb08
$t=485; $ear[$t] = "Y,0,0";    # 2016feb08
$t=486; $ear[$t] = "O,0,0";    # 2016feb08
$t=487; $ear[$t] = "U,0,707";  # 2016feb08
  $psi=707; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=485; KbLoad();  # 2016feb08

  # YOU -- accusative singular of personal pronoun; 2016feb08
$t=489; $ear[$t] = "Y,0,0";    # 2016feb08
$t=490; $ear[$t] = "O,0,0";    # 2016feb08
$t=491; $ear[$t] = "U,0,707";  # 2016feb08
  $psi=707; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=489; KbLoad();  # 2016feb08

  # YOU -- nominative plural of personal pronoun; 2016feb08
$t=493; $ear[$t] = "Y,0,0";    # 2016feb08
$t=494; $ear[$t] = "O,0,0";    # 2016feb08
$t=495; $ear[$t] = "U,0,737";  # 2016feb08
  $psi=737; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=493; KbLoad();  # 2016feb08

  # YOURS -- genitive plural of personal pronoun; 2016feb08
$t=497; $ear[$t] = "Y,0,0";    # 2016feb08
$t=498; $ear[$t] = "O,0,0";    # 2016feb08
$t=499; $ear[$t] = "U,0,0";    # 2016feb08
$t=500; $ear[$t] = "R,0,0";    # 2016feb08
$t=501; $ear[$t] = "S,0,737";  # 2016feb08
  $psi=737; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=497; KbLoad();  # 2016feb08

  # YOU -- dative plural of personal pronoun; 2016feb08
$t=503; $ear[$t] = "Y,0,0";    # 2016feb08
$t=504; $ear[$t] = "O,0,0";    # 2016feb08
$t=505; $ear[$t] = "U,0,737";  # 2016feb08
  $psi=737; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=503; KbLoad();  # 2016feb08

  # YOU -- accusative plural of personal pronoun; 2016feb08
$t=507; $ear[$t] = "Y,0,0";    # 2016feb08
$t=508; $ear[$t] = "O,0,0";    # 2016feb08
$t=509; $ear[$t] = "U,0,737";  # 2016feb08
  $psi=737; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=507; KbLoad();  # 2016feb08

  # YOUR -- adjective for personal pronoun "YOU"; 2016feb08
$t=511; $ear[$t] = "Y,0,0";    # 2016feb08
$t=512; $ear[$t] = "O,0,0";    # 2016feb08
$t=513; $ear[$t] = "U,0,0";    # 2016feb08
$t=514; $ear[$t] = "R,0,182";  # 2016feb08
  $psi=182; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=511; KbLoad();  # 2016feb08

  # YOU -- for SelfReferentialThought 
$t=516; $ear[$t] = "Y,0,0";    # 2016feb08
$t=517; $ear[$t] = "O,0,0";    # 2016feb08
$t=518; $ear[$t] = "U,0,707";  # 2016feb08
  $psi=707; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=522; $seq=800; 
  $num=1; $mfn=0; $dba=1; $rv=516; KbLoad();  # 2016feb08

  # ARE -- essential intransitive verb -- 800 from Dushka; 2016feb08
$t=520; $ear[$t] = "A,0,0";    # 2016feb08
$t=521; $ear[$t] = "R,0,0";    # 2016feb08
$t=522; $ear[$t] = "E,0,800";  # 2016feb08
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=707; $tkb=528; $seq=588; 
  $num=1; $mfn=0; $dba=2; $rv=520; KbLoad();  # 2016feb08

  # MAGIC -- for testing purposes 
$t=524; $ear[$t] = "M,0,0";    # 2016feb08
$t=525; $ear[$t] = "A,0,0";    # 2016feb08
$t=526; $ear[$t] = "G,0,0";    # 2016feb08
$t=527; $ear[$t] = "I,0,0";    # 2016feb08
$t=528; $ear[$t] = "C,0,588";  # 2016feb08
  $psi=588; $hlc="en"; $pos=5; $jux=0; $pre=800; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=524; KbLoad();  # 2016apr12

  # I -- for SelfReferentialThought 
$t=530; $ear[$t] = "I,0,701";    # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=533; $seq=800; 
  $num=1; $mfn=0; $dba=1; $rv=530; KbLoad();  # 2016feb08

  # AM -- 1st person singular of 800=BE; 2016feb09
$t=532; $ear[$t] = "A,0,0";    # 2016feb08
$t=533; $ear[$t] = "M,0,800";  # 2016feb08
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=701; $tkb=539; $seq=501; 
  $num=1; $mfn=0; $dba=1; $rv=532; KbLoad();  # 2016feb08

  # ANDRU -- for SelfReferentialThought; 2016feb10
$t=535; $ear[$t] = "A,0,0";    # 2016feb08
$t=536; $ear[$t] = "N,0,0";    # 2016feb08
$t=537; $ear[$t] = "D,0,0";    # 2016feb08
$t=538; $ear[$t] = "R,0,0";    # 2016feb08
$t=539; $ear[$t] = "U,0,501";  # 2016feb08
  $psi=501; $hlc="en"; $pos=5; $jux=0; $pre=800; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=535; KbLoad();  # 2016feb08

  # I -- innate KB-item for testing inhibition of idea-pairs
$t=541; $ear[$t] = "I,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=544; $seq=800; 
  $num=1; $mfn=0; $dba=1; $rv=541; KbLoad();  # 2016feb08

  # AM -- 1st person singular of 800=BE; 2016feb09
$t=543; $ear[$t] = "A,0,0";    # 2016feb08
$t=544; $ear[$t] = "M,0,800";  # 2016feb08
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=701; $tkb=552; $seq=571; 
  $num=1; $mfn=0; $dba=1; $rv=543; KbLoad();  # 2016feb08

  # A -- En(glish) Article for EnArticle module 
$t=546; $ear[$t] = "A,0,101";  # 2016feb08
  $psi=101; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=552; $seq=571; 
  $num=1; $mfn=0; $dba=0; $rv=546; KbLoad();  # 2016feb08

  # ROBOT -- important for target user base 
$t=548; $ear[$t] = "R,0,0";    # 2016feb08
$t=549; $ear[$t] = "O,0,0";    # 2016feb08
$t=550; $ear[$t] = "B,0,0";    # 2016feb08
$t=551; $ear[$t] = "O,0,0";    # 2016feb08
$t=552; $ear[$t] = "T,0,571";  # 2016feb08
  $psi=571; $hlc="en"; $pos=5; $jux=0; $pre=800; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=548; KbLoad();  # 2016feb08

  # I -- innate KB-item for testing inhibition of idea-pairs
$t=554; $ear[$t] = "I,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=557; $seq=800; 
  $num=1; $mfn=0; $dba=1; $rv=554; KbLoad();  # 2016feb08

  # AM -- 1st person singular of 800=BE; 2016feb09
$t=556; $ear[$t] = "A,0,0";    # 2016feb08
$t=557; $ear[$t] = "M,0,800";  # 2016feb08
  $psi=800; $hlc="en"; $pos=8; $jux=0; $pre=701; $tkb=566; $seq=537; 
  $num=1; $mfn=0; $dba=1; $rv=556; KbLoad();  # 2016feb08

  # A -- En(glish) Article for EnArticle module 
$t=559; $ear[$t] = "A,0,101";  # 2016feb08
  $psi=101; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=566; $seq=537; 
  $num=1; $mfn=0; $dba=0; $rv=559; KbLoad();  # 2016feb08

  # PERSON -- for ad-hoc gender tags and robot philosophy 
$t=561; $ear[$t] = "P,0,0";    # 2016feb08
$t=562; $ear[$t] = "E,0,0";    # 2016feb08
$t=563; $ear[$t] = "R,0,0";    # 2016feb08
$t=564; $ear[$t] = "S,0,0";    # 2016feb08
$t=565; $ear[$t] = "O,0,0";    # 2016feb08
$t=566; $ear[$t] = "N,0,537";  # 2016feb08
  $psi=537; $hlc="en"; $pos=5; $jux=0; $pre=800; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=561; KbLoad();  # 2016feb08

  # I -- for SelfReferentialThought 
$t=568; $ear[$t] = "I,0,701";  # 2016feb08
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=0; $tkb=573; $seq=895; 
  $num=1; $mfn=0; $dba=1; $rv=568; KbLoad();  # 2016feb08

  # HELP -- socially significant common verb 
$t=570; $ear[$t] = "H,0,0";    # 2016feb08
$t=571; $ear[$t] = "E,0,0";    # 2016feb08
$t=572; $ear[$t] = "L,0,0";    # 2016feb08;
$t=573; $ear[$t] = "P,0,895";  # 2016feb08
  $psi=895; $hlc="en"; $pos=8; $jux=0; $pre=701; $tkb=578; $seq=528; 
  $num=1; $mfn=0; $dba=1; $rv=570; KbLoad();  # 2016feb08

  # KIDS -- noun lends itself to educational purposes 
$t=575; $ear[$t] = "K,0,0";    # 2016feb08
$t=576; $ear[$t] = "I,0,0";    # 2016feb08
$t=577; $ear[$t] = "D,0,528";  # 2016jun30: for recognition of singular.
$t=578; $ear[$t] = "S,0,528";  # 2016feb08
  $psi=528; $hlc="en"; $pos=5; $jux=0; $pre=895; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=575; KbLoad();  # 2016feb08

  # KIDS -- noun lends itself to educational purposes 
$t=580; $ear[$t] = "K,0,0";    # 2016feb08
$t=581; $ear[$t] = "I,0,0";    # 2016feb08
$t=582; $ear[$t] = "D,0,0";    # 2016feb08
$t=583; $ear[$t] = "S,0,528";  # 2016feb08
  $psi=528; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=588; $seq=835; 
  $num=2; $mfn=0; $dba=1; $rv=580; KbLoad();  # 2016feb08

  # MAKE -- common verb of high word-frequency 
$t=585; $ear[$t] = "M,0,0";    # 2016feb08
$t=586; $ear[$t] = "A,0,0";    # 2016feb08
$t=587; $ear[$t] = "K,0,0";    # 2016feb08
$t=588; $ear[$t] = "E,0,835";  # 2016feb08
  $psi=835; $hlc="en"; $pos=8; $jux=0; $pre=528; $tkb=595; $seq=571; 
  $num=2; $mfn=0; $dba=3; $rv=585; KbLoad();  # 2016feb08

  # ROBOTS -- important for target user base 
$t=590; $ear[$t] = "R,0,0";    # 2016feb08
$t=591; $ear[$t] = "O,0,0";    # 2016feb08
$t=592; $ear[$t] = "B,0,0";    # 2016feb08
$t=593; $ear[$t] = "O,0,0";    # 2016feb08
$t=594; $ear[$t] = "T,0,0";    # 2016feb08
$t=595; $ear[$t] = "S,0,571";  # 2016feb08
  $psi=571; $hlc="en"; $pos=5; $jux=0; $pre=835; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=590; KbLoad();  # 2016feb08

  # ROBOTS -- important for target user base 
$t=597; $ear[$t] = "R,0,0";    # 2016feb08
$t=598; $ear[$t] = "O,0,0";    # 2016feb08
$t=599; $ear[$t] = "B,0,0";    # 2016feb08
$t=600; $ear[$t] = "O,0,0";    # 2016feb08
$t=601; $ear[$t] = "T,0,0";    # 2016feb08
$t=602; $ear[$t] = "S,0,571";  # 2016feb08; 2016apr12
  $psi=571; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=607; $seq=849; 
  $num=2; $mfn=0; $dba=1; $rv=597; KbLoad();  # 2016feb08

  # NEED -- common verb used for describing goals 
$t=604; $ear[$t] = "N,0,0";    # 2016feb08
$t=605; $ear[$t] = "E,0,0";    # 2016feb08
$t=606; $ear[$t] = "E,0,0";    # 2016feb08
$t=607; $ear[$t] = "D,0,849";  # 2016feb08; 2016apr12
  $psi=849; $hlc="en"; $pos=8; $jux=0; $pre=571; $tkb=610; $seq=701; 
  $num=2; $mfn=0; $dba=3; $rv=604; KbLoad();  # 2016feb08

  # ME -- for SelfReferentialThought 
$t=609; $ear[$t] = "M,0,0";    # 2016feb08
$t=610; $ear[$t] = "E,0,701";  # 2016feb08; 2016apr12
  $psi=701; $hlc="en"; $pos=7; $jux=0; $pre=849; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=609; KbLoad();  # 2016feb08

  # WOMEN -- irregular plural for retrieval by parameters
$t=612; $ear[$t] = "W,0,0";    # 2016feb08
$t=613; $ear[$t] = "O,0,0";    # 2016feb08
$t=614; $ear[$t] = "M,0,0";    # 2016feb08
$t=615; $ear[$t] = "E,0,0";    # 2016feb08
$t=616; $ear[$t] = "N,0,515";  # 2016feb08
# $psi=515; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $psi=515; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=621; $seq=810; 
  $num=2; $mfn=2; $dba=1; $rv=612; KbLoad();  # 2016feb08

  # HAVE -- irregular high word-frequency verb  
$t=618; $ear[$t] = "H,0,0";    # 2016feb08
$t=619; $ear[$t] = "A,0,0";    # 2016feb08
$t=620; $ear[$t] = "V,0,0";    # 2016feb08
$t=621; $ear[$t] = "E,0,810";  # 2016feb08
# $psi=810; $hlc="en"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $psi=810; $hlc="en"; $pos=8; $jux=0; $pre=515; $tkb=629; $seq=525; 
  $num=2; $mfn=0; $dba=3; $rv=618; KbLoad();  # 2016feb08

  # A -- En(glish) Article for EnArticle module 
$t=623; $ear[$t] = "A,0,101";  # 2016feb08
  $psi=101; $hlc="en"; $pos=1; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=0; $rv=623; KbLoad();  # 2016feb08

  # CHILD -- example of irregular noun for a polyglot AI Mind
$t=625; $ear[$t] = "C,0,0";    # 2016feb08
$t=626; $ear[$t] = "H,0,0";    # 2016feb08
$t=627; $ear[$t] = "I,0,0";    # 2016feb08
$t=628; $ear[$t] = "L,0,0";    # 2016feb08 
$t=629; $ear[$t] = "D,0,525";  # 2016feb08
# $psi=525; $hlc="en"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $psi=525; $hlc="en"; $pos=5; $jux=0; $pre=810; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=625; KbLoad();  # 2016feb08

  # TO -- preposition (3rd most frequent word) for EnPrep module; 2016mar02
$t=701; $ear[$t] = "T,0,0";    # 2016mar02
$t=702; $ear[$t] = "O,0,628";  # 2016mar10: Russian prep. "К" is #1628.
  $psi=628; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=701; KbLoad();  # 2016mar02

  # ON -- preposition (17th most frequent word) for EnPrep module; 2016mar02
$t=704; $ear[$t] = "O,0,0";    # 2016mar02
$t=705; $ear[$t] = "N,0,637";  # 2016mar02: Russian "на' is #1637.
  $psi=637; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=704; KbLoad();  # 2016mar02

  # AT -- preposition (22nd most frequent word) for EnPrep module; 2016mar02
$t=707; $ear[$t] = "A,0,0";    # 2016mar02
$t=708; $ear[$t] = "T,0,697";  # 2016mar02: Russian "У" is #1697.
  $psi=697; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=707; KbLoad();  # 2016mar02

  # FROM -- preposition (26th most frequent word) for EnPrep module; 2016mar02
$t=710; $ear[$t] = "F,0,0";    # 2016mar02
$t=711; $ear[$t] = "R,0,0";    # 2016mar02
$t=712; $ear[$t] = "O,0,0";    # 2016mar02
$t=713; $ear[$t] = "M,0,647";  # 2016mar02: Russian "от" is #1647.
  $psi=647; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=710; KbLoad();  # 2016mar02

  # BY -- preposition (30th most frequent word) for EnPrep module; 2016mar02
$t=715; $ear[$t] = "B,0,0";    # 2016mar02
$t=716; $ear[$t] = "Y,0,645";  # 2016mar02: Russian "около" is #1645.
  $psi=645; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=715; KbLoad();  # 2016mar02

  # ABOUT -- preposition (46th most frequent word) for EnPrep module; 2016mar02
$t=718; $ear[$t] = "A,0,0";    # 2016mar02
$t=719; $ear[$t] = "B,0,0";    # 2016mar02
$t=720; $ear[$t] = "O,0,0";    # 2016mar02
$t=721; $ear[$t] = "U,0,0";    # 2016mar02
$t=722; $ear[$t] = "T,0,641";  # 2016mar02: Russian "о" is #1641. 
  $psi=641; $hlc="en"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=718; KbLoad();  # 2016mar02

# http://www.nlg-wiki.org/systems/Dushka -- predecessor Russian AI for MSIE
  $t=1001; $ear[$t] = " ,0,0";  # 2016feb24: Reserve 1001-1999 for Russian
  $t=1002; $ear[$t] = "\N{U+0},0,0";     # 2016feb24: seems necessary?
# 2016feb22: The Unicode U+HHHH notation uses hexadecimal. 
# ОШИБКА (1582 error) first word so any bug will announce itself 
  $t=1003; $ear[$t] = "\x8E,0,0";        # 2016feb24 " О"
  $t=1004; $ear[$t] = "\x98,0,0";        # 2016feb24 " Ш"
  $t=1005; $ear[$t] = "\x88,0,0";        # 2016feb24 " И"
  $t=1006; $ear[$t] = "\x81,0,0";        # 2016feb24 " Б"
  $t=1007; $ear[$t] = "\x8A,0,0";        # 2016feb24 " К"
  $t=1008; $ear[$t] = "\x80,0,1582";     # 2016feb24 " А"
  $psi=1582; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=0; $rv=1003; KbLoad();  # 2016feb22
  $t=1009; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1010; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
  # АВОСЬ (1270 maybe) for KbRetro to treat as answer; 2016may01
  $t=1011; $ear[$t] = "\x80,0,0";    # 2016feb22: "А"
  $t=1012; $ear[$t] = "\x82,0,0";    # 2016feb22: "В"
  $t=1013; $ear[$t] = "\x8E,0,0";    # 2016feb22: "О"
  $t=1014; $ear[$t] = "\x91,0,0";    # 2016feb22: "С"
  $t=1015; $ear[$t] = "\x9C,0,1270"; # 2016feb22: "Ь"
  $psi=1270; $hlc="ru"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1011; KbLoad();  # 2016feb22
  $t=1016; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1017; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# без (1600 without) preposition; 2016feb26
  $t=1018; $ear[$t] = "\x81,0,0";    # 2016feb22: "Б"
  $t=1019; $ear[$t] = "\x85,0,0";    # 2016feb22: "Е"
  $t=1020; $ear[$t] = "\x87,0,1600"; # 2016feb26: "З"
  $psi=1600; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1018; KbLoad();  # 2016feb24
  $t=1021; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1022; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# благодаря (1602 thanks to, owing to) 2016feb26:
  $t=1023; $ear[$t] = "\x81,0,0";    # 2016feb24: "Б"
  $t=1024; $ear[$t] = "\x8B,0,0";    # 2016feb24: "Л"
  $t=1025; $ear[$t] = "\x80,0,0";    # 2016feb24: "А"
  $t=1026; $ear[$t] = "\x83,0,0";    # 2016feb24: "Г"
  $t=1027; $ear[$t] = "\x8E,0,0";    # 2016feb24: "О"
  $t=1028; $ear[$t] = "\x84,0,0";    # 2016feb24: "Д"
  $t=1029; $ear[$t] = "\x80,0,0";    # 2016feb24: "А"
  $t=1030; $ear[$t] = "\x90,0,0";    # 2016feb24: "Р"
  $t=1031; $ear[$t] = "\x9F,0,1602"; # 2016feb26: "Я"
  $psi=1602; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1023; KbLoad();  # 2016feb24
  $t=1032; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1033; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# БЫВАТЬ (1803 to occur) verb; infinitive; 2016apr27: Cyrillic
  $t=1034; $ear[$t] = "\x81,0,0";    # 2016feb24: "Б"
  $t=1035; $ear[$t] = "\x9B,0,0";    # 2016feb24: "Ы"
  $t=1036; $ear[$t] = "\x82,0,0";    # 2016feb24: "В"
  $t=1037; $ear[$t] = "\x80,0,1803"; # 2016mar04: "А" stem $prc
  $t=1038; $ear[$t] = "\x92,0,1803"; # 2016mar04: "Т" stem #prc
  $t=1039; $ear[$t] = "\x9C,0,1803"; # 2016feb24: "Ь"
  $psi=1803; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1034; KbLoad();  # 2016feb22
  $t=1040; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1041; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# БЫТЬ (1800 to be) verb; irreg; infinitive 2016may01
  $t=1042; $ear[$t] = "\x81,0,0";    # 2016feb24: "Б"
  $t=1043; $ear[$t] = "\x9B,0,0";    # 2016feb24: "Ы"
  $t=1044; $ear[$t] = "\x92,0,0";    # 2016feb22: "Т"
  $t=1045; $ear[$t] = "\x9C,0,1800"; # 2016feb24: "Ь"
  $psi=1800; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1042; KbLoad();  # 2016feb25
  $t=1046; $ear[$t] = " ,0,0";       # 2016feb24: blank space

  $t=1047; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# БУДУ (1807 will be) verb; irreg; 1st person future; 2016may01
  $t=1048; $ear[$t] = "\x81,0,0";    # 2016feb25: "Б"
  $t=1049; $ear[$t] = "\x93,0,0";    # 2016feb23: "У"
  $t=1050; $ear[$t] = "\x84,0,0";    # 2016feb22: "Д"
  $t=1051; $ear[$t] = "\x93,0,1807"; # 2016feb23: "У"
  $psi=1807; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1048; KbLoad();  # 2016feb22
  $t=1052; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1053; $ear[$t] = "\N{U+0},0,0"; # 2016feb25: Unicode?
# "В" (1604 "in, into, at") preposition; 2016feb26
  $t=1054; $ear[$t] = "\x82,0,1604"; # 2016feb26: "В"
  $psi=1604; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1054; KbLoad();  # 2016feb25
  $t=1055; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1056; $ear[$t] = "\N{U+0},0,0"; # 2016feb25: Unicode?
# "ВО" (1605 "in, into, at") preposition; 2016feb26
  $t=1057; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1058; $ear[$t] = "\x8E,0,1605"; # 2016feb26: "О"
  $psi=1605; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1057; KbLoad();  # 2016feb25
  $t=1059; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1060; $ear[$t] = "\N{U+0},0,0"; # 2016feb25: Unicode?
# вдоль (1607 "along") preposition; 2016feb26
  $t=1061; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1062; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1063; $ear[$t] = "\x8E,0,0";    # 2016feb25: "О"
  $t=1064; $ear[$t] = "\x8B,0,0";    # 2016feb25: "Л"
  $t=1065; $ear[$t] = "\x9C,0,1607"; # 2016feb26: "Ь"
  $psi=1607; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1061; KbLoad();  # 2016feb25
  $t=1066; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1067; $ear[$t] = "\N{U+0},0,0"; # 2016feb25: Unicode?
# ВИДЕТЬ (1820 "to see"); verb; infinitive; 2016may01
  $t=1068; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1069; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1070; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1071; $ear[$t] = "\x85,0,0";    # 2016feb25: "Е"
  $t=1072; $ear[$t] = "\x92,0,0";    # 2016feb25: "Т"
  $t=1073; $ear[$t] = "\x9C,0,1820"; # 2016feb25: "Ь"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1068; KbLoad();  # 2016feb25
  $t=1074; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1075; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# ВИЖУ (1820 "I see"); verb for VisRecog; 2016may01
  $t=1076; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1077; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1078; $ear[$t] = "\x86,0,0";    # 2016feb25: "Ж"
  $t=1079; $ear[$t] = "\x93,0,1820"; # 2016feb25: "У"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=1076; KbLoad();  # 2016feb25
  $t=1080; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1081; $ear[$t] = "\N{U+0},0,0"; # 2016feb25: Unicode?
# ВИДИШЬ (1820 "you see"); verb for VisRecog; 2016may01
  $t=1082; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1083; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1084; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1085; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1086; $ear[$t] = "\x98,0,0";    # 2016feb25 " Ш"
  $t=1087; $ear[$t] = "\x9C,0,1820"; # 2016feb25: "Ь"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=1082; KbLoad();  # 2016feb25
  $t=1088; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1089; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# ВИДИТ (1820 "he sees"); verb for VisRecog; 2016may01
  $t=1090; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1091; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1092; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1093; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1094; $ear[$t] = "\x92,0,1820"; # 2016feb25: "Т"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=1090; KbLoad();  # 2016feb25
  $t=1095; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1096; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# ВИДИМ (1820 "we see"); verb for VisRecog; 2016may01
  $t=1097; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1098; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1099; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1100; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1101; $ear[$t] = "\x8C,0,1820"; # 2016feb25: "м"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1097; KbLoad();  # 2016feb25
  $t=1102; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1103; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# ВИДИТЕ (1820 "you see"); verb; plural; 2016may01
  $t=1104; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1105; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1106; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1107; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1108; $ear[$t] = "\x92,0,0";    # 2016feb25: "Т"
  $t=1109; $ear[$t] = "\x85,0,1820"; # 2016feb25: "Е"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1104; KbLoad();  # 2016feb25
  $t=1110; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1111; $ear[$t] = "\N{U+0},0,0"; # 2016feb24: Unicode?
# ВИДЯТ (1820 "they see"); verb; 3rd pers. plural; 2016may01
  $t=1112; $ear[$t] = "\x82,0,0";    # 2016feb25: "В"
  $t=1113; $ear[$t] = "\x88,0,0";    # 2016feb25 " И"
  $t=1114; $ear[$t] = "\x84,0,0";    # 2016feb25: "Д"
  $t=1115; $ear[$t] = "\x9F,0,0";    # 2016feb25: "Я"
  $t=1116; $ear[$t] = "\x92,0,1820"; # 2016feb25: "Т"
  $psi=1820; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1112; KbLoad();  # 2016feb25
  $t=1117; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1118; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# вместо (1608 instead of) preposition; 2016feb26
  $t=1119; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1120; $ear[$t] = "\x8C,0,0";    # 2016feb26 " М"
  $t=1121; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1122; $ear[$t] = "\x91,0,0";    # 2016feb26 " С"
  $t=1123; $ear[$t] = "\x92,0,0";    # 2016feb26: "Т"
  $t=1124; $ear[$t] = "\x8E,0,1608"; # 2016feb26: "О"
  $psi=1608; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1119; KbLoad();  # 2016feb26
  $t=1125; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1126; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# вне (1609 outside) preposition; 2016feb26:
  $t=1127; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1028; $ear[$t] = "\x8D,0,0";    # 2016feb22: "Н"
  $t=1129; $ear[$t] = "\x85,0,1609"; # 2016feb26: "Е"
  $psi=1609; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1027; KbLoad();  # 2016feb24
  $t=1130; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1131; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# внутри (1610 inside) preposition; 2016feb26
  $t=1132; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1133; $ear[$t] = "\x8D,0,0";    # 2016feb26 " Н"
  $t=1134; $ear[$t] = "\x93,0,0";    # 2016feb26: "У"
  $t=1135; $ear[$t] = "\x92,0,0";    # 2016feb26 " Т"
  $t=1136; $ear[$t] = "\x90,0,0";    # 2016feb26: "Р"
  $t=1137; $ear[$t] = "\x88,0,1610"; # 2016feb26: "И"
  $psi=1610; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1132; KbLoad();  # 2016feb26
  $t=1138; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1139; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# внутрь (1611 inside) preposition; 2016feb26
  $t=1140; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1141; $ear[$t] = "\x8D,0,0";    # 2016feb26 " Н"
  $t=1142; $ear[$t] = "\x93,0,0";    # 2016feb26: "У"
  $t=1143; $ear[$t] = "\x92,0,0";    # 2016feb26 " Т"
  $t=1144; $ear[$t] = "\x90,0,0";    # 2016feb26: "Р"
  $t=1145; $ear[$t] = "\x9C,0,1611"; # 2016feb26: "Ь"
  $psi=1611; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1140; KbLoad();  # 2016feb26
  $t=1146; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1147; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# возле (1612 near) preposition; 2016feb26
  $t=1148; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1149; $ear[$t] = "\x8E,0,0";    # 2016feb26: "О"
  $t=1150; $ear[$t] = "\x87,0,0";    # 2016feb26 " З"
  $t=1151; $ear[$t] = "\x8B,0,0";    # 2016feb26: "Л"
  $t=1152; $ear[$t] = "\x85,0,1612"; # 2016feb26: "Е"
  $psi=1612; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1148; KbLoad();  # 2016feb26
  $t=1153; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1154; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# вокруг (1613 around) preposition; 2016feb26
  $t=1155; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1156; $ear[$t] = "\x8E,0,0";    # 2016feb26 " О"
  $t=1157; $ear[$t] = "\x8A,0,0";    # 2016feb26: "К"
  $t=1158; $ear[$t] = "\x90,0,0";    # 2016feb26 " Р"
  $t=1159; $ear[$t] = "\x93,0,0";    # 2016feb26: "У"
  $t=1160; $ear[$t] = "\x83,0,1613"; # 2016feb26: "Г"
  $psi=1613; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1155; KbLoad();  # 2016feb26
  $t=1161; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1162; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# вопреки (1614 despite) preposition; 2016feb26
  $t=1163; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1164; $ear[$t] = "\x8E,0,0";    # 2016feb26 " О"
  $t=1165; $ear[$t] = "\x8F,0,0";    # 2016feb26: "П"
  $t=1166; $ear[$t] = "\x91,0,0";    # 2016feb26 " Р"
  $t=1167; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1168; $ear[$t] = "\x8A,0,0";    # 2016feb26: "К"
  $t=1169; $ear[$t] = "\x88,0,1614"; # 2016feb26: "И"
  $psi=1614; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1163; KbLoad();  # 2016feb26
  $t=1170; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1171; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# впереди (1615 in front of) preposition; 2016feb26
  $t=1172; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1173; $ear[$t] = "\x8F,0,0";    # 2016feb26 " П"
  $t=1174; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1175; $ear[$t] = "\x90,0,0";    # 2016feb26 " Р"
  $t=1176; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1177; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1178; $ear[$t] = "\x88,0,1615"; # 2016feb26: "И"
  $psi=1615; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1172; KbLoad();  # 2016feb26
  $t=1179; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1180; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# вследствие (1616 because of) preposition; 2016feb26
  $t=1181; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1182; $ear[$t] = "\x91,0,0";    # 2016feb26 " С"
  $t=1183; $ear[$t] = "\x8B,0,0";    # 2016feb26: "Л"
  $t=1184; $ear[$t] = "\x85,0,0";    # 2016feb26 " Е"
  $t=1185; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1186; $ear[$t] = "\x91,0,0";    # 2016feb26 " С"
  $t=1187; $ear[$t] = "\x92,0,0";    # 2016feb26: "Т"
  $t=1188; $ear[$t] = "\x82,0,0";    # 2016feb26 " В"
  $t=1189; $ear[$t] = "\x88,0,0";    # 2016feb26: "И"
  $t=1190; $ear[$t] = "\x85,0,1616"; # 2016feb26: "Е"
  $psi=1616; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1181; KbLoad();  # 2016feb26
  $t=1191; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1192; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВЫ (1737 you) pronoun; familiar nom. plural; 2016may01
  $t=1193; $ear[$t] = "\x82,0,0";    # 2016feb26 " В"
  $t=1194; $ear[$t] = "\x9B,0,1737"; # 2016feb26: "Ы"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1193; KbLoad();  # 2016feb26
  $t=1195; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1196; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1737 of you) pronoun; familiar gen. plural; 2016may01
  $t=1197; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1198; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1199; $ear[$t] = "\x91,0,1737"; # 2016feb26: "С"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1197; KbLoad();  # 2016feb26
  $t=1200; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1201; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМ (1737 to you) pronoun; familiar dat. plural; 2016may01
  $t=1202; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1203; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1204; $ear[$t] = "\x8C,0,1737"; # 2016feb26: "М"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1202; KbLoad();  # 2016may01
  $t=1205; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1206; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1737 you) pronoun; familiar acc. plural; 2016feb26
  $t=1207; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1208; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1209; $ear[$t] = "\x91,0,1737"; # 2016feb26: "С"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1207; KbLoad();  # 2016feb24
  $t=1210; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1211; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМИ (1737 you) pron; familiar instrumental plural; 2016may01
  $t=1212; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1213; $ear[$t] = "\x80,0,0";    # 2016feb22: "А"
  $t=1214; $ear[$t] = "\x8C,0,0";    # 2016feb26: "М"
  $t=1215; $ear[$t] = "\x88,0,1737"; # 2016feb22: "И"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=1212; KbLoad();  # 2016may01
  $t=1216; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1217; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1737 you) pron; familiar prep. plural; 2016feb26
  $t=1218; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1219; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1220; $ear[$t] = "\x91,0,1737"; # 2016feb26: "С"
  $psi=1737; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=6; $rv=1218; KbLoad();  # 2016feb24
  $t=1221; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1222; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВЫ (1749 you) pronoun; formal nom. sing.; 2016may01
  $t=1223; $ear[$t] = "\x82,0,0";    # 2016feb26 " В"
  $t=1224; $ear[$t] = "\x9B,0,1749"; # 2016feb26: "Ы"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=1223; KbLoad();  # 2016feb26
  $t=1225; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1226; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1749 of you) pronoun; formal gen. sing.; 2016may01
  $t=1227; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1228; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1229; $ear[$t] = "\x91,0,1749"; # 2016feb26: "С"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=1227; KbLoad();  # 2016feb26
  $t=1230; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1231; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМ (1749 to you) pronoun; formal dat. sing.; 2016may01
  $t=1232; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1233; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1234; $ear[$t] = "\x8C,0,1749"; # 2016feb26: "М"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=1232; KbLoad();  # 2016feb26
  $t=1235; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1236; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1749 you) pronoun; formal acc. sing.; 2016may01
  $t=1237; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1238; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1239; $ear[$t] = "\x91,0,1749"; # 2016feb26: "С"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=1237; KbLoad();  # 2016feb26
  $t=1240; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1241; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМИ (1749 you) pron; formal instrumental sing.; 2016may01
  $t=1242; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1243; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1244; $ear[$t] = "\x8C,0,0";    # 2016feb26: "М"
  $t=1245; $ear[$t] = "\x88,0,1749"; # 2016feb26: "И"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=1242; KbLoad();  # 2016feb26
  $t=1246; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1247; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1749 you) pron; formal prep. sing.; 2016may01
  $t=1248; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1249; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1250; $ear[$t] = "\x91,0,1749"; # 2016feb26: "С"
  $psi=1749; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=6; $rv=1248; KbLoad();  # 2016feb26
  $t=1251; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1252; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВЫ (1755 you) pronoun; formal nom. plural.; 2016may01
  $t=1253; $ear[$t] = "\x82,0,0";    # 2016feb26 " В"
  $t=1254; $ear[$t] = "\x9B,0,1755"; # 2016feb26: "Ы"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1253; KbLoad();  # 2016feb26
  $t=1255; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1256; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1755 of you) pronoun; formal gen. plural; 2016may01
  $t=1257; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1258; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1259; $ear[$t] = "\x91,0,1755"; # 2016feb26: "С"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1257; KbLoad();  # 2016feb26
  $t=1260; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1261; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМ (1755 to you) pronoun; formal dat. plural.; 2016may01
  $t=1262; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1263; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1264; $ear[$t] = "\x8C,0,1755"; # 2016feb26: "М"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1262; KbLoad();  # 2016feb26
  $t=1265; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1266; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1755 you) pronoun; formal acc. plural; 2016may01
  $t=1267; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1268; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1269; $ear[$t] = "\x91,0,1755"; # 2016feb26: "С"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1267; KbLoad();  # 2016feb26
  $t=1270; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1271; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАМИ (1755 you) pron; formal instrumental plural; 2016may01
  $t=1272; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1273; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1274; $ear[$t] = "\x8C,0,0";    # 2016feb26: "М"
  $t=1275; $ear[$t] = "\x88,0,1755"; # 2016feb26: "И"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=1272; KbLoad();  # 2016feb26
  $t=1276; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1277; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ВАС (1755 you) pron; formal prep. plural; 2016may01
  $t=1278; $ear[$t] = "\x82,0,0";    # 2016feb26: "В"
  $t=1279; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1280; $ear[$t] = "\x91,0,1755"; # 2016feb26: "С"
  $psi=1755; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=6; $rv=1278; KbLoad();  # 2016feb26
  $t=1281; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1282; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ДА (1432 yes) interjection; 2016may01
  $t=1283; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1284; $ear[$t] = "\x80,0,1432"; # 2016feb26: "А"
  $psi=1432; $hlc="ru"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1283; KbLoad();  # 2016feb26
  $t=1285; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1286; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ДЕЛАТЬ (1830 "to do"); sample verb; 2016may01
  $t=1287; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1288; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1289; $ear[$t] = "\x8B,0,0";    # 2016feb26: "Л"
  $t=1290; $ear[$t] = "\x80,0,1830"; # 2016mar04: "А" stem $prc
  $t=1291; $ear[$t] = "\x92,0,1830"; # 2016mar04: "Т" stem $prc
  $t=1292; $ear[$t] = "\x9C,0,1830"; # 2016feb26: "Ь"
  $psi=1830; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1287; KbLoad();  # 2016feb26
  $t=1293; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1294; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# ДЕЛАЮ (1830 "I do"); sample verb; 2016may01
  $t=1295; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1296; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1297; $ear[$t] = "\x8B,0,0";    # 2016feb26: "Л"
  $t=1298; $ear[$t] = "\x80,0,0";    # 2016feb26: "А"
  $t=1299; $ear[$t] = "\x9E,0,1830"; # 2016feb26: "Ю"
  $psi=1830; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=1295; KbLoad();  # 2016feb26
  $t=1300; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1301; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# 1514 ДЕТИ (children) noun; plural; 2016may01
  $t=1302; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1303; $ear[$t] = "\x85,0,0";    # 2016feb26: "Е"
  $t=1304; $ear[$t] = "\x92,0,0";    # 2016feb26: "Т"
  $t=1305; $ear[$t] = "\x88,0,1514"; # 2016feb26: "И"
  $psi=1514; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1302; KbLoad();  # 2016feb26
  $t=1306; $ear[$t] = " ,0,0";       # 2016feb25: blank space

  $t=1307; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# для (1618 for) preposition; 2016feb26:
  $t=1308; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1309; $ear[$t] = "\x8B,0,0";    # 2016feb26: "Л"
  $t=1310; $ear[$t] = "\x9F,0,1618"; # 2016feb26: "Я"
  $psi=1618; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1308; KbLoad();  # 2016feb26
  $t=1311; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1312; $ear[$t] = "\N{U+0},0,0"; # 2016feb26: Unicode?
# до (1620 until, before) preposition; 2016feb26:
  $t=1313; $ear[$t] = "\x84,0,0";    # 2016feb26: "Д"
  $t=1314; $ear[$t] = "\x8E,0,1620"; # 2016feb26: "О"
  $psi=1620; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1313; KbLoad();  # 2016feb26
  $t=1315; $ear[$t] = " ,0,0";       # 2016feb26: blank space

  $t=1316; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ДУМАТЬ (1840 "to think"); verb; infinitive; 2016may01 
  $t=1317; $ear[$t] = "\x84,0,0";    # 2016feb27: "Д"
  $t=1318; $ear[$t] = "\x93,0,0";    # 2016feb27: "У"
  $t=1319; $ear[$t] = "\x8C,0,0";    # 2016may01: "М" 
  $t=1320; $ear[$t] = "\x80,0,1840"; # 2016mar04: "А" 2016mar04 for $prc
  $t=1321; $ear[$t] = "\x92,0,1840"; # 2016mar04: "Т" 2016mar04 for $prc
  $t=1322; $ear[$t] = "\x9C,0,1840"; # 2016feb27: "Ь"
  $psi=1840; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1317; KbLoad();  # 2016feb27
  $t=1323; $ear[$t] = " ,0,0";       # 2016feb27: blank space

# http://www.nlg-wiki.org/systems/Dushka -- in JavaScript for MSIE
  $t=1324; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ДУШКА (1521 "little soul"); name of a Russian AI; 2016may01
  $t=1325; $ear[$t] = "\x84,0,0";    # 2016feb27: "Д"
  $t=1326; $ear[$t] = "\x93,0,0";    # 2016feb27: "У"
  $t=1327; $ear[$t] = "\x98,0,0";    # 2016feb27: "Ш"
  $t=1328; $ear[$t] = "\x8A,0,0";    # 2016feb27: "К"
  $t=1329; $ear[$t] = "\x80,0,1521"; # 2016feb27: "А"
  $psi=1521; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=1; $rv=1325; KbLoad();  # 2016mar01
  $t=1330; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1331; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ЕСТЬ (1803 "there is"); verb; 2016may01
  $t=1332; $ear[$t] = "\x85,0,0";    # 2016feb27: "Е"
  $t=1333; $ear[$t] = "\x91,0,0";    # 2016feb27: "С"
  $t=1334; $ear[$t] = "\x92,0,0";    # 2016feb27: "Т"
  $t=1335; $ear[$t] = "\x9C,0,1803"; # 2016feb27: "Ь"
  $psi=1803; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1332; KbLoad();  # 2016feb27
  $t=1336; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1337; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# за (1622 behind, beyond, for) preposition; 2016feb27
  $t=1338; $ear[$t] = "\x87,0,0";    # 2016feb27: "З"
  $t=1339; $ear[$t] = "\x80,0,1622"; # 2016feb27: "А"
  $psi=1622; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1338; KbLoad();  # 2016feb25
  $t=1340; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1341; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ЗНАТЬ (1850 "to know"); sample verb; 2016may01
  $t=1342; $ear[$t] = "\x87,0,0";    # 2016feb27: "З"
  $t=1343; $ear[$t] = "\x8D,0,0";    # 2016feb27: "Н"
  $t=1344; $ear[$t] = "\x80,0,1850"; # 2016mar04: "А" stem $prc
  $t=1345; $ear[$t] = "\x92,0,1850"; # 2016mar04: "Т" stem $prc
  $t=1346; $ear[$t] = "\x9C,0,1850"; # 2016feb27: "Ь"
  $psi=1850; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1342; KbLoad();  # 2016feb27
  $t=1347; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1348; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ЗНАЮ (1850 "I know"); sample verb, 1st person sing. 2016may01
  $t=1349; $ear[$t] = "\x87,0,0";    # 2016feb27 "З"
  $t=1350; $ear[$t] = "\x8D,0,0";    # 2016feb27 "Н"
  $t=1351; $ear[$t] = "\x80,0,1850"; # 2016apr01 "А" stem $prc
  $t=1352; $ear[$t] = "\x9E,0,1850"; # 2016feb27 "Ю"
  $psi=1850; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=1349; KbLoad();  # 2016feb27
  $t=1353; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1354; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# И (1350 "and") conjunction; 2016may01
  $t=1355; $ear[$t] = "\x88,0,1350"; # 2016feb27: "И"
  $psi=1350; $hlc="ru"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1355; KbLoad();  # 2016feb27
  $t=1356; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1357; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# из (1624 from) preposition; 2016feb26
  $t=1358; $ear[$t] = "\x88,0,0";    # 2016feb27: "И"
  $t=1359; $ear[$t] = "\x87,0,1624"; # 2016feb27: "З"
  $psi=1624; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1358; KbLoad();  # 2016feb26
  $t=1360; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1361; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# из-за (1625 from behind, because of) preposition; 2016feb27
  $t=1362; $ear[$t] = "\x88,0,0";    # 2016feb27: "И"
  $t=1363; $ear[$t] = "\x87,0,0";    # 2016feb27: "З"
# $t=1363; $ear[$t] = "-,0,0";       # 2016feb27: "-" [ignore]
  $t=1364; $ear[$t] = "\x87,0,0";    # 2016feb27: "З"
  $t=1365; $ear[$t] = "\x80,0,1625"; # 2016feb27: "А"
  $psi=1625; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1362; KbLoad();  # 2016feb27
  $t=1366; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1367; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# из-под (1626 from under) preposition; 2016feb28:
  $t=1368; $ear[$t] = "\x88,0,0";    # 2016feb28: "И"
  $t=1369; $ear[$t] = "\x87,0,0";    # 2016feb28: "З"
# $t=1369; $ear[$t] = "-,0,0";       # 2016feb28: "-" [ignore]
  $t=1370; $ear[$t] = "\x8F,0,0";    # 2016feb28: "П"
  $t=1371; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1372; $ear[$t] = "\x84,0,1626"; # 2016feb28: "Д"
  $psi=1626; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1368; KbLoad();  # 2016feb28
  $t=1373; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1374; $ear[$t] = "\N{U+0},0,0"; # 2016feb27: Unicode?
# ИЛИ (1340 or) conjunction; 2016may01
  $t=1375; $ear[$t] = "\x88,0,0";    # 2016feb27: "И"
  $t=1376; $ear[$t] = "\x8B,0,0";    # 2016feb27: "Л"
  $t=1377; $ear[$t] = "\x88,0,1340"; # 2016feb27: "И"
  $psi=1340; $hlc="ru"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1375; KbLoad();  # 2016feb26
  $t=1378; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1379; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# ИНАЧЕ (1266 "else, otherwise"); conjunction; 2016may01
  $t=1380; $ear[$t] = "\x88,0,0";    # 2016feb27: "И"
  $t=1381; $ear[$t] = "\x8D,0,0";    # 2016feb27: "Н"
  $t=1382; $ear[$t] = "\x80,0,0";    # 2016feb27: "А"
  $t=1383; $ear[$t] = "\x97,0,0";    # 2016feb27: "Ч"
  $t=1384; $ear[$t] = "\x85,0,1266"; # 2016feb28: "Е"
  $psi=1266; $hlc="ru"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1380; KbLoad();  # 2016feb27
  $t=1385; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1386; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# к (1628 towards) preposition; 2016feb28
  $t=1387; $ear[$t] = "\x8A,0,1628"; # 2016feb28: "К"
  $psi=1628; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1387; KbLoad();  # 2016feb28
  $t=1388; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1389; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# ко (1629 towards, up to) preposition; 2016feb28
  $t=1390; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1391; $ear[$t] = "\x8E,0,1629"; # 2016feb28: "О"
  $psi=1629; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1390; KbLoad();  # 2016feb28
  $t=1392; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1393; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# КАК (1209 how) adverb; 2016feb28
  $t=1394; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1395; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1396; $ear[$t] = "\x8A,0,1209"; # 2016feb28: "К"
  $psi=1209; $hlc="ru"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1394; KbLoad();  # 2016feb28
  $t=1397; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1398; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# КОТОРЫЙ (1798 who, which, that) relative pronoun; 2016may01
  $t=1399; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1400; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1401; $ear[$t] = "\x92,0,0";    # 2016feb28: "т"
  $t=1402; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1403; $ear[$t] = "\x90,0,0";    # 2016feb28: "Р"
  $t=1404; $ear[$t] = "\x9B,0,0";    # 2016feb28: "Ы"
  $t=1405; $ear[$t] = "\x89,0,1798"; # 2016feb28: "Й"
  $psi=1798; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=1399; KbLoad();  # 2016feb28
  $t=1406; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1407; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# кроме (1631 except) preposition; 2016feb28
  $t=1408; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1409; $ear[$t] = "\x90,0,0";    # 2016feb28: "Р"
  $t=1410; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1411; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1412; $ear[$t] = "\x85,0,1631"; # 2016feb28: "Е"
  $psi=1631; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1408; KbLoad();  # 2016feb28
  $t=1413; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1414; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# KTO (1791 who) pronoun; 2016feb28
  $t=1415; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1416; $ear[$t] = "\x92,0,0";    # 2016feb28: "Т"
  $t=1417; $ear[$t] = "\x8E,0,1791"; # 2016feb28: "О"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=1; $rv=1415; KbLoad();  # 2016feb28
  $t=1418; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1419; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# КОГО (1791 who) pronoun; 2016may01
  $t=1420; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1421; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1422; $ear[$t] = "\x83,0,0";    # 2016feb28: "Г"
  $t=1423; $ear[$t] = "\x8E,0,1791"; # 2016feb28: "О"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=1420; KbLoad();  # 2016feb28
  $t=1424; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1425; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# КОМУ (1791 to whom) pronoun; 2016may01
  $t=1426; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1427; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1428; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1429; $ear[$t] = "\x93,0,1791"; # 2016feb28: "У"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=1426; KbLoad();  # 2016feb28
  $t=1430; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1431; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# КОГО (1791 whom) pronoun; 2016may01
  $t=1432; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1433; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1434; $ear[$t] = "\x83,0,0";    # 2016feb28: "Г"
  $t=1435; $ear[$t] = "\x8E,0,1791"; # 2016feb28: "О"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=1432; KbLoad();  # 2016feb28
  $t=1436; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1437; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# KEM (1791 whom) instrumental pronoun; 2016feb28
  $t=1438; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1439; $ear[$t] = "\x85,0,0";    # 2016feb28: "Е"
  $t=1440; $ear[$t] = "\x8C,0,1791"; # 2016feb28: "М"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=1438; KbLoad();  # 2016feb28
  $t=1441; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1442; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# KOM (1791 who) prepositional pronoun; 2016feb28
  $t=1443; $ear[$t] = "\x8A,0,0";    # 2016feb28: "К"
  $t=1444; $ear[$t] = "\x8E,0,0";    # 2016feb28: "О"
  $t=1445; $ear[$t] = "\x8C,0,1791"; # 2016feb28: "М"
  $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=6; $rv=1443; KbLoad();  # 2016feb28
  $t=1446; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1447; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# ЛИ (1320 whether) adverb; 2016may01
  $t=1447; $ear[$t] = "\x8B,0,0";    # 2016feb28: "Л"
  $t=1449; $ear[$t] = "\x88,0,1320"; # 2016feb28: "И"
  $psi=1320; $hlc="ru"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1447; KbLoad();  # 2016feb28
  $t=1450; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1451; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# ЛЮДИ (1587 people) noun; plural; 2016may01
  $t=1452; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
  $t=1453; $ear[$t] = "\x8B,0,0";    # 2016feb28: "Л"
  $t=1454; $ear[$t] = "\x9E,0,0";    # 2016feb28: "Ю"
  $t=1455; $ear[$t] = "\x84,0,0";    # 2016feb28: "Д"
  $t=1456; $ear[$t] = "\x88,0,1587"; # 2016feb28: "И"
  $psi=1587; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1452; KbLoad();  # 2016feb28
  $t=1457; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1458; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# между (1633 between) preposition; 2016feb28
  $t=1459; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1460; $ear[$t] = "\x85,0,0";    # 2016feb28: "Е"
  $t=1461; $ear[$t] = "\x86,0,0";    # 2016feb28: "Ж"
  $t=1462; $ear[$t] = "\x84,0,0";    # 2016feb28: "Д"
  $t=1463; $ear[$t] = "\x93,0,1633"; # 2016feb28: "У"
  $psi=1633; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1459; KbLoad();  # 2016feb28
  $t=1464; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1465; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# мимо (1635 past) preposition; 2016feb28
  $t=1466; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1467; $ear[$t] = "\x88,0,0";    # 2016feb28: "И"
  $t=1468; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1469; $ear[$t] = "\x8E,0,1635"; # 2016feb28: "О"
  $psi=1635; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1466; KbLoad();  # 2016feb28
  $t=1470; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1471; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# МЫ (1731 we) pronoun; 2016may01
  $t=1472; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1473; $ear[$t] = "\x9B,0,1731"; # 2016feb28: "Ы"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1472; KbLoad();  # 2016feb28
  $t=1474; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1475; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НАС (1731 us) pronoun, genitive plural; 2016may01
  $t=1476; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1477; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1478; $ear[$t] = "\x91,0,1731"; # 2016feb28: "С"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1476; KbLoad();  # 2016feb28
  $t=1479; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1480; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НАМ (1731 to us) pron. dative plural; 2016may01
  $t=1481; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1482; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1483; $ear[$t] = "\x8C,0,1731"; # 2016feb28: "М"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1481; KbLoad();  # 2016feb28
  $t=1484; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1485; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НАС (1731 us) pron. accusative plural; 2016may01
  $t=1486; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1487; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1488; $ear[$t] = "\x91,0,1731"; # 2016feb28: "С"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1486; KbLoad();  # 2016feb28
  $t=1489; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1490; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НАМИ (1731 us) pron; instrumental plural; 2016may01
  $t=1491; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1492; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1493; $ear[$t] = "\x8C,0,0";    # 2016feb28: "М"
  $t=1494; $ear[$t] = "\x88,0,1731"; # 2016feb28: "И"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=1491; KbLoad();  # 2016feb28
  $t=1495; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1496; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НАС (1731 us) pron. prepositional plural; 2016may01
  $t=1497; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1498; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1499; $ear[$t] = "\x91,0,1731"; # 2016feb28: "С"
  $psi=1731; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1497; KbLoad();  # 2016feb28
  $t=1500; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1501; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# на (1637 onto, to) preposition; 2016feb28
  $t=1502; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1503; $ear[$t] = "\x80,0,1637"; # 2016feb28: "А"
  $psi=1637; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1502; KbLoad();  # 2016feb28
  $t=1504; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1505; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# над (1639 over) preposition; 2016feb28
  $t=1506; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1507; $ear[$t] = "\x80,0,0";    # 2016feb28: "А"
  $t=1508; $ear[$t] = "\x84,0,1639"; # 2016feb28: "Д"
  $psi=1639; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1506; KbLoad();  # 2016feb28
  $t=1509; $ear[$t] = " ,0,0";       # 2016feb28: blank space

 $t=1510; $ear[$t] = "\N{U+0},0,0"; # 2016feb28: Unicode?
# НЕ (1250 not) adverb for negation and machine reasoning; 2016may01
  $t=1511; $ear[$t] = "\x8D,0,0";    # 2016feb28: "Н"
  $t=1512; $ear[$t] = "\x85,0,1250"; # 2016feb28: "Е"
  $psi=1250; $hlc="ru"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1511; KbLoad();  # 2016feb28
  $t=1513; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=1514; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕТ (1427 no) interjection; 2016may01
  $t=1515; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1516; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1517; $ear[$t] = "\x92,0,1427"; # 2016feb29: "Т"
  $psi=1427; $hlc="ru"; $pos=4; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1515; KbLoad();  # 2016feb29
  $t=1518; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1519; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕТУ (1228 is not) adverb; 2016may01
  $t=1520; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1521; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1522; $ear[$t] = "\x92,0,0";    # 2016feb29: "Т"
  $t=1523; $ear[$t] = "\x93,0,1228"; # 2016feb29: "У"
  $psi=1228; $hlc="ru"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1515; KbLoad();  # 2016feb29
  $t=1524; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1525; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИЧЕГО (1760 "nothing"); pronoun; 2016may01
  $t=1526; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1527; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1528; $ear[$t] = "\x97,0,0";    # 2016feb29: "Ч"
  $t=1529; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1530; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1531; $ear[$t] = "\x8E,0,1228"; # 2016feb29: "О"
  $psi=1228; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=1515; KbLoad();  # 2016feb29
  $t=1532; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1533; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# О (1641 about) preposition; 2016feb29
  $t=1534; $ear[$t] = "\x8E,0,1641";    # 2016feb29: "О"
  $psi=1641; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1534; KbLoad();  # 2016feb29
  $t=1535; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1536; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# об (1642 about) preposition; 2016feb29
  $t=1537; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1538; $ear[$t] = "\x81,0,1642"; # 2016feb29: "Б"
  $psi=1642; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1537; KbLoad();  # 2016feb29
  $t=1539; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1540; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# обо (1643 about) (about) 2016feb29:
  $t=1541; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1542; $ear[$t] = "\x81,0,0";    # 2016feb29: "Б"
  $t=1543; $ear[$t] = "\x8E,0,1643"; # 2016feb29: "О"
  $psi=1643; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1541; KbLoad();  # 2016feb29
  $t=1544; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1545; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# около (1645 near, approximately) preposition; 2016feb29
  $t=1546; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1547; $ear[$t] = "\x8A,0,0";    # 2016feb29: "К"
  $t=1548; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1549; $ear[$t] = "\x8B,0,0";    # 2016feb29: "Л"
  $t=1550; $ear[$t] = "\x8E,0,1645"; # 2016feb29: "О"
  $psi=1645; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1546; KbLoad();  # 2016feb29
  $t=1551; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1552; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ОН (1713 he) pronoun; nom. sing. masc. 2016may01
  $t=1553; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1554; $ear[$t] = "\x8D,0,1713"; # 2016feb29: "Н"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=1553; KbLoad();  # 2016feb29
  $t=1555; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1556; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕГО (1713 of him) pronoun; gen. sing. masc. 2016may01
  $t=1557; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1558; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1559; $ear[$t] = "\x8E,0,1713"; # 2016feb29: "О"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=2; $rv=1553; KbLoad();  # 2016feb29
  $t=1560; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1561; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕГО (1713 of him) pronoun; gen. sing. masc. 2016may01
  $t=1562; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1563; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1564; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1565; $ear[$t] = "\x8E,0,1713"; # 2016feb29: "О"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=2; $rv=1553; KbLoad();  # 2016feb29
  $t=1566; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1567; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕМУ (1713 to him) pronoun; dat. sing. masc. 2016may01
  $t=1568; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1569; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1570; $ear[$t] = "\x93,0,1713"; # 2016feb29: "У"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=3; $rv=1568; KbLoad();  # 2016feb29
  $t=1571; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1572; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕМУ (1713 to him) pronoun; dat. sing. masc. 2016may01
  $t=1573; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1574; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1575; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1576; $ear[$t] = "\x93,0,1713"; # 2016feb29: "У"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=3; $rv=1573; KbLoad();  # 2016feb29
  $t=1577; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1578; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕГО (1713 him) pronoun; acc. sing. masc. 2016feb29
  $t=1579; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1580; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1581; $ear[$t] = "\x8E,0,1713"; # 2016feb29: "О"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=4; $rv=1579; KbLoad();  # 2016feb29
  $t=1582; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1583; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕГО (1713 him) pronoun; acc. sing. masc. 2016may01
  $t=1584; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1585; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1586; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1587; $ear[$t] = "\x8E,0,1713"; # 2016feb29: "О"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=4; $rv=1579; KbLoad();  # 2016feb29
  $t=1588; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1589; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИМ (1713 him) pronoun; instrumental sing. masc. 2016may01
  $t=1590; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1591; $ear[$t] = "\x8C,0,1713"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=5; $rv=1590; KbLoad();  # 2016feb29
  $t=1592; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1593; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИМ (1713 him) pronoun; instrumental sing. masc. 2016may01
  $t=1594; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1595; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1596; $ear[$t] = "\x8C,0,1713"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=5; $rv=1594; KbLoad();  # 2016feb29
  $t=1597; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1598; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЁМ (1713 him) pronoun; prepositional sing. masc. 2016may01
  $t=1599; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1600; $ear[$t] = "\xF0,0,0";    # 2016feb29: "Ё"
  $t=1601; $ear[$t] = "\x8C,0,1713"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=6; $rv=1599; KbLoad();  # 2016feb29
  $t=1602; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1603; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕМ (1713 him) pronoun; prepositional sing. masc. 2016may01 
  $t=1604; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1605; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е" (without dots)
  $t=1606; $ear[$t] = "\x8C,0,1713"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=6; $rv=1599; KbLoad();  # 2016feb29
  $t=1607; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1608; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ОНА (1719 she) pronoun; nom. sing. fem. 2016may01 
  $t=1609; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
  $t=1610; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1611; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1612; $ear[$t] = "\x80,0,1719"; # 2016feb29: "А"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=1; $rv=1609; KbLoad();  # 2016feb29
  $t=1613; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1614; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЁ (1719 of her) pronoun; gen. sing. fem. 2016may01 
  $t=1615; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1616; $ear[$t] = "\xF0,0,1719"; # 2016feb29: "Ё"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=2; $rv=1615; KbLoad();  # 2016feb29
  $t=1617; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1618; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЁ (1719 of her) pronoun; gen. sing. fem. 2016may01 
  $t=1619; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1620; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1621; $ear[$t] = "\xF0,0,1719"; # 2016feb29: "Ё"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=2; $rv=1619; KbLoad();  # 2016feb29
  $t=1622; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1623; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЁ (1719 of her) pronoun; gen. sing. fem. 2016may01 
  $t=1624; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1625; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1626; $ear[$t] = "\x85,0,1719"; # 2016feb29: "Е" (no dots)
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=2; $rv=1624; KbLoad();  # 2016feb29
  $t=1627; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1628; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЙ (1719 to her) pronoun; dat. sing. fem. 2016may01 
  $t=1629; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1630; $ear[$t] = "\x89,0,1719"; # 2016feb29: "Й"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=3; $rv=1629; KbLoad();  # 2016feb29
  $t=1631; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1632; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЙ (1719 to her) pronoun; dat. sing. fem. 2016may01 
  $t=1633; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1634; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1635; $ear[$t] = "\x89,0,1719"; # 2016feb29: "Й"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=3; $rv=1633; KbLoad();  # 2016feb29
  $t=1636; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1637; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЁ (1719 her) pronoun; acc. sing. fem. 2016may01 
  $t=1638; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1639; $ear[$t] = "\xF0,0,1719"; # 2016feb29: "Ё"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=4; $rv=1638; KbLoad();  # 2016feb29
  $t=1640; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1641; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЁ (1719 her) pronoun; acc. sing. fem. 2016may01 
  $t=1642; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1643; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1644; $ear[$t] = "\xF0,0,1719"; # 2016feb29: "Ё"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=4; $rv=1642; KbLoad();  # 2016feb29
  $t=1645; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1646; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЕ (1719 her) pronoun; acc. sing. fem. 2016may01 
  $t=1647; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1648; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1649; $ear[$t] = "\x85,0,1719"; # 2016feb29: "Е" (no dots)
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=4; $rv=1647; KbLoad();  # 2016feb29
  $t=1650; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1651; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЙ (1719 her) pronoun; instrumental. sing. fem. 2016may01 
  $t=1652; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1653; $ear[$t] = "\x89,0,1719"; # 2016feb29: "Й"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=5; $rv=1652; KbLoad();  # 2016feb29
  $t=1654; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1655; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЙ (1719 her) pronoun; instrumental. sing. fem. 2016may01 
  $t=1656; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1657; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1658; $ear[$t] = "\x89,0,1719"; # 2016feb29: "Й"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=5; $rv=1656; KbLoad();  # 2016feb29
  $t=1659; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1660; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЮ (1719 her) pronoun; instrumental. sing. fem. 2016may01 
  $t=1661; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1662; $ear[$t] = "\x9E,0,1719"; # 2016feb29: "Ю" (variant)
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=5; $rv=1661; KbLoad();  # 2016feb29
  $t=1663; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1664; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕЮ (1719 her) pronoun; instrumental. sing. fem. 2016may01 
  $t=1665; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1666; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1667; $ear[$t] = "\x9E,0,1719"; # 2016feb29: "Ю" (variant)
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=5; $rv=1665; KbLoad();  # 2016feb29
  $t=1668; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1669; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕЙ (1719 her) pronoun; prepositional sing. fem. 2016may01 
  $t=1670; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1671; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1672; $ear[$t] = "\x89,0,1719"; # 2016feb29: "Й"
  $psi=1719; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=2; $dba=6; $rv=1670; KbLoad();  # 2016feb29
  $t=1673; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1674; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ОНО (1725 it) pronoun; nom. sing. neuter; 2016may01 
  $t=1675; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
  $t=1676; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1677; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1678; $ear[$t] = "\x8E,0,1725"; # 2016feb29: "О"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=1675; KbLoad();  # 2016feb29
  $t=1679; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1680; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕГО (1725 of it) pronoun; gen. sing. neuter; 2016may01 
  $t=1681; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1682; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1683; $ear[$t] = "\x8E,0,1713"; # 2016feb29: "О"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=2; $rv=1681; KbLoad();  # 2016feb29
  $t=1684; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1685; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕГО (1725 of it) pronoun; gen. sing. neuter; 2016may01 
  $t=1686; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1687; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1688; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1689; $ear[$t] = "\x8E,0,1725"; # 2016feb29: "О"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=2; $rv=1686; KbLoad();  # 2016feb29
  $t=1690; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1691; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕМУ (1725 to it) pronoun; dat. sing. neuter; 2016may01 
  $t=1692; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1693; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1694; $ear[$t] = "\x93,0,1713"; # 2016feb29: "У"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=3; $rv=1692; KbLoad();  # 2016feb29
  $t=1695; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1696; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕМУ (1725 to it) pronoun; dat. sing. neuter; 2016may01 
  $t=1697; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1698; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1699; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1700; $ear[$t] = "\x93,0,1725"; # 2016feb29: "У"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=3; $rv=1697; KbLoad();  # 2016feb29
  $t=1701; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1702; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ЕГО (1725 it) pronoun; acc. sing. neuter; 2016may01 
  $t=1703; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1704; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1705; $ear[$t] = "\x8E,0,1725"; # 2016feb29: "О"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=1703; KbLoad();  # 2016feb29
  $t=1706; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1707; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЕГО (1725 it) pronoun; acc. sing. neuter; 2016may01 
  $t=1708; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1709; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е"
  $t=1710; $ear[$t] = "\x83,0,0";    # 2016feb29: "Г"
  $t=1711; $ear[$t] = "\x8E,0,1725"; # 2016feb29: "О"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=1708; KbLoad();  # 2016feb29
  $t=1712; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1713; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИМ (1725 it) pronoun; instrumental sing. neuter; 2016may01 
  $t=1714; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1715; $ear[$t] = "\x8C,0,1725"; # 2016feb29: "М"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=5; $rv=1714; KbLoad();  # 2016feb29
  $t=1716; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1717; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИМ (1725 it) pronoun; instrumental sing. neuter; 2016may01 
  $t=1718; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1719; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1720; $ear[$t] = "\x8C,0,1713"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=5; $rv=1718; KbLoad();  # 2016feb29
  $t=1721; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1722; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЁМ (1725 it) pronoun; prepositional sing. neuter; 2016may01 
  $t=1723; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1724; $ear[$t] = "\xF0,0,0";    # 2016feb29: "Ё"
  $t=1725; $ear[$t] = "\x8C,0,1725"; # 2016feb29: "М"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=6; $rv=1723; KbLoad();  # 2016feb29
  $t=1726; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1727; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НЁМ (1725 it) pronoun; prepositional sing. masc. 2016may01 
  $t=1728; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1729; $ear[$t] = "\x85,0,0";    # 2016feb29: "Е" (without dots)
  $t=1730; $ear[$t] = "\x8C,0,1725"; # 2016feb29: "М"
  $psi=1713; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=6; $rv=1728; KbLoad();  # 2016feb29
  $t=1731; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1732; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ОНИ (1743 they) pronoun; nom. plural; 2016may01 
  $t=1733; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
  $t=1734; $ear[$t] = "\x8E,0,0";    # 2016feb29: "О"
  $t=1735; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н"
  $t=1736; $ear[$t] = "\x88,0,1743"; # 2016feb29: "И"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=1733; KbLoad();  # 2016feb29
  $t=1737; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1738; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИХ (1743 of them) pronoun; gen. plural; 2016may01 
  $t=1739; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1740; $ear[$t] = "\x95,0,1743"; # 2016feb29: "Х"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1739; KbLoad();  # 2016feb29
  $t=1741; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1742; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИХ (1743 of them) pronoun; gen. plural; 2016may01 
  $t=1743; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1744; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1745; $ear[$t] = "\x95,0,1743"; # 2016feb29: "Х"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1743; KbLoad();  # 2016feb29
  $t=1746; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1747; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИМ (1743 to them) pronoun; dative plural; 2016may01 
  $t=1748; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1749; $ear[$t] = "\x8C,0,1725"; # 2016feb29: "М"
  $psi=1725; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1748; KbLoad();  # 2016feb29
  $t=1750; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1751; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИМ (1743 to them) pronoun; instrumental plural; 2016may01 
  $t=1752; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1753; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1754; $ear[$t] = "\x8C,0,1743"; # 2016feb29: "М"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1752; KbLoad();  # 2016feb29
  $t=1755; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1756; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИХ (1743 them) pronoun; acc. plural; 2016may01 
  $t=1757; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1758; $ear[$t] = "\x95,0,1743"; # 2016feb29: "Х"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1757; KbLoad();  # 2016feb29
  $t=1759; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1760; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИХ (1743 them) pronoun; acc. plural; 2016may01 
  $t=1761; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1762; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1763; $ear[$t] = "\x95,0,1743"; # 2016feb29: "Х"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1761; KbLoad();  # 2016feb29
  $t=1764; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1765; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# ИМИ (1743 them) pronoun; instrumental plural; 2016may01 
  $t=1766; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1767; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1768; $ear[$t] = "\x88,0,1743"; # 2016feb29: "И"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=1766; KbLoad();  # 2016feb29
  $t=1769; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1770; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИМИ (1743 them) pronoun; instrumental plural; 2016may01 
  $t=1771; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1772; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1773; $ear[$t] = "\x8C,0,0";    # 2016feb29: "М"
  $t=1774; $ear[$t] = "\x88,0,1743"; # 2016feb29: "И"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=1771; KbLoad();  # 2016feb29
  $t=1775; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1776; $ear[$t] = "\N{U+0},0,0"; # 2016feb29: Unicode?
# НИХ (1743 them) pronoun; prepositional plural; 2016may01
  $t=1777; $ear[$t] = "\x8D,0,0";    # 2016feb29: "Н" (after prep.)
  $t=1778; $ear[$t] = "\x88,0,0";    # 2016feb29: "И"
  $t=1779; $ear[$t] = "\x95,0,1743"; # 2016feb29: "Х"
  $psi=1743; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=6; $rv=1777; KbLoad();  # 2016feb29
  $t=1780; $ear[$t] = " ,0,0";       # 2016feb29: blank space

  $t=1781; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# от (1647 from) preposition; 2016mar01
  $t=1782; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1783; $ear[$t] = "\x92,0,1647"; # 2016mar01: "Т"
  $psi=1647; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1782; KbLoad();  # 2016mar01
  $t=1784; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1785; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# ото (1648 from, away from) preposition; 2016mar01
  $t=1786; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1787; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1788; $ear[$t] = "\x8E,0,1648"; # 2016mar01: "О"
  $psi=1648; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1786; KbLoad();  # 2016mar01
  $t=1789; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1790; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# относительно (1650 concerning) preposition; 2016mar01
  $t=1791; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1792; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1793; $ear[$t] = "\x8D,0,0";    # 2016mar01: "Н"
  $t=1794; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1795; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1796; $ear[$t] = "\x88,0,0";    # 2016mar01: "И"
  $t=1797; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1798; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1799; $ear[$t] = "\x8B,0,0";    # 2016mar01: "Л"
  $t=1800; $ear[$t] = "\x9C,0,0";    # 2016mar01: "Ь"
  $t=1801; $ear[$t] = "\x8D,0,0";    # 2016mar01: "Н"
  $t=1802; $ear[$t] = "\x8E,0,1650"; # 2016mar17: "О"
  $psi=1650; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1791; KbLoad();  # 2016mar01
  $t=1803; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1804; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# перед (1652 in front of, before) preposition; 2016mar01
  $t=1805; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1806; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1807; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1808; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1809; $ear[$t] = "\x84,0,1652"; # 2016mar01: "Д"
  $psi=1652; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1805; KbLoad();  # 2016mar01
  $t=1810; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1811; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# по (1654 along, according to) preposition; 2016mar01
  $t=1812; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1813; $ear[$t] = "\x8E,0,1654"; # 2016mar01: "О"
  $psi=1654; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1812; KbLoad();  # 2016mar01
  $t=1814; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1815; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# под (1656 under) preposition; 2016mar01
  $t=1816; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1817; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1818; $ear[$t] = "\x84,0,1656"; # 2016mar01: "Д"
  $psi=1656; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1816; KbLoad();  # 2016mar01
  $t=1819; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1820; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# подле (1657 alongside of) preposition; 2016mar01
  $t=1821; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1822; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1823; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1824; $ear[$t] = "\x8B,0,0";    # 2016mar01: "Л"
  $t=1825; $ear[$t] = "\x85,0,1657"; # 2016mar01: "Е"
  $psi=1657; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1821; KbLoad();  # 2016mar01
  $t=1826; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1827; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# подобно (1659 like, similar to) preposition; 2016mar01
  $t=1828; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1829; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1830; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1831; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1832; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1833; $ear[$t] = "\x8D,0,0";    # 2016mar01: "Н"
  $t=1834; $ear[$t] = "\x8E,0,1659"; # 2016mar01: "О"
  $psi=1659; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1828; KbLoad();  # 2016mar01
  $t=1835; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1836; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# позади (1661 behind) preposition; 2016mar01
  $t=1837; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1838; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1839; $ear[$t] = "\x87,0,0";    # 2016mar01: "З"
  $t=1840; $ear[$t] = "\x80,0,0";    # 2016mar01: "А"
  $t=1841; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1842; $ear[$t] = "\x88,0,1661"; # 2016mar01: "И"
  $psi=1661; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1837; KbLoad();  # 2016mar01
  $t=1843; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1844; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# помимо (1663 besides, apart from) preposition; 2016mar01
  $t=1845; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1846; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1847; $ear[$t] = "\x8C,0,0";    # 2016mar01: "М"
  $t=1848; $ear[$t] = "\x88,0,0";    # 2016mar01: "И"
  $t=1849; $ear[$t] = "\x8C,0,0";    # 2016mar01: "М"
  $t=1850; $ear[$t] = "\x8E,0,1661"; # 2016mar01: "О"
  $psi=1661; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1845; KbLoad();  # 2016mar01
  $t=1851; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1852; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# ПОНИМАТЬ (1870 "to understand"); sample verb; 2016may01
  $t=1853; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1854; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1855; $ear[$t] = "\x8D,0,0";    # 2016mar01: "Н"
  $t=1856; $ear[$t] = "\x88,0,0";    # 2016mar01: "И"
  $t=1857; $ear[$t] = "\x8C,0,0";    # 2016mar01: "М"
  $t=1858; $ear[$t] = "\x80,0,1870"; # 2016mar04: "А" stem $prc
  $t=1859; $ear[$t] = "\x92,0,1870"; # 2016mar04: "Т" stem $prc
  $t=1860; $ear[$t] = "\x9C,0,1870"; # 2016mar01: "Ь"
  $psi=1870; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1853; KbLoad();  # 2016mar01
  $t=1861; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1862; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# после (1665 after) preposition; 2016mar01
  $t=1863; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1864; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1865; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1866; $ear[$t] = "\x8B,0,0";    # 2016mar01: "Л"
  $t=1867; $ear[$t] = "\x85,0,1665"; # 2016mar01: "Е"
  $psi=1665; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1845; KbLoad();  # 2016mar01
  $t=1868; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1869; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# посреди (1667 in the middle of) preposition; 2016mar01
  $t=1870; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1871; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1872; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1873; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1874; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1875; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1876; $ear[$t] = "\x88,0,1667"; # 2016mar01: "И"
  $psi=1667; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1870; KbLoad();  # 2016mar01
  $t=1877; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1878; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# посредством (1669 by means of) preposition; 2016mar01
  $t=1879; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1880; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1881; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1882; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1883; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1884; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1885; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1886; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1887; $ear[$t] = "\x82,0,0";    # 2016mar01: "В"
  $t=1888; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1889; $ear[$t] = "\x8C,0,1669"; # 2016mar01: "М"
  $psi=1669; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1879; KbLoad();  # 2016mar01
  $t=1890; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1891; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# POCHEMU (1370 "why"); conjunction; 2016mar01
  $t=1892; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1893; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1894; $ear[$t] = "\x97,0,0";    # 2016mar01: "Ч"
  $t=1895; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1896; $ear[$t] = "\x8C,0,0";    # 2016mar01: "М"
  $t=1897; $ear[$t] = "\x93,0,1370"; # 2016mar01: "У"
  $psi=1370; $hlc="ru"; $pos=3; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1892; KbLoad();  # 2016mar01
  $t=1898; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1899; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# прежде (1671 before) preposition; 2016mar01
  $t=1900; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1901; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1902; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1903; $ear[$t] = "\x86,0,0";    # 2016mar01: "Ж"
  $t=1904; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1905; $ear[$t] = "\x85,0,1671"; # 2016mar01: "Е"
  $psi=1671; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1892; KbLoad();  # 2016mar01
  $t=1906; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1907; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# при (1673 at the time of) preposition; 2016mar01
  $t=1908; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1909; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1910; $ear[$t] = "\x88,0,1673"; # 2016mar01: "И"
  $psi=1673; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1908; KbLoad();  # 2016mar01
  $t=1911; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1912; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# про (1675 about) preposition; 2016mar01
  $t=1913; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
  $t=1914; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1915; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1916; $ear[$t] = "\x8E,0,1675"; # 2016mar01: "О"
  $psi=1675; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1913; KbLoad();  # 2016mar01
  $t=1917; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1918; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# против (1677 against) preposition; 2016mar01
  $t=1919; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1920; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1921; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1922; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1923; $ear[$t] = "\x88,0,0";    # 2016mar01: "И"
  $t=1924; $ear[$t] = "\x82,0,1677"; # 2016mar01: "В"
  $psi=1677; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1919; KbLoad();  # 2016mar01
  $t=1925; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1926; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# путём (1679 by means of) preposition; 2016mar01
  $t=1927; $ear[$t] = "\x8F,0,0";    # 2016mar01: "П"
  $t=1928; $ear[$t] = "\x93,0,0";    # 2016mar01: "У"
  $t=1929; $ear[$t] = "\x92,0,0";    # 2016mar01: "Т"
  $t=1930; $ear[$t] = "\xF0,0,0";    # 2016mar01: "Ё"
  $t=1931; $ear[$t] = "\x8C,0,1679"; # 2016mar01: "М"
  $psi=1679; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1927; KbLoad();  # 2016mar01
  $t=1932; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1933; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# ради (1681 for the sake of) preposition; 2016mar01
  $t=1934; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1935; $ear[$t] = "\x80,0,0";    # 2016mar01: "А"
  $t=1936; $ear[$t] = "\x84,0,0";    # 2016mar01: "Д"
  $t=1937; $ear[$t] = "\x88,0,1681"; # 2016mar01: "И"
  $psi=1681; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1934; KbLoad();  # 2016mar01
  $t=1938; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1939; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# РОБОТ (1571 "robot"); noun; nominative; 2016may01
  $t=1940; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1941; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1942; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1943; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=1944; $ear[$t] = "\x92,0,1571"; # 2016mar01: "Т"
  $psi=1571; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=1325; KbLoad();  # 2016feb27
  $t=1945; $ear[$t] = " ,0,0";       # 2016feb27: blank space

  $t=1946; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# с (1683 with, from, since) preposition; 2016mar01
  $t=1947; $ear[$t] = "\x91,0,1683"; # 2016mar01: "С"
  $psi=1683; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1947; KbLoad();  # 2016mar01
  $t=1948; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1949; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# со (1684 with, from, since) preposition; 2016mar01
  $t=1950; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1951; $ear[$t] = "\x8E,0,1684"; # 2016mar01: "О"
  $psi=1684; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1950; KbLoad();  # 2016mar01
  $t=1952; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1953; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# сверх (1686 on top of, over and above) preposition; 2016mar01
  $t=1954; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1955; $ear[$t] = "\x82,0,0";    # 2016mar01: "В"
  $t=1956; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1957; $ear[$t] = "\x90,0,0";    # 2016mar01: "Р"
  $t=1958; $ear[$t] = "\x95,0,1686"; # 2016mar01: "Х"
  $psi=1686; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1954; KbLoad();  # 2016mar01
  $t=1959; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1960; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# свыше (1688 over, more than) preposition; 2016mar01
  $t=1961; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1962; $ear[$t] = "\x82,0,0";    # 2016mar01: "В"
  $t=1963; $ear[$t] = "\x9B,0,0";    # 2016mar01: "Ы"
  $t=1964; $ear[$t] = "\x98,0,0";    # 2016mar01: "Ш"
  $t=1965; $ear[$t] = "\x85,0,1688"; # 2016mar01: "Е"
  $psi=1688; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=1961; KbLoad();  # 2016mar01
  $t=1966; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1967; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себя  (1777 self) genetive singular reflexive pronoun; 2016mar02
  $t=1968; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1969; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1970; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1971; $ear[$t] = "\x9F,0,1777"; # 2016mar02: "Я"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=1968; KbLoad();  # 2016mar01
  $t=1972; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1973; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себя  (1777 self) genetive plural reflexive pronoun; 2016mar01
  $t=1974; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1975; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1976; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1977; $ear[$t] = "\x9F,0,1777"; # 2016mar02: "Я"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=1974; KbLoad();  # 2016mar01
  $t=1978; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1979; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себе  (1777 self) dative singular reflexive pronoun; 2016mar01
  $t=1980; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1981; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1982; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1983; $ear[$t] = "\x85,0,1777"; # 2016mar02: "Е"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=1980; KbLoad();  # 2016mar01
  $t=1984; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1985; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себе  (1777 self) dative plural reflexive pronoun; 2016mar01
  $t=1986; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1987; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1988; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1989; $ear[$t] = "\x85,0,1777"; # 2016mar02: "Е"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=1986; KbLoad();  # 2016feb28
  $t=1990; $ear[$t] = " ,0,0";       # 2016fmar01: blank space

  $t=1991; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себя  (1777 self) accusative singular reflexive pronoun; 2016mar01
  $t=1992; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1993; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=1994; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=1995; $ear[$t] = "\x9F,0,1777"; # 2016mar02: "Я"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=1992; KbLoad();  # 2016feb28
  $t=1996; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=1997; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себя  (1777 self) accusative plural reflexive pronoun; 2016mar01
  $t=1998; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=1999; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=2000; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2001; $ear[$t] = "\x9F,0,1777"; # 2016mar02: "Я"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=1998; KbLoad();  # 2016mar01
  $t=2002; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2003; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# собой  (1777 self) instrumental singular reflexive pronoun; 2016mar01
  $t=2004; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2005; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2006; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2007; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2008; $ear[$t] = "\x89,0,1777"; # 2016mar02: "Й"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2004; KbLoad();  # 2016mar01
  $t=2009; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2010; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# собой  (1777 self) instrumental plural reflexive pronoun; 2016mar01
  $t=2011; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2012; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2013; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2014; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2015; $ear[$t] = "\x89,0,1777"; # 2016mar02: "Й"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=2011; KbLoad();  # 2016mar01
  $t=2016; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2017; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# собою  (1777 self) instrumental singular reflexive pronoun; 2016mar01 
  $t=2018; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2019; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2020; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2021; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2022; $ear[$t] = "\x9E,0,1777"; # 2016mar01: "Ю" alternative 
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2018; KbLoad();  # 2016mar01
  $t=2023; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2024; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# собою  (1777 self) instrumental plural reflexive pronoun; 2016mar01 
  $t=2025; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2026; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2027; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2027; $ear[$t] = "\x8E,0,0";    # 2016mar01: "О"
  $t=2029; $ear[$t] = "\x9E,0,1777"; # 2016mar01: "Ю" alternative
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=2025; KbLoad();  # 2016mar01
  $t=2030; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2031; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себе  (1777 self) prepositional singular reflexive pronoun; 2016mar01
  $t=2032; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2033; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=2034; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2035; $ear[$t] = "\x85,0,1777"; # 2016mar02: "Е"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=6; $rv=2032; KbLoad();  # 2016mar01
  $t=2036; $ear[$t] = " ,0,0";       # 2016mar01: blank space

  $t=2037; $ear[$t] = "\N{U+0},0,0"; # 2016mar01: Unicode?
# себе  (1777 self) prepositional plural reflexive pronoun; 2016mar01
  $t=2038; $ear[$t] = "\x91,0,0";    # 2016mar01: "С"
  $t=2039; $ear[$t] = "\x85,0,0";    # 2016mar01: "Е"
  $t=2040; $ear[$t] = "\x81,0,0";    # 2016mar01: "Б"
  $t=2041; $ear[$t] = "\x85,0,1777"; # 2016mar02: "Е"
  $psi=1777; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=6; $rv=2038; KbLoad();  # 2016feb28
  $t=2042; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=2043; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# сквозь (1690 through) preposition; 2016mar02
  $t=2044; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2045; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2046; $ear[$t] = "\x82,0,0";    # 2016mar02: "В"
  $t=2047; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2048; $ear[$t] = "\x87,0,0";    # 2016mar02: "З"
  $t=2049; $ear[$t] = "\x9C,0,1690"; # 2016mar02: "Ь"
  $psi=1690; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2044; KbLoad();  # 2016mar02
  $t=2050; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2051; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# сколько (1780  how much)  -- pronoun; 2016mar02
  $t=2052; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2053; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2054; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2055; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2056; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2057; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2058; $ear[$t] = "\x8E,0,1780"; # 2016mar02: "О"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=1; $rv=2052; KbLoad();  # 2016mar02
  $t=2059; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2060; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# скольких (1780 how much)  -- pronoun; genitive; 2016mar02
  $t=2061; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2062; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2063; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2064; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2065; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2066; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2067; $ear[$t] = "\x88,0,0";    # 2016mar02: "И"
  $t=2068; $ear[$t] = "\x95,0,1780"; # 2016mar02: "Х"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=2; $rv=2061; KbLoad();  # 2016mar02
  $t=2069; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2070; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# скольким (1780 how much)  -- pronoun; dative; 2016mar02
  $t=2071; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2072; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2073; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2074; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2075; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2076; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2077; $ear[$t] = "\x88,0,0";    # 2016mar02: "И"
  $t=2078; $ear[$t] = "\x8C,0,1780"; # 2016mar02: "М"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=3; $rv=2071; KbLoad();  # 2016mar02
  $t=2079; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2080; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# сколько (1780  how much)  -- pronoun; accusative; 2016mar02
  $t=2081; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2082; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2083; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2084; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2085; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2086; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2087; $ear[$t] = "\x8E,0,1780"; # 2016mar02: "О"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=4; $rv=2081; KbLoad();  # 2016mar02
  $t=2088; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2089; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# сколькими (1780 how much)  -- pronoun; instrumental; 2016mar02
  $t=2090; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2091; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2092; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2093; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2094; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2095; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2096; $ear[$t] = "\x88,0,0";    # 2016mar02: "И"
  $t=2097; $ear[$t] = "\x8C,0,0";    # 2016mar02: "М"
  $t=2098; $ear[$t] = "\x88,0,1780"; # 2016mar02: "И"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=5; $rv=2090; KbLoad();  # 2016mar02
  $t=2099; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2100; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# скольких (1780 how much)  -- pronoun; prepositional; 2016mar02
  $t=2101; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2102; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2103; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2104; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2105; $ear[$t] = "\x9C,0,0";    # 2016mar02: "Ь"
  $t=2106; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2107; $ear[$t] = "\x88,0,0";    # 2016mar02: "И"
  $t=2108; $ear[$t] = "\x95,0,1780"; # 2016mar02: "Х"
  $psi=1780; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=2; $mfn=0; $dba=6; $rv=2101; KbLoad();  # 2016mar02
  $t=2109; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2110; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# согласно (1692 in accordance with) preposition; 2016mar02
  $t=2111; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2112; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2113; $ear[$t] = "\x83,0,0";    # 2016mar02: "Г"
  $t=2114; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2115; $ear[$t] = "\x80,0,0";    # 2016mar02: "А"
  $t=2116; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2117; $ear[$t] = "\x8D,0,0";    # 2016mar02: "Н"
  $t=2118; $ear[$t] = "\x8E,0,1692"; # 2016mar02: "О"
  $psi=1692; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2111; KbLoad();  # 2016mar02
  $t=2119; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2120; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# спустя (1693 after) preposition; 2016mar02
  $t=2121; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2122; $ear[$t] = "\x8F,0,0";    # 2016mar02: "П"
  $t=2123; $ear[$t] = "\x93,0,0";    # 2016mar02: "У"
  $t=2124; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2125; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2126; $ear[$t] = "\x9F,0,1693"; # 2016mar02: "Я"
  $psi=1693; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2121; KbLoad();  # 2016mar02
  $t=2127; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2128; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# среди (1695 between) preposition; 2016mar02
  $t=2129; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2130; $ear[$t] = "\x90,0,0";    # 2016mar02: "Р"
  $t=2131; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2132; $ear[$t] = "\x84,0,0";    # 2016mar02: "Д"
  $t=2133; $ear[$t] = "\x88,0,1695"; # 2016mar02: "И"
  $psi=1695; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2129; KbLoad();  # 2016mar02
  $t=2134; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2135; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# СТУДЕНТ (1561 student) noun; a class for InFerence(); 2016mar02
  $t=2136; $ear[$t] = "\x91,0,0";    # 2016mar02: "С"
  $t=2137; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2138; $ear[$t] = "\x93,0,0";    # 2016mar02: "У"
  $t=2139; $ear[$t] = "\x84,0,0";    # 2016mar02: "Д"
  $t=2140; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2141; $ear[$t] = "\x8D,0,0";    # 2016mar02: "Н"
  $t=2142; $ear[$t] = "\x92,0,1561"; # 2016mar02: "Т"
  $psi=1561; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=2136; KbLoad();  # 2016mar02
  $t=2143; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2144; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТАКОЕ (1170 "such"); adjective; for questions; 2016may01
  $t=2145; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2146; $ear[$t] = "\x80,0,0";    # 2016mar02: "А"
  $t=2147; $ear[$t] = "\x8A,0,0";    # 2016mar02: "К"
  $t=2148; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2149; $ear[$t] = "\x85,0,1170"; # 2016mar02: "Е"
  $psi=1170; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=2145; KbLoad();  # 2016mar02
  $t=2150; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2151; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТРЕБОВАТЬ (1880 "to demand"); verb; infinitive; 2016may01
  $t=2152; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2153; $ear[$t] = "\x90,0,0";    # 2016mar02: "Р"
  $t=2154; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2155; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2156; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2157; $ear[$t] = "\x82,0,0";    # 2016mar02: "В"
  $t=2158; $ear[$t] = "\x80,0,0";    # 2016mar02: "А"
  $t=2159; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2160; $ear[$t] = "\x9C,0,1880"; # 2016mar02: "Ь"
  $psi=1880; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2152; KbLoad();  # 2016mar02
  $t=2161; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2162; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТЫ (1707 "you") pronoun; familiar; nom. sing. 2016mar02
  $t=2163; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2164; $ear[$t] = "\x9B,0,1707"; # 2016mar02: "Ы"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=2163; KbLoad();  # 2016apr01
  $t=2165; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2166; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТЕБЯ (1707 "of you") pronoun; familiar; gen. sing. 2016mar02
  $t=2167; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2168; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2169; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2170; $ear[$t] = "\x9F,0,1707"; # 2016mar02: "Я"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=2167; KbLoad();  # 2016mar02
  $t=2171; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2172; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТЕБЕ (1707 "to you") pronoun; familiar; dat. sing. 4jan2012
  $t=2173; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2174; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2175; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2176; $ear[$t] = "\x85,0,1707"; # 2016mar02: "Е"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=2173; KbLoad();  # 2016mar02
  $t=2177; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2178; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТЕБЯ (1707 "you") pronoun; familiar; acc. sing. 2016mar02
  $t=2179; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2180; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2181; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2182; $ear[$t] = "\x9F,0,1707"; # 2016mar02: "Я"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=2179; KbLoad();  # 2016mar02
  $t=2183; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2184; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТОБОЙ (1707 "you") pronoun; familiar; instrumental sing. 2016mar02
  $t=2185; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2186; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2187; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2188; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2189; $ear[$t] = "\x89,0,1707"; # 2016mar02: "Й"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2185; KbLoad();  # 2016mar02
  $t=2190; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2191; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТОБОЮ (1707 "you") pronoun; familiar; instrumental sing. 2016mar02
  $t=2192; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2193; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2194; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2195; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2196; $ear[$t] = "\x9E,0,1707"; # 2016mar02: "Ю" variant
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2192; KbLoad();  # 2016mar02
  $t=2197; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2198; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ТЕБЕ (1707 "you") pronoun; familiar; prep. sing. 2016mar02
  $t=2199; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2200; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2201; $ear[$t] = "\x81,0,0";    # 2016mar02: "Б"
  $t=2202; $ear[$t] = "\x85,0,1707"; # 2016mar02: "Е"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=6; $rv=2199; KbLoad();  # 2016mar02
  $t=2203; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2204; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# У (1697 at, by) preposition; 2016mar02:
  $t=2205; $ear[$t] = "\x93,0,1697"; # 2016feb28: "У"
  $psi=1697; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2205; KbLoad();  # 2016feb28
  $t=2206; $ear[$t] = " ,0,0";       # 2016feb28: blank space

  $t=2207; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ХОЧУ (1816 "want") verb; 1st pers. sing. for FreeWill(); 2016mar02
  $t=2208; $ear[$t] = "\x95,0,0";    # 2016mar02: "Х"
  $t=2209; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2210; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2211; $ear[$t] = "\x93,0,1816"; # 2016mar02: "У"
  $psi=1816; $hlc="ru"; $pos=8; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=2199; KbLoad();  # 2016mar02
  $t=2212; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2213; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ЧЕЛОВЕК (1581 "human being") noun; nom. sing. 2016mar02
  $t=2214; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2215; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2216; $ear[$t] = "\x8B,0,0";    # 2016mar02: "Л"
  $t=2217; $ear[$t] = "\x8E,0,0";    # 2016mar02: "О"
  $t=2218; $ear[$t] = "\x82,0,0";    # 2016mar02: "В"
  $t=2219; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2220; $ear[$t] = "\x8A,0,1581"; # 2016mar02: "К"
  $psi=1581; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=1; $dba=1; $rv=2214; KbLoad();  # 2016mar02
  $t=2221; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2222; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# через (1699 across, through) preposition; 2016mar02
  $t=2223; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2224; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2225; $ear[$t] = "\x90,0,0";    # 2016mar02: "Р"
  $t=2226; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2227; $ear[$t] = "\x87,0,1699"; # 2016mar02: "З"
  $psi=1699; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2123; KbLoad();  # 2016mar02
  $t=2228; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2229; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ЧТО (1310 that) conjunction; 2016mar02
  $t=2230; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2231; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2232; $ear[$t] = "\x8E,0,1310"; # 2016mar02: "О"
  $psi=1310; $hlc="ru"; $pos=6; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=0; $mfn=0; $dba=0; $rv=2230; KbLoad();  # 2016mar02
  $t=2233; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2234; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ЧТО (1781 what) pronoun; nominative singular; 2016mar02
  $t=2235; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2236; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2237; $ear[$t] = "\x8E,0,1781"; # 2016mar02: "О"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=2235; KbLoad();  # 2016mar02
  $t=2238; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2239; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# чего (1781 what) pronoun; genitive singular; 2016mar02
  $t=2240; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2241; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2242; $ear[$t] = "\x83,0,0";    # 2016mar02: "Г"
  $t=2243; $ear[$t] = "\x8E,0,1781"; # 2016mar02: "О"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=2; $rv=2240; KbLoad();  # 2016mar02
  $t=2244; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2245; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# чему (1781 what) pronoun; dative singular; 2016mar02
  $t=2246; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2247; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2248; $ear[$t] = "\x8C,0,0";    # 2016mar02: "М"
  $t=2249; $ear[$t] = "\x93,0,1781"; # 2016mar02: "У"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=3; $rv=2246; KbLoad();  # 2016mar02
  $t=2250; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2251; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# ЧТО (1781 what) pronoun; accusative singular; 2016mar02
  $t=2252; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2253; $ear[$t] = "\x92,0,0";    # 2016mar02: "Т"
  $t=2254; $ear[$t] = "\x8E,0,1781"; # 2016mar02: "О"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=2252; KbLoad();  # 2016mar02
  $t=2255; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2256; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# чем (1781 what) pronoun; instrumental singular; 2016mar02
  $t=2257; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2258; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е"
  $t=2259; $ear[$t] = "\x8C,0,1781"; # 2016mar02: "М"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=5; $rv=2257; KbLoad();  # 2016mar02
  $t=2260; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2261; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# чём (1781 what) pronoun; prepositional singular; 2016mar02
  $t=2262; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2263; $ear[$t] = "\xF0,0,0";    # 2016mar02: "Ё"
  $t=2264; $ear[$t] = "\x8C,0,1781"; # 2016mar02: "М"
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=6; $rv=2262; KbLoad();  # 2016mar02
  $t=2265; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2266; $ear[$t] = "\N{U+0},0,0"; # 2016mar02: Unicode?
# чем (1781 what) pronoun; prepositional singular; 2016mar02
  $t=2267; $ear[$t] = "\x97,0,0";    # 2016mar02: "Ч"
  $t=2268; $ear[$t] = "\x85,0,0";    # 2016mar02: "Е" no-dots variant
  $t=2269; $ear[$t] = "\x8C,0,1781"; # 2016mar02: "М" 
  $psi=1781; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=6; $rv=2267; KbLoad();  # 2016mar02
  $t=2270; $ear[$t] = " ,0,0";       # 2016mar02: blank space

  $t=2271; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# это (1747 this) pronoun; nominative singular; 2016mar06
  $t=2272; $ear[$t] = "\x9d,0,0";    # 2016mar06: "Э"
  $t=2273; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2274; $ear[$t] = "\x8E,0,1747"; # 2016mar06: "О"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=1; $rv=2272; KbLoad();  # 2016mar06
  $t=2275; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2276; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# этого (1747 this) pronoun; genitive singular; 2016mar06
  $t=2277; $ear[$t] = "\x9D,0,0";    # 2016mar06: "Э"
  $t=2278; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2279; $ear[$t] = "\x8E,0,0";    # 2016mar06: "О"
  $t=2280; $ear[$t] = "\x83,0,0";    # 2016mar06: "Г"
  $t=2281; $ear[$t] = "\x8E,0,1747"; # 2016mar06: "О"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=2; $rv=2277; KbLoad();  # 2016mar06
  $t=2282; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2283; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# этому (1747 this) pronoun; dative singular; 2016mar06
  $t=2284; $ear[$t] = "\x9D,0,0";    # 2016mar06: "Э"
  $t=2285; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2286; $ear[$t] = "\x8E,0,0";    # 2016mar06: "О"
  $t=2287; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2288; $ear[$t] = "\x93,0,1747"; # 2016mar06: "У"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=3; $rv=2284; KbLoad();  # 2016mar06
  $t=2289; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2290; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# это (1747 this) pronoun; accusative singular; 2016mar06
  $t=2291; $ear[$t] = "\x9d,0,0";    # 2016mar06: "Э"
  $t=2292; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2293; $ear[$t] = "\x8E,0,1747"; # 2016mar06: "О"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=2291; KbLoad();  # 2016mar06
  $t=2294; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2295; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# этим (1747 this) pronoun; instrumental singular; 2016mar06
  $t=2296; $ear[$t] = "\x9D,0,0";    # 2016mar06: "Э"
  $t=2297; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2298; $ear[$t] = "\x88,0,0";    # 2016mar06: "И"
  $t=2299; $ear[$t] = "\x8C,0,1747"; # 2016mar06: "М"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=5; $rv=2296; KbLoad();  # 2016mar06
  $t=2300; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2301; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# этом (1747 this) pronoun; prepositional singular; 2016mar06
  $t=2302; $ear[$t] = "\x9D,0,0";    # 2016mar06: "Э"
  $t=2303; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2304; $ear[$t] = "\x8E,0,0";    # 2016mar06: "О"
  $t=2305; $ear[$t] = "\x8C,0,1747"; # 2016mar06: "М"
  $psi=1747; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=6; $rv=2302; KbLoad();  # 2016mar06
  $t=2306; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2307; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# "Я" (1701 "I") personal pronoun; nominative; 2016feb25
  $t=2308; $ear[$t] = "\x9F,0,1701"; # 2016mar06: "Я"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=1; $rv=2308; KbLoad();  # 2016mar06
  $t=2309; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2310; $ear[$t] = "\N{U+0},0,0"; # 2016mar62: Unicode?
# МЕНЯ (1701 "of me") pronoun; familiar; gen. sing. 2016mar02
  $t=2311; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2312; $ear[$t] = "\x85,0,0";    # 2016mar06: "Е"
  $t=2313; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2314; $ear[$t] = "\x9F,0,1701"; # 2016mar06: "Я"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=2; $rv=2311; KbLoad();  # 2016mar06
  $t=2315; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2316; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# МНЕ (1701 "to me") pronoun; familiar; dat. sing. 2016mar02
  $t=2317; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2318; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н" 2016mar06
  $t=2319; $ear[$t] = "\x85,0,1701"; # 2016mar06: "Е"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=3; $rv=2317; KbLoad();  # 2016mar02
  $t=2320; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2321; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# МЕНЯ (1701 "me") pronoun; familiar; acc. sing. 2016mar02
  $t=2322; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2323; $ear[$t] = "\x85,0,0";    # 2016mar06: "Е"
  $t=2324; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2325; $ear[$t] = "\x9F,0,1701"; # 2016mar06: "Я"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=2322; KbLoad();  # 2016mar06
  $t=2326; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2327; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# МНОЙ (1701 "me") pronoun; familiar; instr. sing. 2016mar02
  $t=2328; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2329; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2330; $ear[$t] = "\x8E,0,0";    # 2016mar06: "О"
  $t=2331; $ear[$t] = "\x89,0,1701"; # 2016mar06: "Й"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2328; KbLoad();  # 2016mar02
  $t=2332; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2333; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# МНОЮ (1701 "me") pronoun; familiar; instr. sing. 2016mar02
  $t=2334; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2335; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2336; $ear[$t] = "\x8E,0,0";    # 2016mar06: "О"
  $t=2337; $ear[$t] = "\x9E,0,1701"; # 2016mar06: "Ю" variant
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=5; $rv=2334; KbLoad();  # 2016mar06
  $t=2338; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2339; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# МНЕ (1701 "me") pronoun; familiar; prep. sing. 2016mar02
  $t=2340; $ear[$t] = "\x8C,0,0";    # 2016mar06: "М"
  $t=2341; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2342; $ear[$t] = "\x85,0,1701"; # 2016mar06: "Е"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=6; $rv=2340; KbLoad();  # 2016mar02
  $t=2343; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2344; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# СТУДЕНТЫ (1561 students) noun; a class for InFerence(); 2016mar02
  $t=2345; $ear[$t] = "\x91,0,0";    # 2016mar06: "С"
  $t=2346; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2347; $ear[$t] = "\x93,0,0";    # 2016mar06: "У"
  $t=2348; $ear[$t] = "\x84,0,0";    # 2016mar06: "Д"
  $t=2349; $ear[$t] = "\x85,0,0";    # 2016mar06: "Е"
  $t=2350; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2351; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2352; $ear[$t] = "\x9B,0,1561"; # 2016mar06: "Ы"
  $psi=1561; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=2360; $seq=1825; 
  $num=2; $mfn=2; $dba=1; $rv=2345; KbLoad();  # 2016mar07
  $t=2353; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2354; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# ЧИТАЮТ (1825 "they read"); verb; 3rd pers. plural; 2016mar02
  $t=2355; $ear[$t] = "\x97,0,0";    # 2016mar06: "Ч"
  $t=2356; $ear[$t] = "\x88,0,0";    # 2016mar06: "И"
  $t=2357; $ear[$t] = "\x92,0,0";    # 2016mar06: "Т"
  $t=2358; $ear[$t] = "\x80,0,1825"; # 2016mar06: "А" stem $prc
  $t=2359; $ear[$t] = "\x9E,0,1825"; # 2016mar06: "Ю" stem $prc
  $t=2360; $ear[$t] = "\x92,0,1825"; # 2016mar06: "Т"
  $psi=1825; $hlc="ru"; $pos=8; $jux=0; $pre=1561; $tkb=2367; $seq=1540; 
  $num=2; $mfn=0; $dba=3; $rv=2355; KbLoad();  # 2016mar06
  $t=2361; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2362; $ear[$t] = "\N{U+0},0,0"; # 2016mar06: Unicode?
# КНИГИ (1540 books) noun, acc. plural; 2016mar06
  $t=2363; $ear[$t] = "\x8A,0,0";    # 2016mar06: "К"
  $t=2364; $ear[$t] = "\x8D,0,0";    # 2016mar06: "Н"
  $t=2365; $ear[$t] = "\x88,0,0";    # 2016mar06: "И"
  $t=2366; $ear[$t] = "\x83,0,0";    # 2016mar06: "Г"
  $t=2367; $ear[$t] = "\x88,0,1540"; # 2016mar06: "И"
  $psi=1540; $hlc="ru"; $pos=5; $jux=0; $pre=1825; $tkb=0; $seq=0; 
  $num=2; $mfn=2; $dba=4; $rv=2363; KbLoad();  # 2016mar02
  $t=2368; $ear[$t] = " ,0,0";       # 2016mar06: blank space

  $t=2369; $ear[$t] = "\N{U+0},0,0"; # 2016may21: Unicode?
# "Я" (1701 "I") personal pronoun; nominative; 2016may21
  $t=2370; $ear[$t] = "\x9F,0,1701"; # 2016may21: "Я"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=2380; $seq=1820; 
  $num=1; $mfn=0; $dba=1; $rv=2370; KbLoad();  # 2016may21
  $t=2371; $ear[$t] = " ,0,0";       # 2016may21: blank space

 $t=2372; $ear[$t] = "\N{U+0},0,0"; # 2016may21: Unicode?
# НЕ (1250 not) adverb for negation and machine reasoning; 2016may21
  $t=2373; $ear[$t] = "\x8D,0,0";    # 2016may21: "Н"
  $t=2374; $ear[$t] = "\x85,0,1250"; # 2016may21: "Е"
  $psi=1250; $hlc="ru"; $pos=2; $jux=0; $pre=0; $tkb=0; $seq=1820; 
  $num=0; $mfn=0; $dba=0; $rv=2373; KbLoad();  # 2016may21
  $t=2375; $ear[$t] = " ,0,0";       # 2016may21: blank space

  $t=2376; $ear[$t] = "\N{U+0},0,0"; # 2016may21: Unicode?
# ВИЖУ (1820 "I see"); verb for VisRecog; 2016may01
  $t=2377; $ear[$t] = "\x82,0,0";    # 2016may21: "В"
  $t=2378; $ear[$t] = "\x88,0,0";    # 2016may21 " И"
  $t=2379; $ear[$t] = "\x86,0,0";    # 2016may21: "Ж"
  $t=2380; $ear[$t] = "\x93,0,1820"; # 2016may21: "У"
  $psi=1820; $hlc="ru"; $pos=8; $jux=1250; $pre=1701; $tkb=2388; $seq=1760; 
  $num=1; $mfn=0; $dba=1; $rv=2377; KbLoad();  # 2016may21
  $t=3281; $ear[$t] = " ,0,0";       # 2016may21: blank space

  $t=2382; $ear[$t] = "\N{U+0},0,0"; # 2016may21: Unicode?
# НИЧЕГО (1760 "nothing"); pronoun; 2016may21
  $t=2383; $ear[$t] = "\x8D,0,0";    # 2016may21: "Н"
  $t=2384; $ear[$t] = "\x88,0,0";    # 2016may21: "И"
  $t=2385; $ear[$t] = "\x97,0,0";    # 2016may21: "Ч"
  $t=2386; $ear[$t] = "\x85,0,0";    # 2016may21: "Е"
  $t=2387; $ear[$t] = "\x83,0,0";    # 2016may21: "Г"
  $t=2388; $ear[$t] = "\x8E,0,1228"; # 2016may21: "О"
  $psi=1228; $hlc="ru"; $pos=7; $jux=0; $pre=1820; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=2383; KbLoad();  # 2016feb29
  $t=2389; $ear[$t] = " ,0,0";       # 2016may21: blank space

  $t=2390; $ear[$t] = "\N{U+0},0,0"; # 2016may21: Unicode?
# "Я" (1701 "I") personal pronoun; nominative; 2016may21
  $t=2391; $ear[$t] = "\x9F,0,1701"; # 2016may21: "Я"
  $psi=1701; $hlc="ru"; $pos=7; $jux=0; $pre=0; $tkb=2400; $seq=1870; 
  $num=1; $mfn=0; $dba=1; $rv=2391; KbLoad();  # 2016may21
  $t=2392; $ear[$t] = " ,0,0";       # 2016may21: blank space

  $t=2393; $ear[$t] = "\N{U+0},0,0"; # 2016may22: Unicode?
# ПОНИМАЮ (1870 "understand"); first person singular verb; 2016may22
  $t=2394; $ear[$t] = "\x8F,0,0";    # 2016may22: "П"
  $t=2395; $ear[$t] = "\x8E,0,0";    # 2016may22: "О"
  $t=2396; $ear[$t] = "\x8D,0,0";    # 2016may22: "Н"
  $t=2397; $ear[$t] = "\x88,0,0";    # 2016may22: "И"
  $t=2398; $ear[$t] = "\x8C,0,0";    # 2016may22: "М"
  $t=2399; $ear[$t] = "\x80,0,1870"; # 2016may22: "А" stem $prc
  $t=2400; $ear[$t] = "\x9E,0,1870"; # 2016may22: "Ю"
  $psi=1870; $hlc="ru"; $pos=8; $jux=0; $pre=1701; $tkb=2406; $seq=1707; 
  $num=1; $mfn=0; $dba=1; $rv=2394; KbLoad();  # 2016may22
  $t=2401; $ear[$t] = " ,0,0";       # 2016may22: blank space

  $t=2402; $ear[$t] = "\N{U+0},0,0"; # 2016may22: Unicode?
# ТЕБЯ (1707 "you") pronoun; familiar; acc. sing. 2016may22
  $t=2403; $ear[$t] = "\x92,0,0";    # 2016may22: "Т"
  $t=2404; $ear[$t] = "\x85,0,0";    # 2016may22: "Е"
  $t=2405; $ear[$t] = "\x81,0,0";    # 2016may22: "Б"
  $t=2406; $ear[$t] = "\x9F,0,1707"; # 2016may22: "Я"
  $psi=1707; $hlc="ru"; $pos=7; $jux=0; $pre=1870; $tkb=0; $seq=0; 
  $num=1; $mfn=0; $dba=4; $rv=2403; KbLoad();  # 2016may22
  $t=2407; $ear[$t] = " ,0,0";       # 2016may22: blank space

  $t=2408; $ear[$t] = "\N{U+0},0,0"; # 2016may23: Unicode?
# БОГ (1533 God) masculine noun important for philosophy of AI
  $t=2409; $ear[$t] = "\x81,0,0";    # 2016may23: "Б"
  $t=2410; $ear[$t] = "\x8E,0,0";    # 2016may23: "О"
  $t=2411; $ear[$t] = "\x83,0,1533"; # 2016may23: "Г"
# $psi=1561; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=2418; $seq=1850; 
  $psi=1533; $hlc="ru"; $pos=5; $jux=0; $pre=0; $tkb=2418; $seq=1850; 
  $num=1; $mfn=1; $dba=1; $rv=2409; KbLoad();  # 2016may23
  $t=2412; $ear[$t] = " ,0,0";       # 2016may23: blank space

  $t=2413; $ear[$t] = "\N{U+0},0,0"; # 2016may23: Unicode?
# ЗНАЕТ (1850 "knows"); verb, 3rd person sing. 2016may23
  $t=2414; $ear[$t] = "\x87,0,0";    # 2016may23 "З"
  $t=2415; $ear[$t] = "\x8D,0,0";    # 2016may23 "Н"
  $t=2416; $ear[$t] = "\x80,0,1850"; # 2016may23 "А" stem $prc
  $t=2417; $ear[$t] = "\x85,0,1850"; # 2016may23 "Е"
  $t=2418; $ear[$t] = "\x92,0,1850"; # 2016may23 "Т" 
  $psi=1850; $hlc="ru"; $pos=8; $jux=0; $pre=1533; $tkb=2423; $seq=1723; 
  $num=1; $mfn=0; $dba=3; $rv=2414; KbLoad();  # 2016may23
  $t=2419; $ear[$t] = " ,0,0";       # 2016may23: blank space

  $t=2420; $ear[$t] = "\N{U+0},0,0"; # 2016may23: Unicode?
# ВСЁ (1723 all, everything) pronoun; 2016may23
  $t=2421; $ear[$t] = "\x82,0,0";    # 2016may23: "В"
  $t=2422; $ear[$t] = "\x91,0,0";    # 2016may23: "С"
  $t=2423; $ear[$t] = "\xF0,0,1723"; # 2016may23: "Ё"
# $psi=1791; $hlc="ru"; $pos=7; $jux=0; $pre=1850; $tkb=0; $seq=0; 
  $psi=1723; $hlc="ru"; $pos=7; $jux=0; $pre=1850; $tkb=0; $seq=0; 
  $num=1; $mfn=3; $dba=4; $rv=2421; KbLoad();  # 2016may23
  $t=2424; $ear[$t] = " ,0,0";       # 2016may23: blank space

  $t=2425;  # 2016may23: time $t at the end of the MindBoot() sequence
  $psi=0;$act=0;$hlc="en";$pos=0;$jux=0;$pre=0;  # 2016mar07: prevent carry-over
  $tkb=0;$seq=0;$num=0;$mfn=0;$dba=0;$rv=0;      # 2016mar07: prevent carry-over
  $hlc = "en";  # 2016feb24: After Russian bootstrap, default to English. 
  $nxt = 3001;  # 2016feb21: First 3K for English-Russian-German MindBoot.
};  # 2016feb22: MindBoot() runs once and returns to the MainLoop. 


sub ReJuvenate() {  # 2016apr18: recycle oldest memory spaces 
  my $oubliette = ($vault + $coda);  # 2016apr19: to forget oldest memories.
  $rjc++;     # 2016apr18: increment rejuvenation counter.
  if ($rjc > 99999) { $rjc = 1 }  # 2016apr18: Reset for safety. 
  print "\nPlease wait as memories migrate in ReJuvenate cycle $rjc \n"; # 2016apr18
  print "\n vault= $vault t= $t coda= $coda jrt= $jrt cns= $cns in rjc $rjc \n"; # 2016apr19
  for (my $i = $oubliette; $i<($t+2); ++$i) {  # 2016apr18: PERL_Black_Book 143
    $jrt = ($i - $coda);  # 2016apr19: the "junior" time is offset by $coda;
#   print "i= $i jrt= $jrt ";  # 2016apr19: TEST
    #2016apr19: Starting at vault-size plus coda-size, move engrams back coda-spaces:
    my @k=split(',',$psy[$i]);  # 2016apr18: inspect @psy flag-panel
    if ($k[7] > $coda) { $k[7] = ($k[7] - $coda) }  # 2016apr18: keep $tkb valid.
    if ($k[12] > ($vault + $coda)) { $k[12] = ($k[12] - $coda) }  # 2016apr18
$psy[$jrt]="$k[0],$k[1],$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
    $psy[$i] = "0,0,0,0,0,0,0,0,0,0,0,0,0"; # 2016apr19: blank the original engram.
    my @aud=split(',',$ear[$i]);  # 2016apr18: expose @ear values during loop;
    $ear[$jrt] = "$aud[0],$aud[1],$aud[2]";  # 2016apr18: move data to $jrt;
    $ear[$i] = " ,0,0";  # 2016apr18: empty out the vacated rows.
  }  # 2016apr18: End of (for loop) moving through memory
  $t = $jrt;  # 2016apr19: re-start time $t back at the junior-time $jrt
  if ($t < $vault) { $t = $vault }  # 2016apr19: safeguard time $t
  for (my $j=$t; $j<$cns; ++$j) {  # 2016apr18: in cleared-out memory...
    $ear[$j] = " ,0,0";  # 2016apr18: empty out the vacated rows.
    $psy[$j] = "0,0,0,0,0,0,0,0,0,0,0,0,0"; # 2016apr18: blank rows.
  }  # 2016apr18: end of the sweep from new $t to the end of $cns memory.
}  # 2016apr19: ReJuvenate() returns to the MainLoop.


sub ReEntry() {  # 2016apr08: sends the output of the AI back into the AI.
  print "\n  ReEntry has been called \n";  # 2016apr09: TEST
  print "  reentrant idea= $idea \n";  # 2016apr23: 
  $inhibcon = 1;  # 2016apr17: turn neural inhibition on...
  $msg = $idea;  # 2016apr09: not coming from "STDIN". 
  $msg = "$msg" . "\n";  # 2016apr09: carriage-return to stop re-entry.
  AudInput();  # 2016apr09: send the $idea back into the AI Mind. 
  $inhibcon = 0;  # 2016apr17: turn neural inhibition off.
  $output = $idea;  # 2016apr23: for human-computer-interaction display.
  $msg = " ";  # 2016apr09: reset to prevent repetition of $idea. 
  $idea = " "; # 2016apr09: reset to prevent repetition. 
  print "ReEntry_mid: psi= $psi quapsi= $quapsi actpsi= $actpsi \n";  # 2016JUL10
  if ($quapsi > 0 || $actpsi > 0) {  # 2016JUL06: use either trigger...
    print "ReEntry quapsi= $quapsi actpsi= $actpsi calling SpreadAct \n";  # 2016JUL06
    SpreadAct();  # 2016jun19: use noun by-which to spread activation.
  }  # 2016jun19: end of test for a transfer-by-which concept for SpreadAct()
  $actpsi = 0;  # 2016JUL10: reset the target-concept of SpreadAct().
  $quapsi = 0;  # 2016jun19: reset "by which" transfer-concept for safety.
}  # 2016apr10: ReEntry() returns to the EnThink() module. 


# 2015may28 Requirements of Speech mind-module:
# Speech module shall output a single word starting at given @ear point. 
# Outputted word shall be fed internally into the ReEntry module. 
# Inflected nouns and verbs shall be spoken from NounGen or VerbGen.  
sub Speech() {  # 2016feb12: output of a word as text or sound 
  if ($age > $cns) { die "TERMINATING: memory full \n"; }  # 2016jan28
  $t2s = $aud;  # 2016feb13: start from the auditory recall-vector $aud
  do {        # PERL by Example (2015), p. 194: do/until Loops
    my @aud=split(',',$ear[$t2s]);  # 2016jan28: expose @ear values
    $output = "$output" . "$aud[0]";  #2016apr09: commenting back in
    if ($t2s == $aud) { print "\N{U+00}" }  # 2016apr04: TEST, FOR UNICODE
    print "$aud[0]";  # 2016mar29: say each character
    $idea = "$idea" . "$aud[0]";  #2016apr09: concatenate for re-entry
    $pov = 1;    # 2016apr08: internal point-of-view during thinking.
    $t2s++ ;   # 2016mar10: Increment time-to-speech to advance thru memory. 
    if ($aud[0] eq " ")  { # 2016apr29: if no character is found
      $audrv = $t2s;  # 2015may13: Prepare for next word in memory.
      return;         # 2015may13: Exit at end of a word
    };  # 2015may13: End of if-clause
  } until $t2s eq $cns;  # Show the whole array of AI Mind memory.
  $phodex = 1;  # 2016apr03: reset for AudBuffer()
}  # http://mind.sourceforge.net/speech.html 


sub EnPrep() {  # 2016mar30: include English preposition in a thought
  print "  EnPrep: prepgen = $prepgen \n";  # 2016mar30: diagnostic 
  for (my $i=$t; $i>$midway; $i--) {  # 2016mar30: search backwards in time.
    my @k=split(',',$psy[$i]);  # 2016mar30: inspect @psy knowledge-nodes.
    if ($k[2] eq "en") {  # 2016mar30: select only English words
      if ($k[3] == 6) {  # 2016mar30: select only $pos=6 prepositions
        if ($k[1] > 0) {  # 2016mar30: if activation $act is...
          $motjuste = $k[0];  # 2016mar30: Select the most active preposition
          $audjuste = $k[12]; # 2016mar30: recall-vector $rv for Speech()
  $psy[$i]="$k[0],0,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
        }  # 2016mar30: end of test of activation-level
      }  # 2016mar30: end of test for part-of-speech $pos == "6" preposition
    }  # 2016mar30: end of test for human language code $hlc == "en"
  }  # 2016mar30: End of (for loop) searching for most active "motjuste"
  $aud = $audjuste;  # 2016mar30: for transfer into Speech() module
  $prepgen = 0;  # 2016mar30: reset for safety. 
}  # 2016mar30: EnPrep() returns to a thought-generation module.


sub RuPrep() {  # 2016mar30: include Russian preposition in a thought
  print "  RuPrep: prepgen = $prepgen \n";  # 2016mar30: diagnostic 
}  # 2016mar30: RuPrep() returns to a thought-generation module.


sub EnAuxVerb() {  # 2016jun17: for selection of auxiliary verb forms.
  if ($auxverb == 830) {  # 2016jun17: if the auxiliary is "DO" or "DOES"
    # 2016jun17: following code does not yet use parameters for person:
    for (my $i=$t; $i>$midway; $i--) {  # 2016jun17: search for 830=DO
      my @k=split(',',$psy[$i]);  # 2016jun17: examine @psy array;
      if ($k[0] == 830) {  # 2016jun17: if 830=DO is found;
        $audjuste = $k[12];  # 2016jun17: "DO" recall-vector;
        $aud = $k[12];  # 2016jun17: "DO" recall-vector for Speech()
        if ($k[12]>0) { $aud=$k[12]; last }  # 2016jun17: insurance
      }  # 2016jun17: End of search for 830=DO;
    }  # 2016jun17: End of search loop from $t back to $midway.
    Speech();  # 2016jun17: speak the word starting at the $aud time. 
  }  # 2016jun17: end of test for 830=DO auxiliary verb.
}  # 2016jun17: EnAuxVerb() returns to EnVerbPhrase()


sub EnNounPhrase() {  # 2016feb21: thinking with nouns and pronouns
  $act = 0;  # 2016mar29; 2016apr27: so comparisons may be higher.
  $audjuste = 0;  # 2016feb12: prevent carry-over
  $defact = -64;  # 2016apr13: for default comparisons with "701=I"; 
  $motjuste = 0;  # 2016feb12: 
  $subjpsi = 0;   # 2016jun28: how can there already be a subject-psi? TEST
  $verblock = 0;  # 2016jun28: how can a noun already have a verblock? TEST
  print "EnNP: t= $t subjpsi= $subjpsi vlock= $verblock nlock= $nounlock \n";  # 2016JUL03
  my $tsels = 0;  # 2016may25: de-globalize the time-of-selection-of-subject.
  if ($verblock > 0) {  # 2016apr13: positive verblock?
    my @k=split(',',$psy[$verblock]);  # 2016apr13: inspect t=verblock row;
    $nounlock = $k[7];   # 2016apr13: dirobj tkb becomes nounlock value.
  }  # 2016apr13: end of test for a positive verblock;
  if ($nounlock > 0) {  # 2016apr13: already a nounlock? 
    $dirobj = 1;  # 2016apr20: nounlock is specifically for a direct object.
    $subjectflag = 0;  # 2016apr20: needed for conditional tests below;
    my @k=split(',',$psy[$nounlock]);  # 2016apr13: inspect t=nounlock row;
    $motjuste = $k[0];  # 2016apr20: in case a search is needed for non-zero $rv
    $act = $k[1];   # 2016apr16: let activation-level play its role here;
    if ($k[11] == 4) {  # 2016apr20: if acc. case as for any nounlock;
      if ($k[12] > 0) { $aud = $k[12] }  # 2016apr20: find positive $rv; 
    } else {  # 2016apr20: if only a zero $rv $k[12] is found...
      for (my $i=$t; $i>$midway; $i--) {  # 2016apr20: search backwards in time.
        @k=split(',',$psy[$i]);  # 2016apr20: inspect @psy flag-panel
        if ($motjuste == $k[0]) {  # 2016apr20: find motjuste for sake of rv
#         if ($subjectflag == 1 && $k[11] == 1) {  # 2016apr20: subject?
#           if ($k[12] > 0) { $aud = $k[12] }  # 2016apr20: find positive $rv; 
#           if ($k[12] > 0) { last }  # 2016apr20: exit loop if $rv is found.
#         }  # 2016apr20: end of test for subject and for nominative case.
          if ($dirobj == 1 && $k[11] == 4) {  # 2016apr20: direct object?
            if ($k[12] > 0) { $aud = $k[12] }  # 2016apr20: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr20: exit loop if $rv is found.
          }  # 2016apr20: end of test for direct object and accusative case.
        }  # 2016apr20: end of test to find $motjuste with valid $rv.
      }  # 2016apr27: end of for-loop in search of a positive recall-vector.
    }  # 2016apr27: end of else-clause to find a non-zero k12 $rv.
    $actpsi = $k[0];  # 2016apr17: send direct object into SpreadAct()
    print "  EnNPhr: setting actpsi= $actpsi \n";  # 2016JUL10: TEST
  }  # 2016apr13: end of test for a positive nounlock;
  if ($nounlock == 0) {  # 2016apr16: if nouns are free to compete...
    $subjectflag = 1;  # 2016mar29: a default until countermanded.  
    if ($dirobj == 1) { $subjectflag = 0 }  # 2016mar29: countermanding default
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr30: include input for topical response
      my @k=split(',',$psy[$i]);  # 2016mar15: inspect @psy knowledge-nodes.
      if ($k[2] eq "en") {  # 2016mar15: select only English words
        if ($k[3]==5 || $k[3]==7) {  # 2016mar15: select $pos noun or pronoun
         if ($k[7] > 0 ) {  # 2016jun30: retrieve ideas, not single words.
          if ($k[1] > $act) {   # 2016mar29: Reinstating as criterion. 
            $motjuste = $k[0];  # 2016mar15: Select the most active concept.
   print "  i= $i mj= $motjuste k1= $k[1] act= $act ";  # 2016JUL03: TEST
            $mjact = $k[1];  # 2016apr27: if too low, motjuste defaults to "I"
            if ($k[1] > $act && $k[8] > 0) {  # 2016apr13: if k0-psi has k8-seq
              $verblock = $k[7];  # 2016apr13: assign $tkb value to verblock.
            }  # 2016apr13: end of test for a k0-subject with a k8-seq.
            if ($dirobj == 1) { $actpsi = $k[0] }  # 2016apr12
            $subjpsi = $motjuste;  # 2016apr10: for selection of verb-form.
            $snu = $k[9];  # 2016apr10: for parameter in verb-selection; 
            $audjuste = $k[12]; # 2016mar26: temporary recall-vector for Speech
            $tseln = $i;        # 2016mar29: use time-point for inhibition. 
            $tsels = $i;        # 2016apr17: use time-point for inhibition. 
            $act = $k[1];       # 2016JUL03: noun must have higher act to win
          }  # 2016feb12: end of test for a higher activation $act
         }  # 2016jun30: end of test for a k[7] tkb verblock
        }  # 2016feb17: end of test for noun or pronoun as subject
      }  # 2016feb17: end of test for human language code $hlc == "en"
    }  # 2016mar13: End of (for loop) searching for most active "motjuste"
  } # 2016apr16: end of test for absence of a $nounlock.
  my @k=split(',',$psy[$tsels]);  # 2016apr17: inspect subject at time of selection;
  $psy[$tsels]="$k[0],-90,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  # 2016jun28: Above line inserts inhibition more than twice what SpreadAct imposes. 
  if ($subjectflag == 0) {  # 2016apr13: i.e., dir.obj or pred.nom;
    if ($nounlock > 0) {  # 2016apr13: if verb is locked to a particular $seq...
      my @k=split(',',$psy[$nounlock]);  # 2016apr13: inspect t=nounlock row;
      print " t= $t nounlock= $nounlock ";  # 2016apr20: TEST; REMOVE
      $motjuste = $k[0];  # 2016apr13: nounlock psi pre-empts search.
      $act = $k[1];  # 2016apr16: let activation-level play its role here;
      $aud = $k[12]; # 2016apr20:  
    }  # 2016apr13: end of test for a positive nounlock.
  }  # 2016apr13: end of test for not-a-subject before using ELSE
  if ($audjuste > 0) {  # 2016mar27: avoid "I" for "YOU" or "YOU" for "I"
    $aud = $audjuste;  # 2016feb13: for transfer into Speech() module
  }  else { 
    for (my $i=$t; $i>$midway; $i--) {  # 2016mar27: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016mar27: inspect @psy flag-panel
      $act = $k[1];  # 2016apr16: let activation-level play its role here;
      if ($motjuste == $k[0]) {  # 2016mar27: find motjuste for sake of rv
        if ($subjectflag == 1 && $k[11] == 1) {  # 2016apr01: subject?
          if ($k[12] > 0) { $aud = $k[12] }  # 2016mar27: find positive $rv; 
          if ($k[12] > 0) { last }  # 2016mar27: exit loop if $rv is found.
        }  # 2016apr01: end of test for subject and for nominative case.
        if ($dirobj == 1 && $k[11] == 4) {  # 2016apr01: direct object?
          if ($k[12] > 0) { $aud = $k[12] }  # 2016apr01: find positive $rv; 
          if ($k[12] > 0) { last }  # 2016apr01: exit loop if $rv is found.
        }  # 2016apr01: end of test for direct object and accusative case.
      }  # 2016mar27: end of test to find $motjuste with valid $rv.
    }  # 2016mar27: End of (for loop) searching through @psy conceptual array. 
  }  # 2016mar27: end of else-clause for when recall-vector is zero.
  if ($nounlock == 0) {  # 2016apr07: if no nounlock override; 
  print "\n EnNPzeroNL: vlock= $verblock sflag= $subjectflag act = $act \n"; # 2016JUL03
    if ($mjact < 20) {  # 2016jun18: if no subject active enough for chain-of-thought
      if ($subjectflag == 1) {  # 2016apr07: default to "I" only as subject
        $actpsi = 701;  # 2016apr29: send 701=I ego-concept into SpreadAct()
        $motjuste = 701;  # 2016apr07: 701=I default concept of AI Mind
        for (my $i=$t; $i>$midway; $i--) {  # 2016apr07: search for "I"
          my @k=split(',',$psy[$i]);  # 2016apr07: examine @psy
          if ($k[0]==701 && $k[7]>0) { # 2016jun24: I=701 with $tkb verblock?
            if ($k[1] > $defact) {  # 2016apr07: if higher act found;
              $tseln = $i;  # 2016apr07: retain time of motjuste; 
              $tsels = $i;  # 2016may25: retain time of English subject;
              $actpsi = $k[0];    # 2016apr11: psi with activation to spread
              $actpsi = $k[0];    # 2016apr12: commenting-out b/c not dir.obj.
              $defact = $k[1];  # 2016apr07: dynamic metric;
              $verblock = $k[7];  # 2016apr07: $tkb as verblock; 
              $aud = $k[12];      # 2016apr11: recall-vector for auditory engram
            }  # 2016apr07: end of test for higher-act ego-concept;
          }  # 2016apr07: end of test for "701=I" with seq-check;
        }  # 2016apr07: end of search for least-inhibited "701=I"; 
        $dba = 1;        # 2016apr07: From RuAi; subject requires nom. case; 
        $nphrnum = 1;    # 2016apr07: for EnArticle() and EnVerbPhrase();
        $nphrpos = 7;    # 2016apr07: prevent article "A" with "I";
        $prsn = 1;       # 2016apr07: for use elsewhere; 
        $subjnum = 1;    # 2016apr07: for use elsewhere;
        $subjpsi = 701;  # 2016apr07: for use elsewhere;
        $topic = 701;    # 2016apr07: for question-asking modules; 
  print "\n EnNoPhr: subjflag= $subjectflag act = $act subjpsi= $subjpsi \n"; # 2016jun19
        for (my $i=$t; $i>$midway; $i--) {  # 2016apr07: parameters for 701=I.
          my @k=split(',',$psy[$i]);  # 2016apr07: examine @psy
          if ($k[0] == 701) {  # 2016apr07: if 701=I is found;
            if ($k[11] == 1) {  # 2016apr07: k11/dba must be nominative=1; 
              $audjuste = $k[12];  # 2016apr07: "I" recall-vector;
              $aud = $k[12];  # 2016apr08: "I" recall-vector for Speech()
              if ($k[12]>0) { $aud=$k[12]; last }  # 2016apr11: insurance
            }  # 2016apr07: end of test for nominative "I"; 
          }  # 2016apr07: End of search for 701=I;
        }  # 2016apr07: end of 701=I search based on parameters.
      }  # 2016apr07: end of test for "I" to become subj. not obj.
    }  # 2016apr07: end of test for low activation warranting a default
  }  # 2016apr07: end of test for absence of pre-ordained nounlock;
  print "\n    EnNounPhrase: calling Speech aud= $aud \n";  # 2016apr20: TEST; REMOVE
  print "\n    EnNP Spch tsels= $tsels k[1]=act= $k[1] aud= $aud \n";  # 2016jun24: TEST; 
  Speech();  # 2016feb13: speak the word starting at the $aud time. 
  print "    EnNPhr: tsels= $tsels vlock= $verblock nlock= $nounlock \n"; #2016apr17: 
  @k=split(',',$psy[$tsels]);  # 2016jun24: inhibit the subject just spoken.
  $psy[$tsels]="$k[0],-32,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  $dirobj = 0;    # 2016apr12: reset for safety
  $mjact = 0;     # 2016apr27: reset for safety.
  $motjuste = 0;  # 2016apr25: reset for safety. 
}  # 2016feb21: EnNounPhrase() returns to English EnThink() module


sub RuNounPhrase() {  # 2016feb24: thinking with Russian nouns and pronouns
  $act = 0;  # 2016apr01: so comparisons may be higher.
  $audjuste = 0;  # 2016feb24: prevent carry-over
  $motjuste = 0;  # 2016feb24: 
  my $tsels = 0;  # 2016may25: de-globalize the time-of-selection-of-subject.
  if ($verblock > 0) {  # 2016apr28: positive verblock?
    my @k=split(',',$psy[$verblock]);  # 2016apr28: inspect t=verblock row;
    $nounlock = $k[7];   # 2016apr28: dirobj tkb becomes nounlock value.
  }  # 2016apr28: end of test for a positive verblock;
  if ($nounlock > 0) {  # 2016apr28: already a nounlock? 
    $dirobj = 1;  # 2016apr28: nounlock is specifically for a direct object.
    $subjectflag = 0;  # 2016apr28: needed for conditional tests below;
    my @k=split(',',$psy[$nounlock]);  # 2016apr28: inspect t=nounlock row;
    $motjuste = $k[0];  # 2016apr28: in case a search is needed for non-zero $rv
    $act = $k[1];   # 2016apr28: let activation-level play its role here;
    if ($k[11] == 4) {  # 2016apr28: if acc. case as for any nounlock;
      if ($k[12] > 0) { $aud = $k[12] }  # 2016apr28: find positive $rv; 
    } else {  # 2016apr28: if only a zero $rv $k[12] is found...
      for (my $i=$t; $i>$midway; $i--) {  # 2016apr28: search backwards in time.
        @k=split(',',$psy[$i]);  # 2016apr28: inspect @psy flag-panel
        if ($motjuste == $k[0]) {  # 2016apr28: find motjuste for sake of rv
          if ($subjectflag == 1 && $k[11] == 1) {  # 2016apr28: subject?
            if ($k[12] > 0) { $aud = $k[12] }  # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr28: exit loop if $rv is found.
          }  # 2016apr28: end of test for subject and for nominative case.
          if ($dirobj == 1 && $k[11] == 4) {  # 2016apr28: direct object?
            if ($k[12] > 0) { $aud = $k[12] }  # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr28: exit loop if $rv is found.
          }  # 2016apr28: end of test for direct object and accusative case.
        }  # 2016apr28: end of test to find $motjuste with valid $rv.
      }  # 2016apr28: end of for-loop in search of a positive recall-vector.
    }  # 2016apr28: end of else-clause to find a non-zero k12 $rv.
    $actpsi = $k[0];  # 2016apr28: send direct object into SpreadAct()
  }  # 2016apr13: end of test for a positive nounlock;
  if ($nounlock > 0) {  # 2016apr28: already a nounlock? 
    $dirobj = 1;  # 2016apr28: nounlock is specifically for a direct object.
    $subjectflag = 0;  # 2016apr28: needed for conditional tests below;
    my @k=split(',',$psy[$nounlock]);  # 2016apr28: inspect t=nounlock row;
    $motjuste = $k[0];  # 2016apr28: in case a search is needed for non-zero $rv
    $act = $k[1];   # 2016apr18: let activation-level play its role here;
    if ($k[11] == 4) {  # 2016apr28: if acc. case as for any nounlock;
      if ($k[12] > 0) { $aud = $k[12] }  # 2016apr28: find positive $rv; 
    } else {  # 2016apr28: if only a zero $rv $k[12] is found...
      for (my $i=$t; $i>$midway; $i--) {  # 2016apr28: search backwards in time.
        @k=split(',',$psy[$i]);  # 2016apr28: inspect @psy flag-panel
        if ($motjuste == $k[0]) {  # 2016apr28: find motjuste for sake of rv
          $mjact = $k[1];  # 2016apr28: if too low, motjuste defaults to "I"
          if ($dirobj == 1 && $k[11] == 4) {  # 2016apr28: direct object?
            if ($k[12] > 0) { $aud = $k[12] }  # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr28: exit loop if $rv is found.
          }  # 2016apr28: end of test for direct object and accusative case.
        }  # 2016apr28: end of test to find $motjuste with valid $rv.
      }  # 2016apr28: end of for-loop in search of a positive recall-vector.
    }  # 2016apr28: end of else-clause to find a non-zero k12 $rv.
    $actpsi = $k[0];  # 2016apr28: send direct object into SpreadAct()
  }  # 2016apr28: end of test for a positive nounlock;
  if ($nounlock == 0) {  # 2016apr28: if nouns are free to compete...
    $subjectflag = 1;  # 2016apr01: a default until countermanded.  
    if ($dirobj == 1) { $subjectflag = 0 }  # 2016apr01: countermanding default
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr30: include recent input.
      my @k=split(',',$psy[$i]);  # 2016mar15: inspect @psy knowledge-nodes.
      if ($k[2] eq "ru") {  # 2016mar15: select only Russian words
        if ($k[3]==5 || $k[3]==7) {  # 2016mar15: select $pos noun or pronoun
          if ($k[1] > $act) {   # 2016apr28: competition
            if ($k[1] > $act && $k[8] > 0) {  # 2016apr28: if k0-psi has k8-seq
              $verblock = $k[7];  # 2016apr28: assign $tkb value to verblock.
            }  # 2016apr28: end of test for a k0-subject with a k8-seq.
            if ($subjectflag == 1 && $k[11] == 1) {  # 2016apr01: subject?
              $motjuste = $k[0];  # 2016mar15: Select the most active concept.
              $mjact = $k[1];  # 2016apr28: if too low, motjuste defaults to "I"
              $nphrnum = $k[9];   # 2016apr02: For RuVPhr to call VerbGen().
              $snu = $k[9];  # 2016apr02: for parameter in verb-selection; 
              $audjuste = $k[12]; # 2016mar26: temporary recall-vector for Speech
              $tseln = $i;        # 2016apr01: use time-point for inhibition. 
              $tsels = $i;        # 2016may25: retain time of Russian subject;
            }  # 2016apr01: end of test for subject and for nominative case.
            if ($dirobj == 1 && $k[11] == 4) {  # 2016apr01: direct object?
              $motjuste = $k[0];  # 2016mar15: Select the most active concept.
              $mjact = $k[1];  # 2016apr28: if too low, motjuste defaults to "I"
              $audjuste = $k[12]; # 2016mar26: temporary recall-vector for Speech
              $tseln = $i;        # 2016apr01: use time-point for inhibition. 
            }  # 2016apr01: end of test for direct object and accusative case.
            $act = $k[1];  # 2016apr25: for comparison with other candidates.
          }  # 2016feb24: end of test for a higher activation $act
        }  # 2016feb24: end of test for noun or pronoun as subject
      }  # 2016feb24: end of test for human language code $hlc == "ru"
    }  # 2016mar13: End of (for loop) searching for most active "motjuste"
  } # 2016apr28: end of test for absence of a $nounlock.
  my @k=split(',',$psy[$tsels]);  # 2016apr28: inspect subject at time of selection;
  $psy[$tsels]="$k[0],-64,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  # 2016apr28: Above line inserts neural inhibition upon currently selected subject. 
  if ($subjectflag == 1) { $subjpsi = $motjuste }  # 2016apr02: from Wotan AI. 
  if ($dirobj == 1) { $subjectflag = 0 }  # 2016apr28: countermanding default
  if ($subjectflag == 0) {  # 2016apr28: i.e., dir.obj or pred.nom;
    if ($nounlock > 0) {  # 2016apr28: if verb is locked to a particular $seq...
      my @k=split(',',$psy[$nounlock]);  # 2016apr28: inspect t=nounlock row;
      print " t= $t nounlock= $nounlock ";  # 2016apr28: TEST; REMOVE
      $motjuste = $k[0];  # 2016apr18: nounlock psi pre-empts search.
      $act = $k[1];  # 2016apr28: let activation-level play its role here;
      $aud = $k[12]; # 2016apr28:  
    }  # 2016apr28: end of test for a positive nounlock.
  }  # 2016apr28: end of test for not-a-subject before using ELSE
  if ($audjuste > 0) {  # 2016apr01: avoid "I" for "YOU" or "YOU" for "I"
    $aud = $audjuste;  # 2016apr01: for transfer into Speech() module
  }  else { 
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr01: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016apr01: inspect @psy flag-panel
      if ($motjuste == $k[0]) {  # 2016apr01: find motjuste for sake of rv
        if ($subjectflag == 1 && $k[11] == 1) {  # 2016apr01: subject?
          if ($k[12] > 0) { $aud = $k[12] }  # 2016apr01: find positive $rv; 
          if ($k[7] > 0)  { $nounlock = $k[7] }  # 2016apr30: TEST; REMOVE
          if ($k[12] > 0) { $tsels = $i }  # 2016may25: time of Russian subject.
          if ($k[12] > 0) { last }  # 2016apr01: exit loop if $rv is found.
        }  # 2016apr01: end of test for subject and for nominative case.
        if ($dirobj == 1 && $k[11] == 4) {  # 2016apr01: direct object?
          if ($k[12] > 0) { $aud = $k[12] }  # 2016apr01: find positive $rv; 
          if ($k[12] > 0) { last }  # 2016apr01: exit loop if $rv is found.
        }  # 2016apr01: end of test for direct object and accusative case.
      }  # 2016apr01: end of test to find $motjuste with valid $rv.
    }  # 2016apr01: End of (for loop) searching through @psy conceptual array. 
  }  # 2016apr01: end of else-clause for when recall-vector is zero.
  if ($nounlock == 0) {  # 2016apr08: if no nounlock override; 
    print "\n RuNP: vlock= $verblock nlock= $nounlock sflag= $subjectflag act = $act \n"; # 2016apr28
    if ($mjact < 20) {  # 2016apr28: if no subject active enough for chain-of-thought
      if ($subjectflag == 1) {  # 2016apr28: default to "I" only as subject
        print " act= $act ";  # 2016apr28: TEST
        $motjuste = 1701;  # 2016apr28: 1701="Я" ("I") default concept of AI Mind
        for (my $i=$t; $i>$midway; $i--) {  # 2016apr28: search for "I" ("Я")
          my @k=split(',',$psy[$i]);  # 2016apr28: examine @psy
          if ($k[0]==701 && $k[8]>0) { # 2016apr28: I=1701 with $seq?
            if ($k[1] > $defact) {  # 2016apr28: if higher act found;
              $tseln = $i;  # 2016apr28: retain time of motjuste; 
              $tsels = $i;  # 2016may25: retain time of Russian subject;
              $defact = $k[1];    # 2016apr28: dynamic metric;
              $verblock = $k[7];  # 2016apr28: $tkb as verblock; 
              $aud = $k[12];      # 2016apr28: recall-vector for auditory engram
            }  # 2016apr28: end of test for higher-act ego-concept;
          }  # 2016apr28: end of test for "1701=I" with seq-check;
        }  # 2016apr28: end of search for least-inhibited "1701=I"; 
        $dba = 1;        # 2016apr28: From RuAi; subject requires nom. case; 
        $nphrnum = 1;    # 2016apr28: for EnArticle() and EnVerbPhrase();
        $nphrpos = 7;    # 2016apr28: prevent article "A" with "I";
        $prsn = 1;       # 2016apr28: for use elsewhere; 
        $subjnum = 1;    # 2016apr28: for use elsewhere;
        $subjpsi = 1701; # 2016apr28: for use elsewhere;
        $topic = 1701;   # 2016apr28: for question-asking modules; 
        for (my $i=$t; $i>$midway; $i--) {  # 2016apr28: parameters for 1701=I.
          my @k=split(',',$psy[$i]);  # 2016apr28: examine @psy
          if ($k[0] == 1701) {  # 2016apr28: if 1701=I is found;
            if ($k[11] == 1) {  # 2016apr28: k11/dba must be nominative=1; 
              $audjuste = $k[12];  # 2016apr28: "I" recall-vector;
#             if ($k[7]>0 && $k[12]>0) {  # 2016may01: if both data available;
              if ($k[12]>0) {  # 2016may01: TEST
                $tsels = $i;  # 2016may25: retain time of Russian subject;
                $verblock = $k[7];  # 2016may01: subject locked onto verb;
                $aud=$k[12];  # 2016may01: auditory recall-vector
                last;  # 2016may01: exit from loop;
              }  # 2016may01: end of test
            }  # 2016apr28: end of test for nominative "I"; 
          }  # 2016apr28: End of search for 1701=I;
        }  # 2016apr28: end of 1701=I search based on parameters.
      }  # 2016apr28: end of test for "I" to become subj. not obj.
    }  # 2016apr28: end of test for low activation warranting a default
  }  # 2016apr28: end of test for absence of pre-ordained nounlock;
  print "\n    RuNounPhrase: calling Speech aud= $aud \n";  # 2016apr28: TEST
  print "\n    RuNPhr: pre-Speech mj= $motjuste tsels= $tsels aud= $aud \n";  # 2016may01
  Speech();  # 2016feb24: speak the word starting at the $aud time. 
  print "    RuNPhr: t= $t tsels= $tsels vlock= $verblock nlock= $nounlock \n"; #2016may01
  @k=split(',',$psy[$tseln]);  # 2016apr28: expose flag-panel of noun
# $psy[$tseln]="$k[0],0,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  if ($dirobj == 1) {  # 2016apr28: do not call SpreadAct from _within_ ideas.
    print "    RuNounPhrase: Calling SpreadAct \n";  # 2016apr28: TEST
    SpreadAct();  # 2016apr11: spread some activation to flush out a verb; TEST
  }  # 2016apr28: end of test to call SpreadAct only at the end of a thought.
  $dirobj = 0;    # 2016apr28: reset for safety
  $mjact = 0;     # 2016apr28: reset for safety.
  $motjuste = 0;  # 2016apr28: reset for safety. 
}  # 2016feb24: RuNounPhrase() returns to Russian RuThink() module


sub RuVerbGen() {  # 2016apr12: to create Russian verb-forms missing from memory. 
  my $binc = 0;  # de-globalized Buffer-INCrement counter used only locally. 
 print "\nRuVG: audb= $audbase nphrnum= $nphrnum dba= $dba vphraud= $vphraud \n"; #2016apr29
  if ($subjpsi==1701) { $dba = 1 }  # 2016apr02: "1701=Я" is first-person "I";
  if ($subjpsi==1707) { $dba = 2 }  # 2016apr02: "1707="ТЫ" is second-person "you"; 
  if ($subjpsi==1737) { $dba = 2 }  # 2016apr02: "1737="ВЫ" is second-person "you"; 
  if ($subjpsi==1731) { $dba = 1 }  # 2016apr02: "1731="МЫ" is first-person "we"; 
  my @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #01
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #02
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #03
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #04
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #05
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #06
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #07
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #08
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #09
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #10
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #11
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #12
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #13
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #14
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #15
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  @aud=split(',',$ear[$audbase]);  # 2016apr05: @ear word-engram #16
  if ($aud[0] ne " ") { $abc = $aud[0]; AudBuffer(); $audbase++ } 
  do {  # 2016apr05: next loop uses OutBuffer();
    OutBuffer();  # 2016apr03: 
    if ($binc == 1) {   # 2016apr30: space filled below with Russian AI links.
      if ($b01 ne "") { print "$b01"; $idea = "$idea" . "$b01"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 2) {   # 2016apr25: http://ai-news.ru 
      if ($b02 ne "") { print "$b02"; $idea = "$idea" . "$b02"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 3) {   # 2016apr25: http://ailab.ru/forum.html 
      if ($b03 ne "") { print "$b03"; $idea = "$idea" . "$b03"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 4) { # http://egtd.ru -- Эмоционально-Генетическая Теория Развития
      if ($b04 ne "") { print "$b04"; $idea = "$idea" . "$b04"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 5) {   # 2016apr25: http://geektimes.ru 
      if ($b05 ne "") { print "$b05"; $idea = "$idea" . "$b05"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 6) {   # 2016apr25: http://gotai.net/forum
      if ($b06 ne "") { print "$b06"; $idea = "$idea" . "$b06"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 7) { # 2016apr25: http://intsys.msu.ru -- ИНТЕЛЛЕКТУАЛЬНЫЕ СИСТЕМЫ
      if ($b07 ne "") { print "$b07"; $idea = "$idea" . "$b07"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 8) { # http://raai.org -- Российская ассоциация искусственного интеллекта
      if ($b08 ne "") { print "$b08"; $idea = "$idea" . "$b08"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 9) {  # 2016apr24: 
      if ($b09 ne "") { print "$b09"; $idea = "$idea" . "$b09"; }  # 2016apr24
    }  # 2016apr24: end of outputting character and concatenating for ReEntry().
    if ($binc == 10) {  # 2016apr03: 
      if ($b10 ne "") { print "$b10"; $idea = "$idea" . "$b10"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 11) {  # 2016apr03: 
      if ($b11 ne "") { print "$b11"; $idea = "$idea" . "$b11"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 12) {  # 2016apr03: 
      if ($b12 ne "") { print "$b12"; $idea = "$idea" . "$b12"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 13) {  # 2016apr03: 
      if ($b13 ne "") { print "$b13"; $idea = "$idea" . "$b13"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 14) {  # 2016apr03: 
      if ($b14 ne "") { print "$b14"; $idea = "$idea" . "$b14"; }  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 15) {  # 2016apr03: 
      if ($b15 eq "\x85") { $b15 = "" }  # 2016apr3: "Е" Cyrillic
      if ($b15 eq "\x92") { $b15 = "" }  # 2016apr3: "Т" Cyrillic
      if ($b15 eq "\x64") { $b15 = "" }  # 2016apr3: "Ш" Cyrillic
      print "$b15"; $idea = "$idea" . "$b15";  # 2016apr23
    }  # 2016apr23: end of outputting character and concatenating for ReEntry().
    if ($binc == 16) {  # 2016apr03: 
      if ($b16 eq "\x85") { $b16 = "" }  # 2016apr3: "Е" Cyrillic
      if ($b16 eq "\x8C") { $b16 = "" }  # 2016apr3: "М" Cyrillic
      if ($b16 eq "\x92") { $b16 = "" }  # 2016apr3: "Т" Cyrillic
      if ($b16 eq "\x8C") { $b16 = "" }  # 2016apr3: "Ь" Cyrillic
      if ($b16 eq "Е") { $b16 = "" }  # 2016apr3: "Е" Cyrillic; TEST
      if ($b16 eq "\x9E") { $b16 = "" }  # 2016apr3: "Ю" Cyrillic
      if ($b15 eq "\n{U+1070}") { print "  LETTER-YU" }  # 2016apr3: "Ю" Cyrillic
    }  # 2016apr03: 
    $binc++;  # 2016apr03: OutBuffer() "b" increment
  } while ($binc < 17);  # 2016apr03: while inspecting OutBuffer()
  $c01=""; $c02=""; $c03=""; $c04="";  # 2016apr06: clear out the AudBuffer()
  $c05=""; $c06=""; $c07=""; $c08="";  # 2016apr06: clear out the AudBuffer()
  $c09=""; $c10=""; $c11=""; $c12="";  # 2016apr06: clear out the AudBuffer()
  $c13=""; $c14=""; $c15=""; $c16="";  # 2016apr06: clear out the AudBuffer()
  $binc = 0;  # 2016apr06: Reset the b-increment variable after use. 
  if ($dba == 1) {  # 2016apr3: first person;
    if ($snu == 1) {  # 2016ap03: subject-number parameter;
      $pho = "\x9E";  # 2016apr03: "Ю"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr03: end of test for singular subject-number;
    if ($snu == 2) {  # 2016ap06: subject-number parameter;
      $pho = "\x85";  # 2016apr06: "Е"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x8C";  # 2016apr06: "М"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr06: end of test for plural subject-number;
  }  # 2016apr03: end of test for first-person; 
  if ($dba == 2) {  # 2016apr3: second person;
    if ($snu == 1) {  # 2016ap03: subject-number parameter;
      $pho = "\x85";  # 2016apr03: "Е"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x98";  # 2016apr03: "Ш"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x9C";  # 2016apr03: "Ь"
      print "$pho ";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr03: end of test for singular subject-number;
    if ($snu == 2) {  # 2016ap05: subject-number parameter;
      $pho = "\x85";  # 2016apr05: "Е"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x92";  # 2016apr05: "Т"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x85";  # 2016apr05: "Е"
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr05: end of test for plural subject-number;
  }  # 2016apr03: end of test for second-person; 
  if ($dba == 3) {  # 2016apr3: third person;
    if ($snu == 1) {  # 2016ap03: subject-number parameter;
      $pho = "\x85";  # 2016apr06: "Е" Cyrillic
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x92";  # 2016apr06: "Т" Cyrillic
      print "$pho ";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr03: end of test for singular subject-number;
    if ($snu == 2) {  # 2016ap06: subject-number parameter;
      $pho = "\x9E";  # 2016apr06: "Ю" Cyrillic
      print "$pho";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
      $pho = "\x92";  # 2016apr06: "Т" Cyrillic
      print "$pho ";  # 2016apr06: after stem, output this inflection.
      $idea = "$idea" . "$pho";  #2016apr23: concatenate for ReEntry()
    }  # 2016apr06: end of test for plural subject-number;
  }  # 2016apr03: end of test for third-person; 
  $idea = "$idea" . " ";  #2016apr23: add a space after verb for ReEntry()
  $gencon = 1;  # 2016apr05: to prevent unwarranted calling of Speech()
}  # 2016apr12: RuVerbGen() returns to RuVerbPhrase() 


sub EnVerbPhrase() {  # 2016feb17: selection of English verb for thinking.
  print "\nEnVPhr: subjpsi= $subjpsi vlock= $verblock nlock= $nounlock \n";  # 2016apr16
  $act = 0;  # 2016apr25: Start with zero to look for psi1 higher than $act.
  $audjuste = 0;  # 2016feb17: prevent carry-over
  $motjuste = 0;  # 2016feb17: 
  my $negjux = 0;  # 2016jun17: flag for 250=NOT juxtaposed to a verb;
  $vphraud = 0;   # 2016apr10: initially
  if ($verblock > 0) {  # 2016apr13: is there already a verblock?
    print "  EnVP: verblock= $verblock \n";  # 2016apr30: TEST; REMOVE
    my @k=split(',',$psy[$verblock]);  # 2016apr13: inspect t=verblock row;
    $verbpsi = $k[0];   # 2016apr13: lexical verbpsi;
    $negjux = $k[4];    # 2016jun17: for negation of verb; 
    $nounlock = $k[7];  # 2016apr16: $tkb becomes $nounlock.
    if ($k[12] > 0) { $audbase = $k[12] }  # 2016apr13: VerbGen parameter;  
    if ($k[12] > 0) { $aud = $k[12] }      # 2016apr16: auditory recall-vector
    if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr13: auditory recall-vector
    if ($subjpsi==701 || $subjpsi==731) { $prsn=1 } # 2016apr14: I or WE
    if ($subjpsi==707 || $subjpsi==737) { $prsn=2 } # 2016apr14: "YOU"
    if ($subjpsi==713 || $subjpsi==719) { $prsn=3 } # 2016apr14: HE; SHE
    if ($subjpsi==725 || $subjpsi==743) { $prsn=3 } # 2016apr14: IT THEY
    $dba = $prsn;  # 2016apr14:  parameter for VerbGen()
    for (my $i=$krt; $i>$midway; $i--) {  # 2016apr14: search the @psy array
      my @k=split(',',$psy[$i]);  # 2016apr14: inspect t=verblock row;
      if ($k[0] == $verbpsi && $k[0] == 800) {  # 2016apr16: special 800=BE-verb
        if ($k[3] == 8) {  # 2016apr16: select only $pos=8 verbs, even homonyms
        # Following code accepts only a verb-form matching three 
        # requirements: [ ]same concept; [ ]num(ber); and [ ]person:
          if ($k[0]==$verbpsi && $k[9]==$nphrnum && $k[11]==$dba) {  # 2016apr20
            if ($k[12] > 0) { $aud = $k[12] }      # 2016apr16: find positive $rv; 
            if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr14: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr14: exit loop once $rv is found.
          } # 2016apr14: end of test to find regular or irregular verb-form
        }  # 2016apr14: end of test for part-of-speech $pos == "8" (verb)
      }  # 2016apr14: end of test for correct verb-concept $verbpsi
      if ($k[0] == $verbpsi && $k[0] != 800) {  # 2016apr16: other than 800=BE
        if ($k[3] == 8) {  # 2016apr16: select only $pos=8 verbs, even homonyms
          if ($k[0]==$verbpsi) {  # 2016apr20: non-be-verbs may disregard $dba?
            if ($k[12] > 0) { $aud = $k[12] }      # 2016apr16: find positive $rv; 
            if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr14: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr14: exit loop once $rv is found.
          } # 2016apr20: end of test to find regular or irregular verb-form
        }  # 2016apr14: end of test for part-of-speech $pos == "8" (verb)
      }  # 2016apr14: end of test for correct verb-concept $verbpsi
    }  # 2016apr14: End of (for loop) searching for correct verb-form.
  }  # 2016apr13: end of test for a positive verblock.
  if ($vphraud > 0) { $aud = $vphraud }  # 2016apr14: correct form?
  if ($vphraud > 0) { $audjuste = $vphraud }  # 2016apr14: correct form?
  if ($verblock == 0)  {  # 2016apr13: prevent false negations;
    for (my $i=$t; $i>$midway; $i--) {  # 2016feb17: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016mar15: inspect @psy knowledge-nodes.
      if ($k[2] eq "en") {  # 2016mar15: select only English words
        if ($k[3] == 8) {  # 2016mar15: select only $pos=8 verbs
          if ($k[1] > 0) {  # 2016mar15: if activation $act is...
            $tselv = $i;  # 2016apr13: retain time of winning verb;
            $motjuste = $k[0];  # 2016mar15: Select the most active verb.
            $audjuste = $k[12]; # 2016mar26: recall-vector $rv for Speech()
          }  # 2016feb17: end of test of activation-level
        }  # 2016feb17: end of test for part-of-speech $pos == "8" verb
      }  # 2016feb17: end of test for human language code $hlc == "en"
    }  # 2016mar12: End of (for loop) searching for most active "motjuste"
  }  # 2016apr13: end of test for absence of a verblock from subject to verb 
  if ($negjux == 250) {  # 2016jun17: if verb is negated with 250=NOT;
    if ($motjuste != 800) {  # 2016jun17: if other than an 800=BE verb; 
      $auxverb = 830;  # 2016jun17: 830=DO as auxiliary verb; 
      EnAuxVerb();  # 2016jun17: to say 830=DO or "DOES"; 
      $auxverb = 0;  # 2016jun17: reset for safety.
      for (my $i=$t; $i>$midway; $i--) {  # 2016jun17: search for 250=NOT
        my @k=split(',',$psy[$i]);  # 2016jun17: examine @psy array;
        if ($k[0] == 250) {  # 2016jun17: if 250=NOT is found;
          $audjuste = $k[12];  # 2016jun17: "NOT" recall-vector;
          $aud = $k[12];  # 2016jun17: "NOT" recall-vector for Speech()
          if ($k[12]>0) { $aud=$k[12]; last }  # 2016jun17: insurance
        }  # 2016jun17: End of search for 250=NOT;
      }  # 2016jun17: End of search loop from $t back to $midway.
      Speech();  # 2016jun17: speak the word starting at the $aud time. 
    }  # 2016jun17: end of test to prevent auxiliary with 800=BE verb.
  }  # 2016jun17: end of test for 250=NOT negjux.
  $aud = $audjuste;  # 2016feb17: for transfer into Speech() module
  $verbpsi = $motjuste; # 2016apr10: to search for verb-form.
  if ($vphraud != 0) { $aud = $vphraud }  # 2016apr10: Accept rv of 3 parameters.
  if ($subjpsi == 701) { $dba = 1; }  # 2016apr10: "I" 1st person sing.
  if ($subjpsi == 707) { $dba = 2; }  # 2016apr10: "you" 2nd person sing.
  if ($subjpsi == 713) { $dba = 3; }  # 2016apr10: "he" 3rd person sing;
  if ($subjpsi == 719) { $dba = 3; }  # 2016apr10: "she" 3rd person sing.
  if ($subjpsi == 725) { $dba = 3; }  # 2016apr10: "it" 3rd person sing.
  if ($subjpsi == 731) { $dba = 1; }  # 2016apr10: "we" 1st person plural
  if ($subjpsi == 737) { $dba = 2; }  # 2016apr10: "you" 2nd person plural
  if ($subjpsi == 743) { $dba = 3; }  # 2016apr10: "they" 3rd person plural
  if ($vphraud == 0) {  # 2016apr10: if not substituted above;
    for (my $i=$krt; $i>$midway; $i--) {  # 2016apr10: skip current engrams.
      my @k=split(',',$psy[$i]);  # 2016apr10: inspect @psy lexical nodes
      if ($motjuste != 0 && $k[0] == $motjuste) {  # 2016apr10: look for $motjuste;
        $audbase = $k[12];  # 2016apr12: location of quasi-stem for RuVerbGen();
        if ($k[11] == $dba)  {  # 2016apr10:  for proper person;
          if ($k[9] == $snu) {  # 2016apr10: subject num(ber) parameter; 
            $vphraud = $k[12];  # 2016apr10: auditory recall-vector; 
            last;  # 2016apr10:  exit the loop after first find;
          }  # 2016apr10: end of subject number-parameter test; 
        }  # 2016apr10: end of dba-parameter test;
      }  # 2016apr10: end of test to find regular or irregular verb-form
    }  # 2016apr10: end of (for loop) searching through @psy conceptual array.
  }  # 2016apr10: end of test of $vphraud.
  if ($vphraud > 0) { $aud = $vphraud }  # 2016apr10: correct form?
  Speech();  # 2016feb17: speak the word starting at the $aud time. 
  $aud = 0;  # 2016apr20: Reset to prevent carry-over. 
  my @k=split(',',$psy[$tselv]);  # 2016apr13: inspect verb at time of selection;
  $psy[$tselv]="$k[0],-16,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
  # Above line inserts neural inhibition upon currently selected verb. 
  $dirobj = 1;  # 2016mar29: set flag positive for seeking direct object. 
  print "  EnVerbPhr: calling EnNounPhr for d.o. nounlock= $nounlock \n"; # 2016apr16
  EnNounPhrase();  # 2016mar10: for direct object or predicate nominative
  $dirobj = 0;  # 2016mar29: reset flag after thinking direct object. 
  if ($prepgen > 0) { EnPrep() }  # 2016mar30: if "Where?" call EnPrep().
  AudDamp();  # 2016feb17: Temporarily reset activations. 
  $audbase = 0;  # 2016apr25: reset for safety. 
}  # 2016feb17: EnVerbPhrase() returns to English EnThink() module


sub RuVerbPhrase() {  # 2016feb24: thinking with Russian verbs
  $act = 0;  # 2016apr25: Start with zero to look for psi1 higher than $act.
  if ($subjpsi==1701 || $subjpsi==1731) { $prsn = 1 }  # 2016apr02: I or we
  if ($subjpsi==1707 || $subjpsi==1737) { $prsn = 2 }  # 2016apr02: you
  if ($subjpsi==1713 || $subjpsi==1719) { $prsn = 3 }  # 2016apr02: he, she
  if ($subjpsi==1725 || $subjpsi==1743) { $prsn = 3 }  # 2016apr02: it, they
  $audjuste = 0;  # 2016feb24: prevent carry-over
  $motjuste = 0;  # 2016feb24: 
  $vphraud = 0;   # 2016apr12: initially, until found or generated by RuVerbGen()
  if ($verblock > 0) {  # 2016apr27: is there already a verblock?
    print "  RuVP: verblock= $verblock ";  # 2016apr27
    my @k=split(',',$psy[$verblock]);  # 2016apr28: inspect t=verblock row;
    $verbpsi = $k[0];   # 2016apr28: lexical verbpsi;
    $nounlock = $k[7];  # 2016apr28: $tkb becomes $nounlock.
    $audbase = $k[12];  # 2016apr28: VerbGen parameter;  
    if ($k[12] > 0) { $audbase = $k[12] }  # 2016apr28: VerbGen parameter;  
    if ($k[12] > 0) { $aud = $k[12] }      # 2016apr28: auditory recall-vector
    if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr28: auditory recall-vector
    if ($subjpsi==1701 || $subjpsi==1731) { $prsn = 1 }  # 2016apr28: I or we
    if ($subjpsi==1707 || $subjpsi==1737) { $prsn = 2 }  # 2016apr28: you
    if ($subjpsi==1713 || $subjpsi==1719) { $prsn = 3 }  # 2016apr28: he, she
    if ($subjpsi==1725 || $subjpsi==1743) { $prsn = 3 }  # 2016apr28: it, they
    $dba = $prsn;  # 2016apr28:  parameter for VerbGen()
    $vphraud = 0;  # 2016apr28: until a known verb is found;
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr30: include recent input.
      my @k=split(',',$psy[$i]);  # 2016apr28: inspect t=verblock row;
      if ($k[0] == $verbpsi && $k[0] == 800) {  # 2016apr28: special 800=BE-verb
        if ($k[3] == 8) {  # 2016apr28: select only $pos=8 verbs, even homonyms
        # Following code accepts only a verb-form matching three 
        # requirements: [ ]same concept; [ ]num(ber); and [ ]person:
          if ($k[0]==$verbpsi && $k[9]==$nphrnum && $k[11]==$dba) {  # 2016apr28
            if ($k[12] > 0) { $aud = $k[12] }      # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr28: exit loop once $rv is found.
          } # 2016apr28: end of test to find regular or irregular verb-form
        }  # 2016apr28: end of test for part-of-speech $pos == "8" (verb)
      }  # 2016apr28: end of test for correct verb-concept $verbpsi
      if ($k[0] == $verbpsi && $k[0] != 800) {  # 2016apr28: other than 800=BE
        if ($k[3] == 8) {  # 2016apr28: select only $pos=8 verbs, even homonyms
          if ($k[0]==$verbpsi) {  # 2016apr28: non-be-verbs may disregard $dba?
            if ($k[12] > 0) { $aud = $k[12] }      # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { $vphraud = $k[12] }  # 2016apr28: find positive $rv; 
            if ($k[12] > 0) { last }  # 2016apr28: exit loop once $rv is found.
          } # 2016apr28: end of test to find regular or irregular verb-form
        }  # 2016apr28: end of test for part-of-speech $pos == "8" (verb)
      }  # 2016apr28: end of test for correct verb-concept $verbpsi
    }  # 2016apr28: End of (for loop) searching for correct verb-form.
  }  # 2016apr28: end of test for a positive verblock.
  if ($verblock == 0) { print "RuVP: mj= $motjuste act= $act"; }  # 2016may21; TEST
  for (my $i=$t; $i>$midway; $i--) {  # 2016apr28: search backwards in time.
    my @k=split(',',$psy[$i]);  # 2016mar15: inspect @psy knowledge-nodes.
    if ($k[2] eq "ru") {  # 2016mar15: select only $hlc=ru Russian words
      if ($k[3] == 8) {  # 2016mar15: select only $pos=8 verbs
        if ($k[1] > $act) {  # 2016apr25: If psi1 is higher than "$act";
          $motjuste = $k[0];  # 2016mar15: Select the most active verb.
 print " RuVP_1 krt= $krt mj= $motjuste act= $k[1] rv= $k[12] "; # 2016apr28: TEST;
  $psy[$i]="$k[0],0,$k[2],$k[3],$k[4],$k[5],$k[6],$k[7],$k[8],$k[9],$k[10],$k[11],$k[12]";
          $act = $k[1];  # 2016apr25: for comparison with other candidate verbs.
        }  # 2016feb24: end of test of activation-level
      }  # 2016feb24: end of test for part-of-speech $pos == "8" verb
    }  # 2016feb24: end of test for human language code $hlc == "ru"
  }  # 2016mar13: End of (for loop) searching for most active "motjuste"
  $aud = $audjuste;  # 2016feb24: for transfer into Speech() module
  $verbpsi = $motjuste; # 2016apr02: to search for verb-form.
  if ($subjpsi == 1701) { $dba = 1; }  # 2016apr06: Я (I) 1st p. sing; 
  if ($subjpsi == 1707) { $dba = 2; }  # 2016apr06: ТЫ (you) 2nd p. sing
  if ($subjpsi == 1713) { $dba = 3; }  # 2016apr06: ОН (he) 3rd p. sing;
  if ($subjpsi == 1719) { $dba = 3; }  # 2016apr06: ОНА (she) 3rd p. s;
  if ($subjpsi == 1725) { $dba = 3; }  # 2016apr06: ОНО (it) 3rd p. s;
  if ($subjpsi == 1731) { $dba = 1; }  # 2016apr06: МЫ (we) 1st p. pl;
  if ($subjpsi == 1737) { $dba = 2; }  # 2016apr06: ВЫ (you) 2nd p. pl;
  if ($subjpsi == 1749) { $dba = 2; }  # 2016apr06: ВЫ (you) 2nd p. s;
  if ($subjpsi == 1755) { $dba = 2; }  # 2016apr06: ВЫ (you) 2nd p. pl;
  if ($subjpsi == 1743) { $dba = 3; }  # 2016apr06: ОНИ (they) 3rd p. pl;
  if ($vphraud == 0) {  # 2016apr02: if not substituted above;
    for (my $i=$krt; $i>$midway; $i--) {  # 2016apr03: skip current engrams.
      my @k=split(',',$psy[$i]);  # 2016apr02: inspect @psy lexical nodes
      if ($motjuste != 0 && $k[0] == $motjuste) {  # 2016apr02: look for $motjuste;
        $audbase = $k[12];  # 2016apr12: location of quasi-stem for RuVerbGen();
        if ($k[11] == $dba)  {  # 2016apr02:  for proper person;
          if ($k[9] == $snu) {  # 2016apr02: subject num(ber) parameter; 
            $vphraud = $k[12];  # 2016apr02: auditory recall-vector; 
            $aud = $k[12];  # 2016apr24: auditory recall-vector; 
  print "\nRuVP: krt= $krt mj= $motjuste audb= $audbase vphraud = $vphraud \n";  # 2016apr27
            last;  # 2016apr02:  exit the loop after first find;
          }  # 2016apr02: end of subject number-parameter test; 
        }  # 2016apr02: end of dba-parameter test;
      }  # 2016apr02: end of test for an available $motjuste
    }  # 2016apr02: end of test to find regular or irregular verb-form
  }  # 2016apr02: End of (for loop) searching through @psy conceptual array.
  $dba = 3;  # 2016apr02: a default if not countermanded below: 
  if ($subjpsi == 1701) { $dba = 1; }  # 2016apr02: Я (I) 1st p. sing; 
  if ($subjpsi == 1707) { $dba = 2; }  # 2016apr02: ТЫ (you) 2nd p. sing.
  if ($subjpsi == 1713) { $dba = 3; }  # 2016apr02: ОН (he) 3rd p. sing;
  if ($subjpsi == 1719) { $dba = 3; }  # 2016apr02: ОНА (she) 3rd p. s;
  if ($subjpsi == 1725) { $dba = 3; }  # 2016apr02: ОНО (it) 3rd p. s;
  if ($subjpsi == 1731) { $dba = 1; }  # 2016apr02: МЫ (we) 1st p. pl;
  if ($subjpsi == 1737) { $dba = 2; }  # 2016apr02: ВЫ (you) 2nd p. pl;
  if ($subjpsi == 1749) { $dba = 2; }  # 2016apr02: ВЫ (you) 2nd p. s;
  if ($subjpsi == 1755) { $dba = 2; }  # 2016apr02: ВЫ (you) 2nd p. pl;
  if ($subjpsi == 1743) { $dba = 3; }  # 2016apr02: ОНИ (they) 3rd p. pl;
  if ($vphraud != 0) { $aud = $vphraud }  # 2016apr03: Accept rv of 3 parameters.
  if ($vphraud == 0) {  # 2016apr03: 
    # 2016apr02: Following code accepts only a verb-form matching three 
    # requirements: [ ]same concept; [ ]num(ber); and [ ]person:
    for (my $i=$t; $i>$midway; $i--) {  # 2016apr02: search backwards in time.
      my @k=split(',',$psy[$i]);  # 2016apr02: inspect @psy knowledge nodes
      if ($k[0]==$verbpsi && $k[9]==$nphrnum && $k[11]==$prsn) {  # 2016apr02
        $vphraud = $k[12];  # 2016apr02: VerbPhrase auditory engram tag
      }  # 2016apr02: end of test to find regular or irregular verb-form
    }  # 2016apr02: End of (for loop) searching through @psy conceptual array. 
  }  # 2016apr24: TEST -- A NEEDED BRACKET?
  if ($vphraud == 0) { RuVerbGen() }  # 2016apr12: if no verb-form, generate it.
  if ($vphraud > 0) { $aud = $vphraud }  # 2016apr02: correct form?
  if ($gencon == 0) {  # 2016apr03: if no call to VerbGen()...
    print " calling Speech "; # 2016apr24: TEST
    Speech();  # 2016feb24: speak the word starting at the $aud time. 
    $gencon = 0;  # 2016apr03: reset whether used or not;
  }  # 2016apr03: end of test to prevent speaking extra verb after VerbGen()
  $dirobj = 1;  # 2016apr01: set flag positive for seeking direct object. 
  RuNounPhrase();  # 2016apr01: for direct object or predicate nominative
  $dirobj = 0;  # 2016apr01: reset flag after thinking direct object. 
  if ($prepgen > 0) { RuPrep() }  # 2016apr01: if "Where?" call RuPrep().
  AudDamp();  # 2016feb24: Temporarily reset activations.
  $audbase = 0;  # 2016apr25: reset for safety.
}  # 2016feb24: RuVerbPhrase() returns to Russian RuThink() module


sub InFerence() {  # 2016feb11: machine reasoning by logical inference
  print "InFerence has been called. \n";  # 2016feb11
  # http://www.amazon.com/dp/B00FKJY1WY -- Amazon e-book on InFerence()
}  # 2016feb11: InFerence() when coded will return to EnThink().


sub DeThink() {    # 2016mar08: Stub of the German thinking module.
  $output = "";   # 2016apr21: Show output between array-display and aud-input.
  DeNounPhrase();  # 2016mar08: separate noun-phrase for each language.
  DeVerbPhrase();  # 2016mar08: call the module to select a German verb.
  # http://www.amazon.com/dp/B00GX2B8F0 -- "Artificial Intelligence in German"
} # 2016mar08: DeThink() returns to MainLoop.


sub EnThink() {  # 2016mar30: Start showing primitive thought as output.
  $output = "";   # 2016apr21: Show output between array-display and aud-input.
  $pov = 1;      # 2016mar27: thinking occurs in self or "I" mode.
  print "\nGhost: ";  # 2016mar29: Listen to the ghost in the machine.
  EnNounPhrase(); #2016feb21: separate noun-phrase for each language.
  EnVerbPhrase(); # 2016feb17: call the module to select an English verb.
  $hlc = "en";   # 2016feb17: Enable exclusion of non-English.
  AudDamp();  # 2016feb17: Temporarily reset activations.
  ReEntry();     # 2016apr09: send the $idea of the AI back into the AI.
  $idea = " ";   # 2016apr09: reset for safety. 
  $nounlock = 0; # 2016apr13: reset for safety. 
  if ($chaincon > 2) { $chaincon = 0 }  # 2016apr15: arbitrary end of chain.
  $tdo = 0;      # 2016apr13: reset time-of-direct-object for safety. 
  $tvb = 0;      # 2016apr13: reset time-of-verb for safety.
  $verblock = 0; # 2016apr13: reset for safety.
  PsiDecay();    # 2016apr13: Reduce activation after each thought.
}  # 2016feb17: EnThink() returns to MainLoop.


sub RuThink() {  # 2016feb22: In response to Russian, think in Russian.
  $output = "";   # 2016apr21: Show output between array-display and aud-input.
  $pov = 1;      # 2016apr01: thinking occurs in self or "I" mode.
  print "\nGhost: ";  # 2016apr01: Listen to the ghost in the machine.
  RuNounPhrase(); #2016feb24: Find a Russian noun or pronoun. 
  RuVerbPhrase(); # 2016feb24: call the module to select a Russian verb.
  $hlc = "ru";   # 2016feb22: Think in the particular human language.
  AudDamp();  # 2016feb22: Temporarily reset activations.
  ReEntry();     # 2016apr23: send the $idea of the AI back into the AI.
  $idea = " ";   # 2016apr23: reset for safety. 
  $nounlock = 0; # 2016apr23: reset for safety. 
  $tdo = 0;      # 2016apr28: reset time-of-direct-object for safety. 
  $tvb = 0;      # 2016apr28: reset time-of-verb for safety.
  $verblock = 0; # 2016apr28: reset for safety.
  PsiDecay();    # 2016apr28: Reduce activation after each thought.
}  # 2016feb22: RuThink() returns to MainLoop.

sub Motorium() {  # 2016mar05: stub for autonomous control of robots 
  if ( $beep == 1) { print "\a"; $beep = 0; }  # 2016apr29: output a beep.
 # MOVE_FORWARD();   # 2016mar05: some movements may be built in like instinct;
 # MOVE_BACKWARDS(); # 2015mar05: baby robots may move arms and legs to learn;
 # STOP_MOTION();    # 2016mar05: Volition() will control learned behaviors; 
 # TURN_LEFT();      # 2016mar05: prolonged thinking will delay motor output;
 # TURN_RIGHT();     # 2016mar05: the AI may flit by telepresence among robots;
}  # 2016apr29: Motorium() will return to the free-will Volition() module.

sub Volition() {  # 2016mar05: stub for free will in autonomous robots
# Emotion();   # 2016mar05: physiological emotion will influence thought;
# Think();     # 2016mar05: thoughts will be evaluated w.r.t. goals;
# Motorium();  # 2016mar05: motor memories will control robot actuators;
  if ($trigger > 11) {  # 2016apr29: if user presses [Enter] with no input...
    $beep = 1;     # 2016apr29: send a beep-command to the Motorium() module;
    Motorium();    # 2016apr29: for execution of the commands of Volition()
    $beep = 0;     # 2016apr29: reset the flag after each motor execution.
    $trigger = 0;  # 2016apr29: reset the trigger for a fresh integration.
  }  # 2016apr29: end of the integration of components to will an action.
} # 2016mar05: Volition() will return to the MainLoop of the AI.

MainLoop: {  # 2016jan25: for inclusion of TabulaRasa() & MindBoot()
  TabulaRasa();  # 2016jan25: one-time call as in MindForth AI.
  MindBoot();    # 2016jan25: one-time call as in MindForth AI.
  while ($t < $cns) {  # 2015may02: Until CNS memory is full. 
    $age = $age + 1;   # 2015apr26
    if ($fyi > 2) {  # 2016feb08: if mode is Diagnostic 
      print "\nMain loop cycle ", $age, "  \n";  # 2015may02
    }  # 2016feb07: end of test for Diagnostic or Tutorial mode. 
    if ($t > ($cns - 64)) {  ReJuvenate() }  # 2016apr18: near end of memory.
    $tai = $t;  # 2016apr14: time of AI for diagnostic screen display
    if ($chaincon > 0) { $chaincon++ }  # 2016apr15: run its course.
    Sensorium(); # 2016mar26: as avenue to auditory input module.
    print "\nMainLoop: back from Sensorium; tai= $tai hlc= $hlc \n"; # 2016apr14
    print "\n\n \nNow begins the process of thinking. \n"; # 2016apr27
    print "krt= $krt mj= $motjuste audb= $audbase vphraud= $vphraud \n";  # 2016apr27
    if ($hlc eq "de") {  # 2016mar08: check human-language-code $hlc
      DeThink();   # 2016mar08: Think in Deutsch (German).
    }  # 2016mar08: End of test to select a human language to think in.
    if ($hlc eq "en") {  # 2016jan24: check human-language-code $hlc
      EnThink();   # 2016jan24: Chosen over German DeThink, Russian RuThink
    }  # 2016jan24: End of test to select a human language to think in.
    if ($hlc eq "ru") {  # 2016feb22: check human-language-code $hlc
      RuThink();  # 2016feb22: In response to Russian input, think in Russian.
    }  # 2016feb22: End of test to select a human language to think in.
#   Volition(); # 2016mar05: a reminder that free will can also be coded.
#   Motorium(); # 2016mar05: a stub for embodiment of Ghost.pl in a robot
    Volition(); # 2016apr29: let the AI exercise free will.
    if ($age eq 999) { die "Perlmind dies when time = $t \n" }; # 2015may02
#   $tai = $krt;  # 2016apr14: prepare to show recent input and idea output.
    if ($fyi > 0) {  # 2016feb16: Tutorial mode?
      print "\n \nMindGrid of ghost175.pl born $birth\n";  #2016JUL10
      print "Psy and Ear arrays hold your input and the AI output: \n\n"; # 2016JUL10
      print "time psi act hlc pos jux pre iob tkb "; # 2016mar26
      print "seq num mfn dba rv  pho act audpsi \n"; # 2016mar26
      do {  # 2016mar26: Show @psy and @ear engrams of recent input.
        print "t=$tai. psi=$psy[$tai], ";  # 2016apr14: show @psy concept array 
        print " aud= $ear[$tai], \n";  # 2016apr14: show @ear auditory array
        if ($tai == $krt) { print "   \n" }  # 2016apr15: Show a gap.
#       $krt++;  # 2016feb10: increment $krt up until current time $t.
        $tai++;  # 2016apr14: increment $tai up until current time $t.
      } while ($tai < $t);  # 2016apr14: show @ear array at recent time-points  
#     SpreadAct();  # 2016apr14: show spreading activation
    }  # 2016feb08: end of test for Tutorial mode
   $hlc = "en";  # 2016feb24: If no Russian input, switch to default English.
#  $hlc = "ru";  # 2016may21: Alternate between English and Russian default?
  }  # 2016feb10: end of main while-loop 
}  # 2016jan25: End of MainLoop as an entity.
print "End of ghost175.pl running since $birth\n";  #2016JUL10
# 2016apr20: Claim your bragging rights for oldest living AI Mind.
# http://perl6.org main resource for Strong AI Perl6 Killer App.
# http://irclog.perlgeek.de/perl6/2016-02-25 Internet Relay Chat 
# http://ai.neocities.org/AiLaw.html Artificial Intelligence: Law and Policy
# http://ai.neocities.org/perlmind.txt rename as ghost175.pl etc. 
# http://ai.neocities.org/P6AI_FAQ.html -- Frequently Asked Questions
# http://ai.neocities.org/P6AI_man.html -- Perl6 AI User Manual
# http://ai.neocities.org/PMPJ.html -- Perl Mind Programming Journal 
# http://www.amazon.com/dp/B00FKJY1WY shows how the Perl AI reasons. 
# http://www.nlg-wiki.org/systems/Mind.Forth -- progenitor of Perl AI
# http://wiki.opencog.org/wikihome/index.php/Ghost 
# http://www.sourcecodeonline.com/details/ghost_perl_webserver_strong_ai.html 
# http://www.nasa.gov/planetarydefense

# 2015apr23 First upload of code while learning Perl. 
# 2015apr24 sensorium() gets input; think() shows input. 
# 2015apr24 think() shows engrams fetched from @aud array. 
# 2015apr25 Saving mind0011.pl as stable; coding mind0012.pl
# 2015apr25 AudMem() stores AudInput() data in @aud array. 
# 2015apr26 EnBoot: uses time $t instead of recall-vector $rv.
# 2015apr26 TabulaRasa: will both fill and reserve CNS memory.
# 2015may01 AudMem() stores and Think() displays whole words. 
# 2015may02 Prototype Perlmind dies when CNS memory fills up. 
# 2015may10 @aud array stores words with associative flag-panel.
# 2015may13 speech() module shows engrams until any blank space.
# 2015may15 speech() displays single words retrieved from @aud.
# 2015may16 Requirements for speech() module prepended as comments.
# 2015may17 Perl "split" function separates retrieval of aud-panel.
# 2015may18 Using if/else construct to print @aud array contents. 
# 2015may28 Introducing rudimentary NewConcept called from AudInput.
# 2015jun01 EnVocab module stubbed in for control of English vocabulary. 
# 2015jun04 EnParser() English Parser module stubbed in. 
# 2016jan10 FileInput() replaces AudInput() to read input.txt file. 
# 2016jan11 WHILE loop in FileInput() calls NewConcept() and AudMem().
# 2016jan12 FileInput() uses getc to send single characters to AudMem(0). 
# 2016jan13 uses "return" to exit from FileInput() at end of first word. 
# https://groups.google.com/forum/#!topic/comp.programming/_F4PTlvJy_8
# 2016jan14 FileInput() calls AudMem() to store multiple input.txt words.
# https://groups.google.com/forum/#!topic/comp.sys.super/XcaLu5p1_gU
# 2016jan15 stubs in AudBuffer(); resets module sequence as in MindForth.
# https://groups.google.com/forum/#!topic/comp.lang.forth/nzEsANtlBGk
# 2016jan18 EnVocab() and AudMem() use flag-panels simpler than MindForth.
# https://groups.google.com/forum/#!topic/sci.cognitive/sAGrJEg_wew 
# 2016jan19 renames @psi as @psy array to avoid psi-variable conflict. 
# 2016jan20 InStantiate() stores psi, act, pos, jux, pre, tkb, and seq. 
# 2016jan21 merges @en English lexical array into @psy conceptual array. 
# 2016jan22 stubs in KbLoad() and fleshes out start of EnBoot() sequence.
# 2016jan23 mind0043.pl stubs in AudRecog() but MindBoot() is too small.
# 2016jan24 mind0044 splits Think() into DeThink, EnThink and RuThink.
# 2016jan25 mind0045.pl has MainLoop call TabulaRasa() and MindBoot(). 
# 2016jan26 mind0046.pl uses "uc" function to convert input to uppercase. 
# 2016jan27 mind0049.pl completes the undebugged coding of AudRecog().
# 2016jan28 mind0050.pl changes names; calls AudInput if file not found.
# 2016jan28 mind0051.pl begins update of AudInput on par with FileInput.
# 2016jan29 mind0052.pl feeds input $pho into AudMem() and AudRecog(). 
# 2016jan30 mind0053.pl recognizes and sends input word to OldConcept().
# 2016jan30 mind0054.pl has AudMem() store recognized or new concept.
# 2016jan31 mind0055.pl has AudRecog() recognize one-character words. 
# 2016feb01 mind0056.pl detects end of auditory input but is messy. 
# 2016feb01 mind0057.pl uses $eot for AudInput() to input a sentence. 
# https://groups.google.com/forum/#!topic/comp.lang.lisp/0aCkelxOyMY
# 2016feb03 mind0059.pl introduces AudDamp() to reset @ear activations. 
# 2016feb03 mind0060.pl troubleshoots the AudRecog() module. 
# 2016feb04 ghost062.pl improves upon mind0061.pl and takes a new name.
# 2016feb05 ghost063.pl has AudMem() wait until after a word to set tags. 
# 2016feb06 ghost064.pl zeroes out $audrun and $prc in AudInput() module. 
# 2016feb06 ghost065.pl debugs AudRecog() and removes diagnostic messages.
# https://groups.google.com/forum/#!topic/comp.speech.users/PdCf9ONAYHo
# 2016feb07 ghost066.pl introduces $fyi Diagnostic mode and Tutorial mode. 
# 2016feb07 ghost067.pl expands MindBoot sequence up to $t=77 for "BOY".
# 2016feb08 ghost068.pl expands MindBoot sequence up to $t=134 "DOING".
# 2016feb08 ghost069.pl completes MindBoot; Tutorial mode shows memory. 
# 2016feb09 ghost070.pl sets recall-vector $rv for NewConcept() words. 
# 2016feb10 ghost071.pl OldConcept() finds data of most recent engram.
# 2016feb11 ghost072.pl stubs in NounPhrase() VerbPhrase() InFerence(). 
# 2016feb12 ghost073.pl NounPhrase() acquires some rudimentary code. 
# 2016feb13 ghost075.pl expands NounPhrase; introduces Unicode Russian. 
# 2016feb16 ghost076.pl shows that Perl AI can be coded in Russian etc. 
# 2016feb17 ghost077.pl fleshes out EnVerbPhrase; starts Russian MindBoot.
# 2016feb18 ghost078.pl becomes an experimental version.
# 2016feb19 ghost079.pl is able to store a Cyrillic word as $pho(nemes).
# 2016feb19 ghost080.pl goes beyond the basic Cyrillic AudMem() storage.
# 2016feb20 ghost081.pl is still an extremely experimental version. 
# 2016feb21 ghost082.pl is a more stable version for English and Russian. 
# 2016feb22 ghost083.pl uses brute force to send Cyrillic to RuAudRem(). 
# 2016feb23 ghost084.pl RuAudRecog() can recognize long Russian words. 
# 2016feb24 ghost085.pl plans to exclude prep. phrases from SVO parsing.
# 2016feb24 ghost086.pl begins to integrate all Russian prepositions.
# 2016feb24 ghost087.pl fleshes out RuNounPhrase() and RuVerbPhrase().
# 2016feb25 ghost088.pl fills in Russian bootstrap with verb "to see".
# 2016feb25 ghost089.pl registers present-tense Russian forms of "to see".
# 2016feb26 ghost090.pl encodes more Russian prepositions and pronouns. 
# 2016feb26 ghost091.pl encodes t=1222 to t=1314 with Russian bootstrap.
# 2016feb27 ghost092.pl encodes ДУМАТЬ ("think") and ДУШКА ("little soul").
# 2016feb28 ghost093.pl ignores hyphen in recognition of Russian words. 
# 2016feb28 ghost094.pl encodes t=1392 to t=1498 with Russian bootstrap. 
# 2016feb28 ghost095.pl debugs RuAudRecog(); encodes to t=1513 на над не. 
# 2016feb29 ghost096.pl encodes t=1514 НЕТ to t=1780 НИХ Russian pronouns. 
# 2016mar01 ghost097.pl encodes t=1782 ОТ to t=1853 ПОНИМАТЬ bootstrap. 
# 2016mar01 ghost098.pl encodes t=1863 to t=2047; increases $cns to 3072. 
# 2016mar02 ghost099.pl encodes t=2051 to t=2084; assigns concept numbers.
# 2016mar02 ghost100.pl adds English prepositions; ends Russian MindBoot().
# 2016mar04 ghost101.pl uses $prc provisional recognition for verb-stems. 
# 2016mar05 ghost102.pl stores concept-numbers; stubs in robotic modules. 
# 2016mar06 ghost103.pl adds the six forms of это ("this") to MindBoot().
# 2016mar07 ghost104.pl fixes bug of incomplete insertion of @psy values. 
# 2016mar08 ghost105.pl AudMem retro-sets $audpsi; AudRecog finds word-stem.
# 2016mar10 ghost106.pl updates the Speech() module with $output for words. 
# 2016mar12 ghost107.pl addresses the InStantiate() insertion of $pre tags.
# 2016mar13 ghost108.pl addresses the InStantiate() insertion of $seq tags.
# 2016mar14 ghost109.pl replaces $kbr with $x[ ] for brevity in long lines.
# 2016mar15 ghost110.pl replaces $x[ ] with $k[ ] for @psy knowledge-nodes.
# 2016mar15 ghost111.pl retroactively inserts $seq for subjects and verbs.
# 2016mar19 ghost112.pl introduces new parser for prepositional phrases. 
# 2016mar19 ghost113.pl parses prep-phrase either before or after a subject. 
# 2016mar21 ghost114.pl treats two post-verb nouns as indirect & direct object.
# 2016mar23 ghost115.pl sets dba=3 for indirect object and dba=4 direct object.
# 2016mar26 ghost116.pl introduces $iob as @psy indirect-object associative tag.
# 2016mar27 ghost117.pl inserts $iob as $k[6] into time-of-verb row in Parser. 
# 2016mar27 ghost118.pl uses point-of-view $pov to interpret personal pronouns. 
# 2016mar29 ghost119.pl turns user input into output with correct point-of-view.
# 2016mar30 ghost120.pl stubs in EnPrep() and RuPrep() for prepositional phrases.
# 2016apr01 ghost121.pl fleshes out Russian modules for thinking with pronouns.
# 2016apr02 ghost122.pl stubs in VerbGen() for generating Russian verb-forms. 
# 2016apr02 ghpst123.pl fleshes out the AudBuffer() and OutBuffer() modules. 
# 2016apr03 ghost125.pl uses VerbGen() to find stem and add inflection of verb.
# 2016apr05 ghost127.pl reformulates RuAudRecog() to recognize Russian verb-stems. 
# 2016apr06 ghost128.pl fleshes out OldConcept() to retrieve flag-panel values. 
# 2016apr07 ghost129.pl EnNounPhrase() prepares to activate 701=I as a default. 
# 2016apr08 ghost130.pl stubs in the ReEntry() module for output to become input. 
# 2016apr09 ghost131.pl roughly implements ReEntry for responses to English input. 
# 2016apr10 ghost132.pl use parameters to find verb-form of $idea for ReEntry().
# 2016apr11 ghost133.pl begins to implement SpreadAct() for spreading activation.
# 2016apr12 ghost134.pl calls SpreadAct not from middle but from end of sentence. 
# 2016apr13 ghost135.pl implements verblock and nounlock; implements PsiDecay().
# 2016apr14 ghost136.pl limits SpreadAct() to augmenting only direct objects. 
# 2016apr14 ghost137.pl rejects verblock verb-form and finds the correct form.
# 2016apr15 ghost138.pl permits a chain of thought to delay calling AudInput(). 
# 2016apr16 ghost139.pl helps SpreadAct() to retrieve logically valid thoughts. 
# 2016apr17 ghost140.pl uses $inhibcon to inhibit a thought in favor of new ideas.
# 2016apr18 ghost141.pl implements ReJuvenate() module for potentially immortal AI.
# 2016apr19 ghost142.pl troubleshoots ReJuvenate() module to forget oldest memories.
# 2016apr20 ghost143.pl improves the ability of EnNounPhrase() to use correct forms. 
# 2016apr21 ghost144.pl shows engrams of generated idea; idea as output; input line. 
# 2016apr22 ghost145.pl solves a bug in AudRecog() to void premature $prc tags. 
# 2016apr23 ghost146.pl sends Russian output including RuVerbGen() into ReEntry().
# 2016apr24 ghost147.pl eradicates a bug in RuVerbPhrase omitting calls to Speech.
# 2016apr25 ghost148.pl improves the RuVerbPhrase() Russian verb-selection module.
# 2016apr27 ghost149.pl lets SpreadAct() activate an idea for EnNounPhrase().
# 2016apr27 ghost149.pl lets EnNounPhrase() select an idea enhanced by SpreadAct(). 
# 2016apr28 ghost150.pl lets RuNounPhrase() select an idea enhanced by SpreadAct(). 
# 2016apr29 ghost151.pl lets Volition() call Motorium() to execute action of a beep. 
# 2016apr30 ghost152.pl streamlines the diagnostic output; debugs EnVerbPhrase().
# 2016apr30 ghost153.pl debugs RuVerbPhrase() and cleans up RuVerbPhrase(). 
# 2016may01 ghost154.pl stubs in sensory GusRecog(); OlfRecog(); and TacRecog(); 
# 2016may01 ghost155.pl makes PsiDecay() move from positive or negative to zero.
# 2016may21 ghost156.pl adds one Russian idea from Dushka AI to the MindBoot().
# 2016may22 ghost157.pl de-globalizes $actbase; adds more Russian to MindBoot().
# 2016may23 ghost158.pl de-globalizes $binc; adds Russian sentence to MindBoot().
# 2016may25 ghost159.pl de-globalizes $tsels; corrects faulty MindBoot() data. 
# 2016may27 ghost160.pl de-globalizes $prevtag for the InStantiate() mind-module.
# 2016jun17 ghost161.pl introduces EnAuxVerb() for generating negational ideas. 
# 2016jun18 ghost162.pl sends old nouns into SpreadAct() for continuity of thought. 
# 2016jun19 ghost163.pl lets ReEntry() call SpreadAct() with last noun of input. 
# 2016jun21 ghost164.pl enables AudInput() to create diagnostic minddata.txt file.
# 2016jun24 ghost165.pl orchestrates activation-levels among knowledge-base ideas. 
# 2016jun26 ghost166.pl in Parser() corrects misallocation of $tdo $k[7] nounlock.
# 2016jun28 ghost168.pl shows re-emergence of stored knowledge by association. 
# 2016jun30 ghost170.pl with EnNounPhrase() retrieves subjects as part of an idea. 
# 2016JUL01 ghost171.pl is renamed ghost172.pl after removal of AudRecog debugging.
# 2016JUL04 ghost173.pl uses activation cap and PdiDecay() for meandering thoughts. 
# 2016JUL06 ghost174.pl implements the MindGrid as Theater of Neuronal Activations. 
# 2016JUL10 ghost175.pl lets ReEntry call SpreadAct with $actpsi from InStantiate.