package com.roblox.client.signup.multiscreen.b;

import android.os.AsyncTask;
import com.roblox.client.signup.multiscreen.a.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class k extends AsyncTask<Void, Void, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f7216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7218c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    JSONObject f7219d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f7220e = -1;
    protected h f;
    protected n g;

    abstract com.roblox.client.http.j a();

    abstract String b();

    k(String str, String str2, h hVar, n nVar) {
        this.f7217b = null;
        this.f7216a = str;
        this.f = hVar;
        this.g = nVar;
        try {
            this.f7217b = URLEncoder.encode(str2, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            this.f.a("EncodingError");
            this.f.a("NotUTF8", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        String str;
        if (isCancelled()) {
            return null;
        }
        com.roblox.client.http.j jVarA = a();
        this.f7220e = jVarA.b();
        String strA = jVarA.a();
        this.f7218c = strA;
        if (strA != null) {
            try {
                this.f7219d = new JSONObject(this.f7218c);
                str = "";
            } catch (JSONException unused) {
                str = "ValidationJSONException";
            }
        } else {
            str = "NoResponse";
        }
        if (!str.isEmpty()) {
            this.f.a(str, true);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Void r3) {
        String str;
        super.onPostExecute(r3);
        if (this.f7218c == null) {
            this.f.a("ResponseNull");
            this.f.b("Android-AppSignup-Validation-PasswordResponseNull");
            str = "NoResponse";
        } else if (this.f7219d == null) {
            this.g.a(com.roblox.client.signup.multiscreen.a.d.b(this.f7217b, d.a.INVALID_RESPONSE));
            this.f.b("Android-AppSignup-Validation-PasswordJsonNull");
            this.f.a("JsonNull");
            str = "JSONParseFailure";
        } else {
            str = "";
        }
        if (!str.isEmpty()) {
            this.f.a(str, true);
        } else {
            this.f.a(b(), true);
        }
    }
}
