package com.roblox.client.purchase.google.a;

import android.text.TextUtils;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {
    public static boolean a(String str, String str2, String str3) {
        if (str2 == null) {
            Log.e("IABUtil/Security", "data is null");
            return false;
        }
        if (TextUtils.isEmpty(str3) || a(a(str), str2, str3)) {
            return true;
        }
        Log.w("IABUtil/Security", "signature does not match data.");
        return false;
    }

    public static PublicKey a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(a.a(str)));
        } catch (b e2) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException(e3);
        } catch (InvalidKeySpecException e4) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e4);
        }
    }

    public static boolean a(PublicKey publicKey, String str, String str2) {
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(str.getBytes());
            if (signature.verify(a.a(str2))) {
                return true;
            }
            Log.e("IABUtil/Security", "Signature verification failed.");
            return false;
        } catch (b unused) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            return false;
        } catch (InvalidKeyException unused2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            return false;
        } catch (NoSuchAlgorithmException unused3) {
            Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
            return false;
        } catch (SignatureException unused4) {
            Log.e("IABUtil/Security", "Signature exception.");
            return false;
        }
    }
}
