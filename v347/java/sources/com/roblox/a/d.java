package com.roblox.a;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f6355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected HashMap<String, c> f6356b;

    private class a {
        private a() {
        }

        @JavascriptInterface
        public void executeRoblox(final String str) {
            d.this.f6355a.post(new Runnable() { // from class: com.roblox.a.d.a.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(str);
                }
            });
        }
    }

    public d(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        b(context);
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context);
    }

    public d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(context);
    }

    public d(Context context) {
        super(context);
        b(context);
    }

    private void b(Context context) {
        this.f6355a = new Handler(getContext().getMainLooper());
        a(context);
        addJavascriptInterface(new a(), "__globalRobloxAndroidBridge__");
    }

    protected void a(c cVar) {
        this.f6356b.put(cVar.b(), cVar);
    }

    protected void a(Context context) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            b bVar = new b(new WeakReference(this));
            JSONObject jSONObject = new JSONObject(str);
            bVar.a(jSONObject.getString("moduleID"));
            bVar.b(jSONObject.getString("functionName"));
            bVar.a(jSONObject.getJSONObject("params"));
            bVar.c(jSONObject.optString("callbackID"));
            c cVar = this.f6356b.get(bVar.a());
            if (cVar != null) {
                cVar.a(bVar);
            } else {
                Log.e("rbx.hybrid", "Couldn't find module with ID: " + bVar.a());
            }
        } catch (JSONException e) {
            Log.e("rbx.hybrid", "There was an error parsing the JSON command: " + e.getMessage());
        }
    }

    public void a(String str, boolean z, JSONObject jSONObject) {
        String string = jSONObject != null ? jSONObject.toString() : "{}";
        Object[] objArr = new Object[3];
        objArr[0] = str;
        objArr[1] = z ? "true" : "false";
        objArr[2] = string;
        final String str2 = String.format("if (window.Roblox.Hybrid && window.Roblox.Hybrid.Bridge.nativeCallback && typeof window.Roblox.Hybrid.Bridge.nativeCallback === \"function\") { window.Roblox.Hybrid.Bridge.nativeCallback('%s', %s, %s); }", objArr);
        if (this.f6355a.getLooper().getThread() == Thread.currentThread()) {
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(str2, null);
                return;
            } else {
                loadUrl("javascript:" + str2);
                return;
            }
        }
        this.f6355a.post(new Runnable() { // from class: com.roblox.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 19) {
                    d.this.evaluateJavascript(str2, null);
                } else {
                    d.this.loadUrl("javascript:" + str2);
                }
            }
        });
    }

    public void a(com.roblox.a.b bVar) {
        final String str = String.format("if (window.Roblox.Hybrid && window.Roblox.Hybrid.Bridge.emitEvent && typeof window.Roblox.Hybrid.Bridge.emitEvent === \"function\") { window.Roblox.Hybrid.Bridge.emitEvent('%s', '%s', %s); }", bVar.a(), bVar.b(), bVar.c() != null ? bVar.c().toString() : "{}");
        if (this.f6355a.getLooper().getThread() == Thread.currentThread()) {
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(str, null);
                return;
            } else {
                loadUrl("javascript:" + str);
                return;
            }
        }
        this.f6355a.post(new Runnable() { // from class: com.roblox.a.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 19) {
                    d.this.evaluateJavascript(str, null);
                } else {
                    d.this.loadUrl("javascript:" + str);
                }
            }
        });
    }

    public static class b extends com.roblox.a.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<d> f6364a;

        public b(WeakReference<d> weakReference) {
            this.f6364a = weakReference;
        }

        @Override // com.roblox.a.a
        public Context e() {
            return this.f6364a.get().getContext();
        }

        @Override // com.roblox.a.a
        public void a(boolean z, JSONObject jSONObject) {
            this.f6364a.get().a(d(), z, jSONObject);
        }
    }
}
