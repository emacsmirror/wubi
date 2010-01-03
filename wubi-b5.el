;;; wubi.el --- chinese-wubi input method in Emacs -*- coding: big5; -*-

;; Copyright (C) 2005, 2007 William Xu

;; Authors: William Xu <william.xwl@gmail.com>

;; Last updated: 2007/03/17 20:50:35

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
;; 02110-1301 USA

;;; Commentary:

;; Put this file into your load-path and the following into your
;; ~/.emacs:
;;
;; (require 'wubi)
;; (register-input-method
;;  "chinese-wubi" "Chinese" 'quail-use-package "wubi" "wubi")
;; (wubi-load-local-phrases)
;; (setq default-input-method "chinese-wubi")

;;; History

;; This is forked from Yuwen Dai <daiyuwen@freeshell.org>'s wubi.el
;; extension.

;;; Code:

(require 'quail)

(defgroup wubi nil
  "chinese-wubi input method.")

(defcustom wubi-phrases-file "~/.wubi-phrases.el"
  "User could add new phrases here."
  :type 'string
  :group 'wubi)

(quail-define-package "chinese-wubi" "Chinese" "�����r��"
 '((121 . "��y")
   (120 . "��x")
   (119 . "�Hw")
   (118 . "�kv")
   (117 . "��u")
   (116 . "��t")
   (115 . "��s")
   (114 . "��r")
   (113 . "��r")
   (112 . "��p")
   (111 . "��o")
   (110 . "�wn")
   (109 . "�sm")
   (108 . "��l")
   (107 . "�fk")
   (106 . "��j")
   (105 . "��i")
   (104 . "��h")
   (103 . "��g")
   (102 . "�gf")
   (101 . "��e")
   (100 . "�jd")
   (99  . "�Sc")
   (98  . "�lb")
   (97  . "�ua")
)"�~�r��J�������r����
Created by Dai Yuwen. daiyuwen@freeshell.org

	�����r���~�r�s�X���

 ��  ��  �X  ��W  ���ΡB�򥻦r��

	 g     (11)  ��   �@,��,̱
  f  �� (12)  �g   �G,�h,�Q,�z,�o,�B
	 d  �_ (13)  �j   �T,��,��,�j,�t
	 s  �� (14)  ��   ��,�B
	 a     (15)  �u   �C,�C�|,��,�{����

	 h     (21)  ��   �W,��,�R
  j  �� (22)  ��   ��,��,��,��
	 k  �_ (23)  �f   �t
	 l  �� (24)  ��   ��,�I,�|��,��,�O
	 m     (25)  �s   ��,��,��,�L

	 t     (31)  ��   ��,��,�L,����
  r  �J (32)  ��   �⡼,��
	 e  �_ (33)  ��   ��,��,��,�D,��
	 w  �� (34)  �H   ��,�K
	 q     (35)  ��   ����,���i��,��

	 y     (41)  ��   ��,��,�s,��,��
  u  �� (42)  ��   ����,��,��,��,��
	 i  �_ (43)  ��   ��,�p
	 o  �� (44)  ��   ��,��
	 p     (45)  ��   ����,����

	 n     (51)  �w   �A,�w�v�x,�r,�ߡ�,��
  b  �� (52)  �l   �m,�B,�F,��,��,��,�]
	 v  �_ (53)  �k   ��,�M,�E,��,��
	 c  �� (54)  �S   ��,��,��
	 x     (55)  ��   ��,�},�P

              ��W��
  (���): �u �� �j �g ��
  (���): �� �� �f �� �s
  (�J��): �� �H �� �� ��
  (�̰�): �� �� �� �� ��
  (���): �w �l �k �S ��

              �U�O��
  G ���ǫC�Y̱���@
  F �g�h�G�z�Q�o�B
  D �j���T�ϥj�ۼt
  S ��B��
  A �u����Y�k�ؤC

  H �ب�W��R��� (��W ����r���W�� �B)
  J �馭��ݻP���
  K �f�P�t, �r�ڵ}
  L �ХҤ�إ|���O
  M �s�Ѩ�, �U�ؤL

  T �ݦˤ@�J���H��, �Ϥ���Y�@�T�@
  R �դ���Y�T�G�� (�T�G ���䬰 32)
  E �롼�D�ήa�穳
  W �H�M�K, �T�|�� (�T�| �Y 34)
  Q ���c���I�L����, ���ǯdX��@�I�i, ��L�C(�d)

  Y �����s�b�|�@, ���Y�@�֤̽H�h
  U �ߨ����I�����f
  I ���ǿ��Y�p�˥�
  O ���~�Y, �|�I��
  P ���_�\, �K(��)(��)

  N �w�b�x�����X�v ���ا�r�ߩM��
  B �l�դF�]�ئV�W
  V �k�M�E�ݤs�¦�
  C �S�ڰ� ��ڨo
  X �O���L�ߤ}�M�P ���L�O
