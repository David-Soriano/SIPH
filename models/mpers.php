<?php 
    class Mpers{
        private $idper;
        private $nodocper;
        private $tdocper;
        private $nomper;
        private $apeper;
        private $idpef;
        private $pasper;
        private $emaper;
        private $celper;
        private $genper;
        private $fnaper;
        private $actper;

        public function getIdper($idper){
            return $this.$idper;
        }
        public function getNodocper($nodocper){
            return $this.$nodocper;
        }
        public function gettdocper($tdocper){
            return $this.$tdocper;
        }
        public function getNomper($nomper){
            return $this.$nomper;
        }
        public function getApeper($apeper){
            return $this.$apeper;
        }
        public function getIdpef($idpef){
            return $this.$idpef;
        }
        public function getPasper($pasper){
            return $this.$pasper;
        }
        public function getEmaper($emaper){
            return $this.$emaper;
        }
        public function getCelper($celper){
            return $this.$celper;
        }
        public function getGenper($genper){
            return $this.$genper;
        }
        public function getFnaper($fnaper){
            return $this.$fnaper;
        }
        public function getActper($actper){
            return $this.$actper;
        }
        public function setIdper($idper){
            $this->idper = $idper;
        }
        public function setNodocper($nodocper){
            $this->nodocper = $nodocper;
        }
        public function setTdocper($tdocper){
            $this->tdocper = $tdocper;
        }
        public function setNomper($nomper){
            $this->nomper = $nomper;
        }
        public function setApeper($apeper){
            $this->apeper = $apeper;
        }
        public function setIdpef($idpef){
            $this->idpef = $idpef;
        }
        public function setPasper($pasper){
            $this->pasper = $pasper;
        }
        public function setEmaper($emaper){
            $this->emaper = $emaper;
        }
        public function setCelper($celper){
            $this->celper = $celper;
        }
        public function setGenper($genper){
            $this->genper = $genper;
        }
        public function setFnaper($fnaper){
            $this->fnaper = $fnaper;
        }
        public function setActper($actper){
            $this->actper = $actper;
        }

        public function getAll(){
            $res = NULL;
        }
    }
?>