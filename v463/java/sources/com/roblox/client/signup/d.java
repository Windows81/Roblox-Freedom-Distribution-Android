package com.roblox.client.signup;

import android.os.AsyncTask;
import com.roblox.client.ae.t;
import com.roblox.client.http.b;
import com.roblox.client.u;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class d extends AsyncTask<Void, Void, f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f7121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f7122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f7123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f7124e;
    protected int f;
    protected String g;
    protected String h;
    protected String i;
    protected a j;
    private String k = "Z^#q";
    private String l = "Fu.*mJ";
    private String m = "l%=f~RIW";
    private String n = "L65HQ,v?K";
    private String o = "hC39$";
    private String p = "qb@Wl";
    private String q = "Av=M";
    private String r = "B7YpO";
    private String s = "jEda0J~i";
    private String t = "HZmfcyG9,F";
    private final boolean u = true;

    public interface a {
        void a(f fVar);

        void b(f fVar);
    }

    protected abstract f a(String str, String str2, String str3, String str4, String str5, b.a[] aVarArr);

    public d(int i, int i2, int i3, int i4, String str, String str2, String str3, String str4, String str5, a aVar) {
        this.f7120a = null;
        this.f7121b = null;
        this.f7122c = 0;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = aVar;
        this.f7120a = str2;
        this.f7121b = str3;
        this.f7122c = i;
        this.f7123d = i2;
        this.f7124e = i3;
        this.f = i4;
        this.g = str;
        this.h = str4;
        this.i = str5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f doInBackground(Void... voidArr) {
        if (this.f7121b.trim().length() == 0) {
            return a();
        }
        return a(this.f7120a, this.f7121b, this.g, this.h, this.i, a(this.f7120a));
    }

    private f a() {
        f fVar = new f();
        fVar.f7131a.add("PasswordInvalid");
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(f fVar) {
        super.onPostExecute(fVar);
        if (this.j != null) {
            if (fVar.a()) {
                this.j.a(fVar);
            } else {
                this.j.b(fVar);
            }
        }
    }

    public static String a(int i, int i2, int i3) {
        return t.a("%d/%d/%d", Integer.valueOf(i + 1), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    protected String b() {
        int i = this.f7122c;
        return i == 1 ? "Male" : i == 2 ? "Female" : "Unknown";
    }

    protected b.a[] a(String str) {
        String strB;
        String str2;
        try {
            if (u.r()) {
                str2 = this.s + this.p + this.q + this.t + this.r + str;
            } else {
                str2 = this.l + this.n + this.k + this.m + this.o + str;
            }
            strB = b(str2);
        } catch (Exception unused) {
            strB = null;
        }
        if (strB == null) {
            return null;
        }
        b.a aVar = new b.a();
        aVar.f6334a = "X-RBXUSER-TOKEN";
        aVar.f6335b = strB;
        return new b.a[]{aVar};
    }

    private String b(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.reset();
        byte[] bArrDigest = messageDigest.digest(str.getBytes("UTF-8"));
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArrDigest) {
            stringBuffer.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
        }
        return stringBuffer.toString();
    }
}
