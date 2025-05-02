const variable_form = document.querySelector("form");
const input_prenom = document.querySelector("#prenom");
const input_nom = document.querySelector("#nom");
const input_region = document.querySelector("#region");
const input_adresse = document.querySelector("#adresse");
const input_ville = document.querySelector("#ville");
const input_codep = document.querySelector("#codep");
const input_tel = document.querySelector("#tel");
const input_admail = document.querySelector("#admail");
const input_further = document.querySelector("#further");
//const input_bancaire = document.querySelector("#bancaire");
//const input_livraison = document.querySelector("#livraison");
const input_submit = document.querySelector("input[type='submit']");

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
        if (type === "error") {
            input.insertAdjacentElement("afterend", messageSpan);
        } else {
            input.insertAdjacentElement("beforebegin", messageSpan);
        }
    }
    return messageSpan;
};

const prenomError = addMessage(
    input_prenom,
    "prenomError",
    "Le prénom doit contenir uniquement des lettres et des espaces",
    "error"
);
const nomError = addMessage(
    input_nom,
    "nomError",
    "Le nom doit contenir uniquement des lettres et des espaces",
    "error"
);
const villeError = addMessage(
    input_ville,
    "villeError",
    "La ville doit contenir uniquement des lettres et des espaces",
    "error"
);
const codepError = addMessage(
    input_codep,
    "codepError",
    "Le code postal doit contenir exactement 4 chiffres",
    "error"
);
const telError = addMessage(
    input_tel,
    "telError",
    "Le téléphone doit être au format +216 suivi de 8 chiffres",
    "error"
);
const admailError = addMessage(
    input_admail,
    "admailError",
    "L'adresse e-mail doit être valide",
    "error"
);
const paymentError = addMessage(
    input_livraison,
    "paymentError",
    "Veuillez sélectionner une méthode de paiement",
    "error"
);

const prenomEmpty = addMessage(
    input_prenom,
    "prenomEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const nomEmpty = addMessage(
    input_nom,
    "nomEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const regionEmpty = addMessage(
    input_region,
    "regionEmpty",
    "Veuillez sélectionner une région",
    "empty"
);
const adresseEmpty = addMessage(
    input_adresse,
    "adresseEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const villeEmpty = addMessage(
    input_ville,
    "villeEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const codepEmpty = addMessage(
    input_codep,
    "codepEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const telEmpty = addMessage(
    input_tel,
    "telEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const admailEmpty = addMessage(
    input_admail,
    "admailEmpty",
    "Veuillez remplir ce champ",
    "empty"
);

function validatePrenom() {
    const value = input_prenom.value.trim();
    return /^[a-zA-Z\s]+$/.test(value) && value.length > 0;
}

function validateNom() {
    const value = input_nom.value.trim();
    return /^[a-zA-Z\s]+$/.test(value) && value.length > 0;
}

function validateVille() {
    const value = input_ville.value.trim();
    return /^[a-zA-Z\s]+$/.test(value) && value.length > 0;
}

function validateCodep() {
    const value = input_codep.value.trim();
    return /^\d{4}$/.test(value);
}

function validateTel() {
    const value = input_tel.value.trim();
    return /\d{8}/.test(value);
}

function validateAdmail() {
    const value = input_admail.value.trim();
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
}

//function validatePayment() {
   // return input_bancaire.checked || input_livraison.checked;
//}

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

input_prenom.addEventListener("input", () => {
    const isValid = validatePrenom();
    if (document.activeElement === input_prenom) {
        prenomError.style.display = isValid ? "none" : "block";
        prenomEmpty.style.display = input_prenom.value.trim()
            ? "none"
            : "block";
    }
});

input_nom.addEventListener("input", () => {
    const isValid = validateNom();
    if (document.activeElement === input_nom) {
        nomError.style.display = isValid ? "none" : "block";
        nomEmpty.style.display = input_nom.value.trim() ? "none" : "block";
    }
});

input_region.addEventListener("change", () => {
    regionEmpty.style.display = input_region.value ? "none" : "block";
});

input_adresse.addEventListener("input", () => {
    adresseEmpty.style.display = input_adresse.value.trim() ? "none" : "block";
});

input_ville.addEventListener("input", () => {
    const isValid = validateVille();
    if (document.activeElement === input_ville) {
        villeError.style.display = isValid ? "none" : "block";
        villeEmpty.style.display = input_ville.value.trim() ? "none" : "block";
    }
});

input_codep.addEventListener("input", () => {
    const isValid = validateCodep();
    if (document.activeElement === input_codep) {
        codepError.style.display = isValid ? "none" : "block";
        codepEmpty.style.display = input_codep.value.trim() ? "none" : "block";
    }
});

