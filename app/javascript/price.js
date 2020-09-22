function tax() {

  const price = document.getElementById("item-price");
  price.addEventListener('input', function() {
    const add_tax = document.getElementById("add-tax-price"); //挿入先の要素
    const profit = document.getElementById("profit");
    x = price.value;// priceという要素から数字を取得
    let calc_tax = x / 10 // これが手数料
    let calc_profit = x - calc_tax
    add_tax.innerHTML = calc_tax // これが販売利益
    profit.innerHTML = calc_profit // 右側に挿入したいものを持ってくる // ここで計算結果を要素に挿入
  });
}
window.addEventListener("load",tax)