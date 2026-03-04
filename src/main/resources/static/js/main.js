document.addEventListener('DOMContentLoaded', function() {
    const languageSelect = document.getElementById('language');
    const customWrapper = document.getElementById('customLanguageWrapper');
    const customInput = document.getElementById('customLanguage');
    const form = document.querySelector('form');

    if (languageSelect && customWrapper && customInput) {
        
        function toggleCustomInput() {
            if (languageSelect.value === 'Other') {
                customWrapper.classList.remove('d-none');
                customInput.required = true;
            } else {
                customWrapper.classList.add('d-none');
                customInput.required = false;
            }
        }

        // Initial check (for validation reloads)
        toggleCustomInput();

        languageSelect.addEventListener('change', toggleCustomInput);

        if (form) {
            form.addEventListener('submit', function() {
                if (languageSelect.value === 'Other' && customInput.value.trim() !== '') {
                    // Update the 'Other' option value so it gets submitted as the language
                    const otherOption = languageSelect.querySelector('option[value="Other"]');
                    otherOption.value = customInput.value;
                }
            });
        }
    }
});
