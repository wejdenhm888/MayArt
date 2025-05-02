const variable_form = document.querySelector("form");
const liste_input = document.querySelectorAll("input");
console.log(liste_input);
const variable_main = document.querySelector("main");
const variable_cadre = document.querySelector(".cadre");
const input_nom = liste_input[0];
const input_numero = liste_input[1];
const input_date = liste_input[2];
const input_cvv = liste_input[3];
const input_code = liste_input[4];
const input_submit = liste_input[5];
let nom = "";

const addMessage = (input, id, message, type = "error") => {
    let messageSpan = document.getElementById(id);
    if (!messageSpan) {
        messageSpan = document.createElement("span");
        messageSpan.id = id;
        messageSpan.className = type;
        messageSpan.style.color = type === "error" ? "red" : "orange";
        messageSpan.style.fontSize = "12px";
        messageSpan.style.display = "none";
        messageSpan.textContent =
            type === "error" ? `ATTENTION ! ${message}` : message;
        // Positionner les messages d'erreur "ATTENTION ! ..." après le champ, et les messages "empty" avant
        if (type === "error") {
            input.insertAdjacentElement("afterend", messageSpan);
        } else {
            input.insertAdjacentElement("beforebegin", messageSpan);
        }
    }
    return messageSpan;
};

const nomError = addMessage(
    input_nom,
    "nomError",
    "Le nom doit contenir uniquement des lettres et des espaces",
    "error"
);
const numeroError = addMessage(
    input_numero,
    "numeroError",
    "Le numéro doit contenir exactement 16 chiffres",
    "error"
);
const dateError = addMessage(
    input_date,
    "dateError",
    "La date d'expiration doit être future",
    "error"
);
const cvvError = addMessage(
    input_cvv,
    "cvvError",
    "Le CVV doit contenir 3 ou 4 chiffres",
    "error"
);
const codeError = addMessage(
    input_code,
    "codeError",
    "Le code doit contenir exactement 4 chiffres",
    "error"
);

const nomEmpty = addMessage(
    input_nom,
    "nomEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const numeroEmpty = addMessage(
    input_numero,
    "numeroEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const dateEmpty = addMessage(
    input_date,
    "dateEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const cvvEmpty = addMessage(
    input_cvv,
    "cvvEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const codeEmpty = addMessage(
    input_code,
    "codeEmpty",
    "Veuillez remplir ce champ",
    "empty"
);

function validateNom() {
    const value = input_nom.value.trim();
    const isValid = /^[a-zA-Z\s]+$/.test(value) && value.length > 0;
    return isValid;
}

function validateNumero() {
    const value = input_numero.value.replace(/\D/g, "");
    const isValid = /^\d{16}$/.test(value);
    return isValid;
}

function validateDate() {
    const date = new Date(input_date.value);
    const today = new Date();
    const isValid = date > today && input_date.value !== "";
    return isValid;
}

function validateCvv() {
    const value = input_cvv.value;
    const isValid = /^\d{3,4}$/.test(value);
    return isValid;
}

function validateCode() {
    const value = input_code.value;
    const isValid = /^\d{4}$/.test(value);
    return isValid;
}

const shakeAnimation = (element) => {
    if (!element) {
        console.error("Element is undefined or null");
        return;
    }
    element.animate(
        [
            { transform: "translateX(0)" },
            { transform: "translateX(-10px)" },
            { transform: "translateX(10px)" },
            { transform: "translateX(-10px)" },
            { transform: "translateX(10px)" },
            { transform: "translateX(0)" },
        ],
        {
            duration: 300,
            iterations: 1,
        }
    );
};

input_nom.addEventListener("input", (e) => {
    nom = e.target.value;
    console.log(`Le nom est : ${nom}`);
    const isValid = validateNom();
    if (document.activeElement === input_nom) {
        nomError.style.display = isValid ? "none" : "block";
        nomEmpty.style.display = nom ? "none" : "block";
    }
    checkFormValidity();
});

input_numero.addEventListener("input", (e) => {
    const originalValue = e.target.value;
    const cleanedValue = originalValue.replace(/\D/g, "");
    const isInvalidCharEntered = originalValue !== cleanedValue;
    let value = cleanedValue;
    value = value.replace(/(\d{4})/g, "$1 ").trim();
    e.target.value = value;
    const isValid = validateNumero();
    if (document.activeElement === input_numero) {
        numeroError.style.display =
            isInvalidCharEntered || !isValid ? "block" : "none";
        numeroEmpty.style.display = value ? "none" : "block";
    }
    checkFormValidity();
});

input_date.addEventListener("input", () => {
    const isValid = validateDate();
    if (document.activeElement === input_date) {
        dateError.style.display = isValid ? "none" : "block";
        dateEmpty.style.display = input_date.value ? "none" : "block";
    }
    checkFormValidity();
});

