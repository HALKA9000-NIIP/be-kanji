import "./lib/ids_renderer/main";
let nest = {
  head: {
    lg: "邊",
    expl: {
      j: "旧字体",
      c: "繁体字",
    },
    cr: {
      lib: ["へだる", "ライブラリ", "hedalu244"],
      idea: ["ソケセテ", "元アイデア", "madeinwariofan"],
      pack: ["Takuya", "最終実装", "Takuya_M_Somese"],
    },
    license: ["CC BY SA", "GNU GPLv3"],
  },
  data: {
    a1: ["⻎", "⻍"],
    a2: ["一", ""],
    a3: ["自", "白", "目", "日"],
    a4: ["宀", "冖", "冖", ""],
    a5: ["ハ", "儿", ""],
    a6: ["方", "口", "万", "刀", "力", "勹"],
  },
  mktitle: function () {
    return (
      this.head.lg +
      "メーカー： 「" +
      this.head.lg +
      "」(" +
      this.head.expl.j +
      "/" +
      this.head.expl.c +
      ") の異体字"
    );
  },
  mklicensed: function () {
    let licensed =
      " , licensed by " + this.head.license[0] + " and " + this.head.license[1];
    return licensed;
  },
  mkcopyright: function () {
    let curdate = new Date();
    let thisyear = curdate.getFullYear();
    let cryears;
    let baseyear = 2020;
    let i;
    if (thisyear > baseyear) {
      cryears = "" + baseyear + "~" + thisyear;
    } else {
      cryears = "" + baseyear;
    }
    let crnamel =
      '<a href="http://twitter.com/' +
      this.head.cr.lib[2] +
      '">' +
      this.head.cr.lib[0] +
      "</a>(" +
      this.head.cr.lib[1] +
      "), ";
    let crnamei =
      '<a href="http://twitter.com/' +
      this.head.cr.idea[2] +
      '">' +
      this.head.cr.idea[0] +
      "</a>(" +
      this.head.cr.idea[1] +
      "), ";
    let crnamep =
      '<a href="http://twitter.com/' +
      this.head.cr.pack[2] +
      '">' +
      this.head.cr.pack[0] +
      "</a>(" +
      this.head.cr.pack[1] +
      ")";
    let crnames = crnamel + crnamei + crnamep;
    let copyleft = '<span class="flip-horizontal">©</span>';
    let crls = this.mklicensed();
    return copyleft + "copyright " + cryears + " by " + crnames + crls;
  },
  beize: function (i1, i2, i3, i4, i5, i6) {
    let be_in = this.data.a1[i1];
  },
};
window.onload = function () {
  document.getElementById("heading").textContent = nest.mktitle();
  let el = document.getElementById("copyright");
  el.innerHTML = nest.mkcopyright();
};
function test() {}
