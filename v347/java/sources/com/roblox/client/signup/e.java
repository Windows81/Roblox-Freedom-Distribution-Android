package com.roblox.client.signup;

import android.os.AsyncTask;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.b;
import com.roblox.client.util.n;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends AsyncTask<Void, Void, j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f7856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f7857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f7858d;
    protected int e;
    protected int f;
    protected String g;
    protected a h;
    private String i = "Z^#q";
    private String j = "Fu.*mJ";
    private String k = "l%=f~RIW";
    private String l = "L65HQ,v?K";
    private String m = "hC39$";
    private String n = "qb@Wl";
    private String o = "Av=M";
    private String p = "B7YpO";
    private String q = "jEda0J~i";
    private String r = "HZmfcyG9,F";
    private final boolean s = true;

    public interface a {
        void a(j jVar);

        void b(j jVar);
    }

    protected abstract j a(String str, String str2, String str3, b.a[] aVarArr);

    public e(int i, int i2, int i3, int i4, String str, String str2, String str3, a aVar) {
        this.f7855a = null;
        this.f7856b = null;
        this.f7857c = 0;
        this.g = null;
        this.h = aVar;
        this.f7855a = str2;
        this.f7856b = str3;
        this.f7857c = i;
        this.f7858d = i2;
        this.e = i3;
        this.f = i4;
        this.g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j doInBackground(Void... voidArr) {
        if (this.f7856b.trim().length() == 0) {
            return a();
        }
        return a(this.f7855a, this.f7856b, this.g, a(this.f7855a));
    }

    private j a() {
        j jVar = new j();
        jVar.f7873a.add("PasswordInvalid");
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(j jVar) {
        super.onPostExecute(jVar);
        if (this.h != null) {
            if (jVar.a()) {
                this.h.a(jVar);
            } else {
                this.h.b(jVar);
            }
        }
    }

    public static String a(int i, int i2, int i3) {
        return n.a("%d/%d/%d", Integer.valueOf(i + 1), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    protected String b() {
        if (this.f7857c == 1) {
            return "Male";
        }
        if (this.f7857c != 2) {
            return "Unknown";
        }
        return "Female";
    }

    protected b.a[] a(String str) {
        String strB;
        String str2;
        try {
            if (RobloxSettings.isTestSite()) {
                str2 = this.q + this.n + this.o + this.r + this.p + str;
            } else {
                str2 = this.j + this.l + this.i + this.k + this.m + str;
            }
            strB = b(str2);
        } catch (Exception e) {
            strB = null;
        }
        if (strB == null) {
            return null;
        }
        b.a aVar = new b.a();
        aVar.f7087a = "X-RBXUSER-TOKEN";
        aVar.f7088b = strB;
        return new b.a[]{aVar};
    }

    private String b(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.reset();
        byte[] bArrDigest = messageDigest.digest(str.getBytes(Constants.UTF8_NAME));
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArrDigest) {
            stringBuffer.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
        }
        return stringBuffer.toString();
    }
}
