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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends WebView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Handler f5527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected HashMap<String, c> f5528c;

    protected void a(Context context) {
    }

    private class a {
        private a() {
        }

        @JavascriptInterface
        public void executeRoblox(final String str) {
            d.this.f5527b.post(new Runnable() { // from class: com.roblox.a.d.a.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.a(str);
                }
            });
        }
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5528c = new HashMap<>();
        b(context);
    }

    public d(Context context) {
        super(context);
        this.f5528c = new HashMap<>();
        b(context);
    }

    protected void b(Context context) {
        this.f5527b = new Handler(getContext().getMainLooper());
        a(context);
        addJavascriptInterface(new a(), "__globalRobloxAndroidBridge__");
    }

    protected void a(c cVar) {
        this.f5528c.put(cVar.b(), cVar);
    }

    protected void a(String str) {
        try {
            b bVar = new b(new WeakReference(this));
            JSONObject jSONObject = new JSONObject(str);
            bVar.a(jSONObject.getString("moduleID"));
            bVar.b(jSONObject.getString("functionName"));
            bVar.a(jSONObject.getJSONObject("params"));
            bVar.c(jSONObject.optString("callbackID"));
            c cVar = this.f5528c.get(bVar.a());
            if (cVar != null) {
                cVar.a(bVar);
            } else {
                Log.e("rbx.hybrid", "Couldn't find module with ID: " + bVar.a());
            }
        } catch (JSONException e2) {
            Log.e("rbx.hybrid", "There was an error parsing the JSON command: " + e2.getMessage());
        }
    }

    public void a(String str, boolean z, JSONObject jSONObject) {
        String string = jSONObject != null ? jSONObject.toString() : "{}";
        Object[] objArr = new Object[3];
        objArr[0] = str;
        objArr[1] = z ? "true" : "false";
        objArr[2] = string;
        b(String.format("if (window.Roblox.Hybrid && window.Roblox.Hybrid.Bridge.nativeCallback && typeof window.Roblox.Hybrid.Bridge.nativeCallback === \"function\") { window.Roblox.Hybrid.Bridge.nativeCallback('%s', %s, %s); }", objArr));
    }

    public void a(com.roblox.a.b bVar) {
        b(String.format("if (window.Roblox.Hybrid && window.Roblox.Hybrid.Bridge.emitEvent && typeof window.Roblox.Hybrid.Bridge.emitEvent === \"function\") { window.Roblox.Hybrid.Bridge.emitEvent('%s', '%s', %s); }", bVar.a(), bVar.b(), bVar.c() != null ? bVar.c().toString() : "{}"));
    }

    public void b(final String str) {
        if (this.f5527b.getLooper().getThread() == Thread.currentThread()) {
            if (Build.VERSION.SDK_INT >= 19) {
                evaluateJavascript(str, null);
                return;
            }
            loadUrl("javascript:" + str);
            return;
        }
        this.f5527b.post(new Runnable() { // from class: com.roblox.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 19) {
                    d.this.evaluateJavascript(str, null);
                    return;
                }
                d.this.loadUrl("javascript:" + str);
            }
        });
    }

    public static class b extends com.roblox.a.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<d> f5534a;

        public b(WeakReference<d> weakReference) {
            this.f5534a = weakReference;
        }

        @Override // com.roblox.a.a
        public Context e() {
            return this.f5534a.get().getContext();
        }

        @Override // com.roblox.a.a
        public void a(boolean z, JSONObject jSONObject) {
            this.f5534a.get().a(d(), z, jSONObject);
        }
    }
}