input_date.addEventListener("change", () => {
    const isValid = validateDate();
    if (document.activeElement === input_date) {
        dateError.style.display = isValid ? "none" : "block";
        dateEmpty.style.display = input_date.value ? "none" : "block";
    }
    checkFormValidity();
});

input_cvv.addEventListener("input", () => {
    const isValid = validateCvv();
    if (document.activeElement === input_cvv) {
        cvvError.style.display = isValid ? "none" : "block";
        cvvEmpty.style.display = input_cvv.value ? "none" : "block";
    }
    checkFormValidity();
});

input_code.addEventListener("input", () => {
    const isValid = validateCode();
    if (document.activeElement === input_code) {
        codeError.style.display = isValid ? "none" : "block";
        codeEmpty.style.display = input_code.value ? "none" : "block";
    }
    checkFormValidity();
});

input_nom.addEventListener("focus", () => {
    const isValid = validateNom();
    nomError.style.display = isValid ? "none" : "block";
});
input_nom.addEventListener("blur", () => {
    nomError.style.display = "none";
    nomEmpty.style.display = "none";
});

input_numero.addEventListener("focus", () => {
    const isValid = validateNumero();
    numeroError.style.display = isValid ? "none" : "block";
});
input_numero.addEventListener("blur", () => {
    numeroError.style.display = "none";
    numeroEmpty.style.display = "none";
});

input_date.addEventListener("focus", () => {
    const isValid = validateDate();
    dateError.style.display = isValid ? "none" : "block";
});
input_date.addEventListener("blur", () => {
    dateError.style.display = "none";
    dateEmpty.style.display = "none";
});

input_cvv.addEventListener("focus", () => {
    const isValid = validateCvv();
    cvvError.style.display = isValid ? "none" : "block";
});
input_cvv.addEventListener("blur", () => {
    cvvError.style.display = "none";
    cvvEmpty.style.display = "none";
});

input_code.addEventListener("focus", () => {
    const isValid = validateCode();
    codeError.style.display = isValid ? "none" : "block";
});
input_code.addEventListener("blur", () => {
    codeError.style.display = "none";
    codeEmpty.style.display = "none";
});

function checkFormValidity() {
    const isValid =
        validateNom() &&
        validateNumero() &&
        validateDate() &&
        validateCvv() &&
        validateCode();
    input_submit.style.opacity = isValid ? "1" : "0.5";
}

checkFormValidity();

variable_form.addEventListener("submit", (e) => {
    e.preventDefault();

    const fields = [
        {
            input: input_nom,
            empty: nomEmpty,
            error: nomError,
            validate: validateNom,
        },
        {
            input: input_numero,
            empty: numeroEmpty,
            error: numeroError,
            validate: validateNumero,
        },
        {
            input: input_date,
            empty: dateEmpty,
            error: dateError,
            validate: validateDate,
        },
        {
            input: input_cvv,
            empty: cvvEmpty,
            error: cvvError,
            validate: validateCvv,
        },
        {
            input: input_code,
            empty: codeEmpty,
            error: codeError,
            validate: validateCode,
        },
    ];

    let hasErrors = false;

    fields.forEach((field) => {
        const isEmpty = !field.input.value.trim();
        const isInvalid = !field.validate();

        if (isEmpty) {
            field.empty.style.display = "block";
            shakeAnimation(field.input);
            hasErrors = true;
        } else {
            field.empty.style.display = "none";
        }

        if (!isEmpty && isInvalid) {
            field.error.style.display = "block";
            shakeAnimation(field.input);
            hasErrors = true;
        } else if (!isEmpty) {
            field.error.style.display = "none";
        }
    });

    if (hasErrors) {
        shakeAnimation(input_submit);
        return;
    }

    console.log("tous les champs ont été remplis et sont valides");
    variable_cadre.style.display = "none";
    variable_main.innerHTML += `
        <div class="cadre_apres_pay">
            <h2 class="titre_apres_pay">Madame/Monsieur : ${nom} </h2>
            <h2 class="titre_apres_pay">Merci d'avoir payé</h2>
        </div>
    `;
    const cadreApresPay = document.querySelector(".cadre_apres_pay");
    setTimeout(() => {
        cadreApresPay.style.opacity = "1";
    }, 100);
    cadreApresPay.animate(
        [
            { transform: "scale(1)" },
            { transform: "scale(1.05)" },
            { transform: "scale(1)" },
        ],
        {
            duration: 900,
        }
    );
});

function verifierChampsNonVides() {
    const tousLesInputs = document.querySelectorAll(
        "form input:not([type='submit'])"
    );
    return Array.from(tousLesInputs).every(
        (input) => input.value.trim() !== ""
    );
}
