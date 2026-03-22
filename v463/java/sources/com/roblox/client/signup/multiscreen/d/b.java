package com.roblox.client.signup.multiscreen.d;

import android.os.AsyncTask;
import com.roblox.client.ae.t;
import com.roblox.client.http.j;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.s;
import com.roblox.client.signup.multiscreen.b.x;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b extends AsyncTask<Void, Void, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.roblox.client.signup.multiscreen.a.a f7388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f7389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f7390c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    JSONObject f7391d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f7392e = -1;
    protected s f;
    protected x g;
    protected String h;

    abstract j a();

    abstract String b();

    b(String str, com.roblox.client.signup.multiscreen.a.a aVar, s sVar, x xVar) {
        this.f7389b = null;
        this.f = sVar;
        this.g = xVar;
        this.f7388a = aVar;
        this.h = t.a(xVar.a(aVar.f7140b, this.f7388a.f7141c, this.f7388a.f7139a));
        try {
            this.f7389b = URLEncoder.encode(str, "UTF-8");
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
        j jVarA = a();
        this.f7392e = jVarA.b();
        String strA = jVarA.a();
        this.f7390c = strA;
        if (strA != null) {
            try {
                this.f7391d = new JSONObject(this.f7390c);
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
    public void onPostExecute(Void r5) {
        String str;
        super.onPostExecute(r5);
        if (this.f7390c == null) {
            this.f.a("ResponseNull");
            this.f.c("Android-AppSignup-Validation-UsernameResponseNull");
            str = "NoResponse";
        } else if (this.f7391d == null) {
            this.f.c("Android-AppSignup-Validation-UsernameJsonNull");
            this.f.a("JsonNull");
            str = "JSONParseFailure";
        } else {
            str = "";
        }
        if (!str.isEmpty()) {
            this.g.a(h.a(this.f7389b, h.a.INVALID_RESPONSE));
            this.f.a(str, true);
        } else {
            this.f.a(b(), true);
        }
    }
}
