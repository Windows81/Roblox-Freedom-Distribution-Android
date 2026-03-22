package com.google.android.gms.ads.internal.gmsg;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class g implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3118a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private final Map<String, h> f3119b = new HashMap();

    public final void a(String str, h hVar) {
        synchronized (this.f3118a) {
            this.f3119b.put(str, hVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        String strConcat;
        String str = map.get("id");
        String str2 = map.get("fail");
        String str3 = map.get("fail_reason");
        String str4 = map.get("fail_stack");
        String str5 = map.get("result");
        String str6 = TextUtils.isEmpty(str4) ? "Unknown Fail Reason." : str3;
        if (TextUtils.isEmpty(str4)) {
            strConcat = "";
        } else {
            String strValueOf = String.valueOf(str4);
            strConcat = strValueOf.length() != 0 ? "\n".concat(strValueOf) : new String("\n");
        }
        synchronized (this.f3118a) {
            h hVarRemove = this.f3119b.remove(str);
            if (hVarRemove == null) {
                String strValueOf2 = String.valueOf(str);
                jd.e(strValueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(strValueOf2) : new String("Received result for unexpected method invocation: "));
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                String strValueOf3 = String.valueOf(str6);
                String strValueOf4 = String.valueOf(strConcat);
                hVarRemove.a(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            } else {
                if (str5 == null) {
                    hVarRemove.a((JSONObject) null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (jd.a()) {
                        String strValueOf5 = String.valueOf(jSONObject.toString(2));
                        jd.a(strValueOf5.length() != 0 ? "Result GMSG: ".concat(strValueOf5) : new String("Result GMSG: "));
                    }
                    hVarRemove.a(jSONObject);
                } catch (JSONException e) {
                    hVarRemove.a(e.getMessage());
                }
            }
        }
    }
}
