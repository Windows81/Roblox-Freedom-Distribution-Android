package com.roblox.client.j;

import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import com.roblox.platform.e;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: com.roblox.client.j.a$a, reason: collision with other inner class name */
    public static class C0154a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f6410b;

        public C0154a(String str, String str2) {
            this.f6409a = str;
            this.f6410b = str2;
        }

        public String a() {
            return this.f6409a;
        }

        public String b() {
            return this.f6410b;
        }
    }

    public static C0154a a(String str) {
        SecretKey secretKeyA = a();
        if (secretKeyA == null) {
            e.c("Encryption", "Error getting secret key");
            return null;
        }
        Cipher cipherA = a(secretKeyA);
        if (cipherA == null) {
            e.c("Encryption", "Error getting encrypt cipher.");
            return null;
        }
        try {
            return new C0154a(new String(Base64.encode(cipherA.getIV(), 0)), new String(Base64.encode(cipherA.doFinal(str.getBytes(StandardCharsets.UTF_8)), 0)));
        } catch (BadPaddingException | IllegalBlockSizeException e2) {
            e.c("Encryption", e2.getMessage());
            return null;
        }
    }

    public static String a(String str, String str2) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            try {
                KeyStore.SecretKeyEntry secretKeyEntry = (KeyStore.SecretKeyEntry) keyStore.getEntry("encryption_alias", null);
                if (secretKeyEntry == null) {
                    e.c("Encryption", "No key entry found");
                    return null;
                }
                SecretKey secretKey = secretKeyEntry.getSecretKey();
                byte[] bArrDecode = Base64.decode(str2, 0);
                if (bArrDecode == null) {
                    e.c("Encryption", "Error getting encryption IV.");
                    return null;
                }
                try {
                    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                    cipher.init(2, secretKey, new GCMParameterSpec(128, bArrDecode));
                    return new String(cipher.doFinal(Base64.decode(str, 0)), StandardCharsets.UTF_8);
                } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e2) {
                    e.c("Encryption", e2.getMessage());
                    return null;
                }
            } catch (UnsupportedOperationException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableEntryException e3) {
                e.c("Encryption", e3.getMessage());
                return null;
            }
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e4) {
            e.c("Encryption", e4.getMessage());
            return null;
        }
    }

    private static SecretKey a() {
        KeyGenerator keyGenerator;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                try {
                    keyGenerator.init(new KeyGenParameterSpec.Builder("encryption_alias", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
                } catch (InvalidAlgorithmParameterException e2) {
                    e.c("Encryption", e2.getLocalizedMessage());
                    return null;
                }
            } catch (NoSuchAlgorithmException | NoSuchProviderException e3) {
                e.c("Encryption", e3.getMessage());
                return null;
            }
        } else {
            try {
                keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new SecureRandom());
            } catch (NoSuchAlgorithmException | NoSuchProviderException e4) {
                e.c("Encryption", e4.getMessage());
                return null;
            }
        }
        return keyGenerator.generateKey();
    }

    private static Cipher a(SecretKey secretKey) {
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, secretKey);
            return cipher;
        } catch (InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e2) {
            e.c("Encryption", e2.getMessage());
            return null;
        }
    }
}
