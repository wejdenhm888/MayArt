const nameInput = document.getElementById("nom");
const emailInput = document.getElementById("mail");
const subjectInput = document.getElementById("sujet");
const messageInput = document.getElementById("message");
const submitButton = document.querySelector(".section3 input[type='submit']");

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

const nameError = addMessage(
    nameInput,
    "nameError",
    "Le nom doit contenir au moins 2 caractères",
    "error"
);
const emailError = addMessage(
    emailInput,
    "emailError",
    "Veuillez entrer une adresse e-mail valide",
    "error"
);
const messageError = addMessage(
    messageInput,
    "messageError",
    "Le message doit contenir au moins 10 caractères",
    "error"
);

const nameEmpty = addMessage(
    nameInput,
    "nameEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const emailEmpty = addMessage(
    emailInput,
    "emailEmpty",
    "Veuillez remplir ce champ",
    "empty"
);
const messageEmpty = addMessage(
    messageInput,
    "messageEmpty",
    "Veuillez remplir ce champ",
    "empty"
);

function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}

const shakeAnimation = (element) => {
    element.animate(
        [
            { transform: "translateX(0)" },
            { transform: "translateX(-10px)" },
            { transform: "translateX(10px)" },
            { transform: "translateX(-10px)" },
            { transform: "translateX(10px)" },
            { transform: "translateX(0)" },
        ],
        { duration: 300, iterations: 1 }
    );
};

nameInput.addEventListener("input", () => {
    const isValid = nameInput.value.trim().length >= 2;
    if (document.activeElement === nameInput) {
        nameError.style.display = isValid ? "none" : "block";
        nameEmpty.style.display = nameInput.value ? "none" : "block";
    }
});

emailInput.addEventListener("input", () => {
    const isValid = validateEmail(emailInput.value);
    if (document.activeElement === emailInput) {
        emailError.style.display = isValid ? "none" : "block";
        emailEmpty.style.display = emailInput.value ? "none" : "block";
    }
});

messageInput.addEventListener("input", () => {
    const isValid = messageInput.value.trim().length >= 10;
    if (document.activeElement === messageInput) {
        messageError.style.display = isValid ? "none" : "block";
        messageEmpty.style.display = messageInput.value ? "none" : "block";
    }
});

nameInput.addEventListener("focus", () => {
    const isValid = nameInput.value.trim().length >= 2;
    nameError.style.display = isValid ? "none" : "block";
});
nameInput.addEventListener("blur", () => {
    nameError.style.display = "none";
    nameEmpty.style.display = "none";
});

emailInput.addEventListener("focus", () => {
    const isValid = validateEmail(emailInput.value);
    emailError.style.display = isValid ? "none" : "block";
});
emailInput.addEventListener("blur", () => {
    emailError.style.display = "none";
    emailEmpty.style.display = "none";
});

messageInput.addEventListener("focus", () => {
    const isValid = messageInput.value.trim().length >= 10;
    messageError.style.display = isValid ? "none" : "block";
});
messageInput.addEventListener("blur", () => {
    messageError.style.display = "none";
    messageEmpty.style.display = "none";
});

submitButton.addEventListener("click", (e) => {
    //e.preventDefault();

    let hasErrors = false;

    const fields = [
        {
            input: nameInput,
            empty: nameEmpty,
            error: nameError,
            validate: () => nameInput.value.trim().length >= 2,
        },
        {
            input: emailInput,
            empty: emailEmpty,
            error: emailError,
            validate: () => validateEmail(emailInput.value),
        },
        {
            input: messageInput,
            empty: messageEmpty,
            error: messageError,
            validate: () => messageInput.value.trim().length >= 10,
        },
    ];

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
        shakeAnimation(submitButton);
        return;
    }

    alert("Formulaire envoyé avec succès !");
    nameInput.value = "";
    emailInput.value = "";
    subjectInput.value = "";
    messageInput.value = "";
    document
        .querySelectorAll("span")
        .forEach((span) => (span.style.display = "none"));
});
