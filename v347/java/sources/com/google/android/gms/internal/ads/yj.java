package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.yk;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yj<T_WRAPPER extends yk<T_ENGINE>, T_ENGINE> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final yj<ym, Cipher> f5708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final yj<yq, Mac> f5709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final yj<yn, KeyAgreement> f5710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final yj<yp, KeyPairGenerator> f5711d;
    public static final yj<yo, KeyFactory> e;
    private static final Logger f = Logger.getLogger(yj.class.getName());
    private static final List<Provider> g;
    private static final yj<ys, Signature> h;
    private static final yj<yr, MessageDigest> i;
    private T_WRAPPER j;
    private List<Provider> k = g;
    private boolean l = true;

    static {
        if (zb.a()) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                String str = strArr[i2];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            g = arrayList;
        } else {
            g = new ArrayList();
        }
        f5708a = new yj<>(new ym());
        f5709b = new yj<>(new yq());
        h = new yj<>(new ys());
        i = new yj<>(new yr());
        f5710c = new yj<>(new yn());
        f5711d = new yj<>(new yp());
        e = new yj<>(new yo());
    }

    private yj(T_WRAPPER t_wrapper) {
        this.j = t_wrapper;
    }

    private final boolean a(String str, Provider provider) {
        try {
            this.j.a(str, provider);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public final T_ENGINE a(String str) throws GeneralSecurityException {
        for (Provider provider : this.k) {
            if (a(str, provider)) {
                return (T_ENGINE) this.j.a(str, provider);
            }
        }
        if (this.l) {
            return (T_ENGINE) this.j.a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.");
    }
}
