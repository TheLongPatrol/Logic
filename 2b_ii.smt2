(set-option :produce-models true)
(declare-const p Bool)
(declare-const r Bool)
(declare-const q Bool)
(assert (not (= (and (or q (not r)) (or (not p) r) (or (not q) r p) (or p q (not q)) (or (not r) q)) (and (or q (not r)) (or (not p) r) (or (not q) r p) (or (not p) q) (or (not q) r)))))
(check-sat)
(get-model)