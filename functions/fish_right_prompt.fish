function kubectl_status
  [ -z "$KUBECTL_PROMPT_ICON" ]; and set -l KUBECTL_PROMPT_ICON "⎈"
  [ -z "$KUBECTL_PROMPT_SEPARATOR" ]; and set -l KUBECTL_PROMPT_SEPARATOR "/"
  set -l ctx (get_kubectl_context) 
  echo (set_color cyan)$KUBECTL_PROMPT_ICON" "(set_color white)"($ctx)"
end

function fish_right_prompt
  echo (kubectl_status)
end
