
    <h2>alhamdo li Allah code was correct, redirecting....</h2>

    <form method="post" action="{{ .target_url }}" style="display:none;" id="redirect-form">
      {{context.authenticityFormElement()}}
      <input type="hidden" name="payload_encrypted" value="{{ .payload_encrypted }}" />
    </form>
    <script>
        document.getElementById("redirect-form").submit();
    </script>