input_tel.addEventListener("input", () => {
    const isValid = validateTel();
    if (document.activeElement === input_tel) {
        telError.style.display = isValid ? "none" : "block";
        telEmpty.style.display = input_tel.value.trim() ? "none" : "block";
    }
});

input_admail.addEventListener("input", () => {
    const isValid = validateAdmail();
    if (document.activeElement === input_admail) {
        admailError.style.display = isValid ? "none" : "block";
        admailEmpty.style.display = input_admail.value.trim()
            ? "none"
            : "block";
    }
});

input_prenom.addEventListener("focus", () => {
    const isValid = validatePrenom();
    prenomError.style.display = isValid ? "none" : "block";
});
input_prenom.addEventListener("blur", () => {
    prenomError.style.display = "none";
    prenomEmpty.style.display = "none";
});

input_nom.addEventListener("focus", () => {
    const isValid = validateNom();
    nomError.style.display = isValid ? "none" : "block";
});
input_nom.addEventListener("blur", () => {
    nomError.style.display = "none";
    nomEmpty.style.display = "none";
});

input_region.addEventListener("focus", () => {
    regionEmpty.style.display = input_region.value ? "none" : "block";
});
input_region.addEventListener("blur", () => {
    regionEmpty.style.display = "none";
});

input_adresse.addEventListener("focus", () => {
    adresseEmpty.style.display = input_adresse.value.trim() ? "none" : "block";
});
input_adresse.addEventListener("blur", () => {
    adresseEmpty.style.display = "none";
});

input_ville.addEventListener("focus", () => {
    const isValid = validateVille();
    villeError.style.display = isValid ? "none" : "block";
});
input_ville.addEventListener("blur", () => {
    villeError.style.display = "none";
    villeEmpty.style.display = "none";
});

input_codep.addEventListener("focus", () => {
    const isValid = validateCodep();
    codepError.style.display = isValid ? "none" : "block";
});
input_codep.addEventListener("blur", () => {
    codepError.style.display = "none";
    codepEmpty.style.display = "none";
});

input_tel.addEventListener("focus", () => {
    const isValid = validateTel();
    telError.style.display = isValid ? "none" : "block";
});
input_tel.addEventListener("blur", () => {
    telError.style.display = "none";
    telEmpty.style.display = "none";
});

input_admail.addEventListener("focus", () => {
    const isValid = validateAdmail();
    admailError.style.display = isValid ? "none" : "block";
});
input_admail.addEventListener("blur", () => {
    admailError.style.display = "none";
    admailEmpty.style.display = "none";
});

variable_form.addEventListener("submit", (e) => {
    e.preventDefault();

    const fields = [
        {
            input: input_prenom,
            empty: prenomEmpty,
            error: prenomError,
            validate: validatePrenom,
        },
        {
            input: input_nom,
            empty: nomEmpty,
            error: nomError,
            validate: validateNom,
        },
        {
            input: input_region,
            empty: regionEmpty,
            validate: () => input_region.value,
        },
        {
            input: input_adresse,
            empty: adresseEmpty,
            validate: () => input_adresse.value.trim(),
        },
        {
            input: input_ville,
            empty: villeEmpty,
            error: villeError,
            validate: validateVille,
        },
        {
            input: input_codep,
            empty: codepEmpty,
            error: codepError,
            validate: validateCodep,
        },
        {
            input: input_tel,
            empty: telEmpty,
            error: telError,
            validate: validateTel,
        },
        {
            input: input_admail,
            empty: admailEmpty,
            error: admailError,
            validate: validateAdmail,
        },
    ];

    let hasErrors = false;

    fields.forEach((field) => {
        const isEmpty = !field.input.value.trim();
        const isInvalid = field.validate ? !field.validate() : false;

        if (isEmpty) {
            field.empty.style.display = "block";
            shakeAnimation(field.input);
            hasErrors = true;
        } else {
            field.empty.style.display = "none";
        }

        if (!isEmpty && isInvalid) {
            if (field.error) field.error.style.display = "block";
            shakeAnimation(field.input);
            hasErrors = true;
        } else if (!isEmpty && field.error) {
            field.error.style.display = "none";
        }
    });

    // Si aucune erreur, on redirige vers paiement.php
    if (!hasErrors) {
        window.location.href = "paiement.html";
    } else {
        shakeAnimation(input_submit);
    }
});

   /* const paymentValid = validatePayment();
    if (!paymentValid) {
        paymentError.style.display = "block";
        shakeAnimation(input_livraison);
        hasErrors = true;
    } else {
        paymentError.style.display = "none";
    }

    if (hasErrors) {
        shakeAnimation(input_submit);
        return;
    }

    console.log("Tous les champs ont été remplis et sont valides");
    if (input_bancaire.checked) {
        window.location.href = "Paiement.html";
    }
});*/
