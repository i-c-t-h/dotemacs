;; https://emacsredux.com/blog/2025/03/28/speed-up-emacs-startup-by-tweaking-the-gc-settings/
;; Temporarily increase GC threshold during startup
(setq gc-cons-threshold most-positive-fixnum)

;; Restore to normal value after startup (e.g. 50MB)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 50 1024 1024))))
