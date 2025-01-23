<?php

include 'config.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RIG.PH | Privacy Policy]</title>
    <link rel="icon" type="image/x-icon" href="images/RIGfavi.ico">

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <style>
        /* General Styles */
    body {
        font-family: 'Rubik', sans-serif;
        font-size: 1.6rem;
        line-height: 1.8;
        background-color: #f9f9f9;
        color: #333;
        margin: 0;
        padding: 0;
    }

    /* Header Section */
    header {
        background-color: #00599c;
        color: #ffffff;
        padding: 2rem 1.5rem;
        text-align: center;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    header h1 {
        font-size: 3rem;
        margin: 0;
        text-transform: uppercase;
        letter-spacing: 0.1rem;
    }

    /* Main Content */
    main {
        max-width: 900px;
        margin: 3rem auto;
        padding: 2rem;
        background-color: #ffffff;
        border-radius: 1rem;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    }

    section {
        margin-bottom: 2rem;
        padding-bottom: 1.5rem;
        border-bottom: 1px solid #eee;
    }

    section:last-child {
        border-bottom: none;
    }

    section h2 {
        font-size: 2.4rem;
        color: #00599c;
        margin-bottom: 1rem;
        text-transform: capitalize;
    }

    section p, section ul {
        font-size: 1.6rem;
        color: #111111;
        margin-bottom: 1rem;
    }

    section ul {
        padding-left: 2rem;
        list-style-type: disc;
    }

    section ul li {
        margin-bottom: 0.8rem;
    }

    /* Links */
    a {
        color: #00599c;
    }
    </style>

</head>
<body>
    <header>
        <h1>Privacy Policy</h1>
    </header>
    <main>
        <section>
            <h2>Introduction</h2>
            <p>
                At RIG . PH, we are committed to protecting your personal information and your right to privacy. 
                This Privacy Policy outlines how we collect, use, and safeguard your data in compliance with the 
                Data Privacy Act of the Philippines (Republic Act No. 10173).
            </p>
        </section>
        <section>
            <h2>Information We Collect</h2>
            <p>When you register, we collect the following information:</p>
            <ul>
                <li>Your full name</li>
                <li>Your email address</li>
                <li>Your chosen password (stored securely in an encrypted format)</li>
            </ul>
        </section>
        <section>
            <h2>How We Use Your Information</h2>
            <p>Your information is used for the following purposes:</p>
            <ul>
                <li>To create and manage your account.</li>
                <li>To provide access to the IS Repository platform.</li>
                <li>To communicate with you regarding updates and notifications.</li>
            </ul>
        </section>
        <section>
            <h2>Data Protection and Security</h2>
            <p>
                We implement strict security measures to ensure the confidentiality and integrity of your data. 
                Your personal information is stored securely, and access is limited to authorized personnel only.
            </p>
        </section>
        <section>
            <h2>Your Rights</h2>
            <p>Under the Data Privacy Act, you have the right to:</p>
            <ul>
                <li>Access your personal data.</li>
                <li>Request corrections to your personal data.</li>
                <li>Withdraw consent for data processing.</li>
                <li>Lodge complaints with the National Privacy Commission.</li>
            </ul>
        </section>
        <section>
    <h2>Contact Us</h2>
    <p>
        If you have any questions or concerns regarding this Privacy Policy, please contact us at:
    </p>
    <ul>
        <li>Email: support@isrepository.local</li>
        <li>Phone: +63 123 456 7890</li>
    </ul>
    <!-- Back to Register Button -->
    <div style="text-align: center; margin-top: 2rem;">
        <a href="register.php" class="btn" style="display: inline-block; padding: 1rem 2rem; font-size: 1.6rem; color: #fff; background-color: #00599c; border-radius: 5px; text-decoration: none;">
            Back to Register
        </a>
    </div>
</section>
</main>
<?php include 'footer.php'; ?>
<script src="js/script.js"></script>
</body>
</html>
