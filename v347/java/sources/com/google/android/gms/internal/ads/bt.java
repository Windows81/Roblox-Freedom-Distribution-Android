package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bt implements bh<asx> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4872a;

    public bt(boolean z) {
        this.f4872a = z;
    }

    @Override // com.google.android.gms.internal.ads.bh
    public final /* synthetic */ ath a(ay ayVar, JSONObject jSONObject) throws ExecutionException, JSONException, InterruptedException {
        int i = 0;
        android.support.v4.g.m mVar = new android.support.v4.g.m();
        android.support.v4.g.m mVar2 = new android.support.v4.g.m();
        nd<aso> ndVarA = ayVar.a(jSONObject);
        nd<qd> ndVarA2 = ayVar.a(jSONObject, "video");
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            String string = jSONObject2.getString("type");
            if ("string".equals(string)) {
                mVar2.put(jSONObject2.getString("name"), jSONObject2.getString("string_value"));
            } else if ("image".equals(string)) {
                mVar.put(jSONObject2.getString("name"), ayVar.a(jSONObject2, "image_value", this.f4872a));
            } else {
                String strValueOf = String.valueOf(string);
                jd.e(strValueOf.length() != 0 ? "Unknown custom asset type: ".concat(strValueOf) : new String("Unknown custom asset type: "));
            }
        }
        qd qdVarA = ay.a(ndVarA2);
        String string2 = jSONObject.getString("custom_template_id");
        android.support.v4.g.m mVar3 = new android.support.v4.g.m();
        while (true) {
            int i3 = i;
            if (i3 >= mVar.size()) {
                break;
            }
            mVar3.put(mVar.b(i3), ((Future) mVar.c(i3)).get());
            i = i3 + 1;
        }
        return new asx(string2, mVar3, mVar2, ndVarA.get(), qdVarA != null ? qdVarA.b() : null, qdVarA != null ? qdVarA.getView() : null);
    }
}
