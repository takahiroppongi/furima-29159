const pay = ()=> {
  Payjp.setPublicKey("pk_test_9eb97da84dc866d1843fba1b");
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", () => {
  })
}

window.addEventListener("load", pay);
