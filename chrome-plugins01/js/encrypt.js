((window, document, undefined) => {
  document.addEventListener('DOMContentLoaded', () => {
    let encryptButton = document.getElementById('j_encrypt');
    let decryptButton = document.getElementById('j_decrypt');
    let inputArea = document.getElementById('j_input');
    let outputArea = document.getElementById('j_output');

    function encryptData() {
      console.log('hihi');
    }

    function decryptData() {
      console.log('hehe');
    }

    encryptButton.addEventListener('click', encryptData);
    decryptButton.addEventListener('click', decryptData);
  });
})(window, document)