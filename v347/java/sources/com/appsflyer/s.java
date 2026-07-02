package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class s extends AsyncTask<String, Void, String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, String> f2242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f2243b;
    private WeakReference<Context> e;
    private URL f;
    private HttpURLConnection h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2244c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2245d = false;
    private boolean g = true;
    private boolean i = true;

    s(Context context) {
        this.e = new WeakReference<>(context);
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        if (this.f2243b == null) {
            this.f2243b = new JSONObject(this.f2242a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String doInBackground(String... strArr) {
        try {
            this.f = new URL(strArr[0]);
            if (this.g) {
                y.a().a(this.f.toString(), this.f2243b);
                int length = this.f2243b.getBytes(Constants.UTF8_NAME).length;
                m.b("call = " + this.f + "; size = " + length + " byte" + (length > 1 ? "s" : "") + "; body = " + this.f2243b);
            }
            this.h = (HttpURLConnection) this.f.openConnection();
            this.h.setReadTimeout(30000);
            this.h.setConnectTimeout(30000);
            this.h.setRequestMethod(Constants.HTTP_POST);
            this.h.setDoInput(true);
            this.h.setDoOutput(true);
            this.h.setRequestProperty("Content-Type", "application/json");
            OutputStream outputStream = this.h.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, Constants.UTF8_NAME));
            bufferedWriter.write(this.f2243b);
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            this.h.connect();
            int responseCode = this.h.getResponseCode();
            if (this.i) {
                this.f2244c = f.c().a(this.h);
            }
            if (this.g) {
                y.a().a(this.f.toString(), responseCode, this.f2244c);
            }
            if (responseCode == 200) {
                c.c("Status 200 ok");
                Context context = this.e.get();
                if (this.f.toString().startsWith(l.b(f.e)) && context != null) {
                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("appsflyer-data", 0).edit();
                    editorEdit.putBoolean("sentRegisterRequestToAF", true);
                    editorEdit.apply();
                    c.b("Successfully registered for Uninstall Tracking");
                }
            } else {
                this.f2245d = true;
            }
        } catch (Throwable th) {
            c.a("Error while calling " + this.f.toString(), th);
            this.f2245d = true;
        }
        return this.f2244c;
    }

    @Override // android.os.AsyncTask
    protected final void onCancelled() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(String str) {
        if (this.f2245d) {
            c.c("Connection error: " + str);
        } else {
            c.c("Connection call succeeded: " + str);
        }
    }

    final void a(boolean z) {
        this.g = z;
    }
}