"
 '(("" . quail-delete-last-char)
   (" " . quail-select-current)
;;    ("." . quail-next-translation)
;;    (">" . quail-next-translation)
;;    ("," . quail-prev-translation)
;;    ("<" . quail-prev-translation)
   )
  nil nil nil nil)

(put 'wubi-table 'char-table-extra-slots 0)

(defvar wubi-table (make-char-table 'wubi-table nil))

;; standard phrases
(load "wubi-rules.el")

;; local phrases
(defun wubi-load-local-phrases ()
  "Load phrases from `wubi-phrases-file'."
  (interactive)
  (load wubi-phrases-file)
  (mapc (lambda (rule)
	  (quail-defrule-internal
	   (car rule) (cadr rule) (quail-map) t))
	wubi-local-phrases))


;;; Quanjiao(����)/Banjiao(�b��) symbols

(defvar wubi-quanjiaop t
  "Whether in quanjiao mode or not.")

(defvar wubi-ascii-quanjiao-banjiao-table
      '(("/" (["�B"]) (["/"]))
	("," (["�A"]) ([","]))
	("." (["�C"]) (["."]))
	("*" (["�P"]) (["*"]))
	("'" (["��" "��"]) (["'"]))
	("\"" (["��" "��"]) (["\""]))
	(":" (["�G"]) ([":"]))
	("\;" (["�Q"]) ([";"]))
	("?" (["�H"]) (["?"]))
	("!" (["�I"]) (["!"]))
	("(" (["�]"]) (["("]))
	(")" (["�^"]) ([")"]))
	("<" (["�m" "�q"]) (["<"]))
	(">" (["�n" "�r"]) ([">"]))
	("[" (["[" "�i" "��"]) (["["]))
	("]" (["]" "�j" "��"]) (["]"]))
	("\\" (["�K"]) (["\\"]))
	("-" (["-" "�X"]) (["-"])))
      "ascii, quanjiao, banjiao table.")

(defun wubi-toggle-quanjiao-banjiao ()
  "Toggle quanjiao(����)/banjiao(�b��)."
  (interactive)
  (setq wubi-quanjiaop (not wubi-quanjiaop))
  (if wubi-quanjiaop
      (message "�i�J�������I�Ҧ�")
    (message "�i�J�b�����I�Ҧ�"))
  (mapc
   (lambda (ascii-quajiao-banjiao)
     ;; redefine rules
     (quail-defrule-internal
      (car ascii-quajiao-banjiao)
      (if wubi-quanjiaop
	  (cadr ascii-quajiao-banjiao)
	(caddr ascii-quajiao-banjiao))
      (quail-map))
     ;; install new keys
     (quail-lookup-key (car ascii-quajiao-banjiao)))
   wubi-ascii-quanjiao-banjiao-table))

(provide 'wubi)

;;; wubi.el ends here
