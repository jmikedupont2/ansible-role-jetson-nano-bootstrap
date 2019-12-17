
;;; load packages
(require 'package)
(require 'cask "~/nano/jetson_nano_bootstrap/.cask/25.2/elpa/cask-20191004.1155/cask.el")
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; comment/uncomment these two lines to enable/disable melpa and melpa stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; for important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(cask-initialize "~/nano/jetson_nano_bootstrap/")
