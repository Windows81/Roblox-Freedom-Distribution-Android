package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dv extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicReference<String[]> f4224a = new AtomicReference<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicReference<String[]> f4225b = new AtomicReference<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicReference<String[]> f4226c = new AtomicReference<>();

    dv(fc fcVar) {
        super(fcVar);
    }

    private final String a(zzer zzerVar) {
        if (zzerVar == null) {
            return null;
        }
        return !v() ? zzerVar.toString() : a(zzerVar.b());
    }

    private static String a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        com.google.android.gms.common.internal.aa.a(strArr);
        com.google.android.gms.common.internal.aa.a(strArr2);
        com.google.android.gms.common.internal.aa.a(atomicReference);
        com.google.android.gms.common.internal.aa.b(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (iq.b(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    private static void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private final void a(StringBuilder sb, int i, iv ivVar) {
        String str;
        if (ivVar == null) {
            return;
        }
        a(sb, i);
        sb.append("filter {\n");
        a(sb, i, "complement", ivVar.f4580e);
        a(sb, i, "param_name", b(ivVar.f));
        int i2 = i + 1;
        iy iyVar = ivVar.f4578c;
        if (iyVar != null) {
            a(sb, i2);
            sb.append("string_filter");
            sb.append(" {\n");
            if (iyVar.f4587c != null) {
                switch (iyVar.f4587c.intValue()) {
                    case 1:
                        str = "REGEXP";
                        break;
                    case 2:
                        str = "BEGINS_WITH";
                        break;
                    case 3:
                        str = "ENDS_WITH";
                        break;
                    case 4:
                        str = "PARTIAL";
                        break;
                    case 5:
                        str = "EXACT";
                        break;
                    case 6:
                        str = "IN_LIST";
                        break;
                    default:
                        str = "UNKNOWN_MATCH_TYPE";
                        break;
                }
                a(sb, i2, "match_type", str);
            }
            a(sb, i2, "expression", iyVar.f4588d);
            a(sb, i2, "case_sensitive", iyVar.f4589e);
            if (iyVar.f.length > 0) {
                a(sb, i2 + 1);
                sb.append("expression_list {\n");
                for (String str2 : iyVar.f) {
                    a(sb, i2 + 2);
                    sb.append(str2);
                    sb.append("\n");
                }
                sb.append("}\n");
            }
            a(sb, i2);
            sb.append("}\n");
        }
        a(sb, i2, "number_filter", ivVar.f4579d);
        a(sb, i);
        sb.append("}\n");
    }

    private final void a(StringBuilder sb, int i, String str, iw iwVar) {
        if (iwVar == null) {
            return;
        }
        a(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (iwVar.f4581c != null) {
            int iIntValue = iwVar.f4581c.intValue();
            a(sb, i, "comparison_type", iIntValue != 1 ? iIntValue != 2 ? iIntValue != 3 ? iIntValue != 4 ? "UNKNOWN_COMPARISON_TYPE" : "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN");
        }
        a(sb, i, "match_as_float", iwVar.f4582d);
        a(sb, i, "comparison_value", iwVar.f4583e);
        a(sb, i, "min_comparison_value", iwVar.f);
        a(sb, i, "max_comparison_value", iwVar.g);
        a(sb, i);
        sb.append("}\n");
    }

    private static void a(StringBuilder sb, int i, String str, jh jhVar) {
        if (jhVar == null) {
            return;
        }
        a(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        int i2 = 0;
        if (jhVar.f4616d != null) {
            a(sb, 4);
            sb.append("results: ");
            long[] jArr = jhVar.f4616d;
            int length = jArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                Long lValueOf = Long.valueOf(jArr[i3]);
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(lValueOf);
                i3++;
                i4 = i5;
            }
            sb.append('\n');
        }
        if (jhVar.f4615c != null) {
            a(sb, 4);
            sb.append("status: ");
            long[] jArr2 = jhVar.f4615c;
            int length2 = jArr2.length;
            int i6 = 0;
            while (i2 < length2) {
                Long lValueOf2 = Long.valueOf(jArr2[i2]);
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                sb.append(lValueOf2);
                i2++;
                i6 = i7;
            }
            sb.append('\n');
        }
        a(sb, 3);
        sb.append("}\n");
    }

    private static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        a(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private final boolean v() {
        return this.q.q().a(3);
    }

    protected final String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!v()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb.append(sb.length() != 0 ? ", " : "Bundle[{");
            sb.append(b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    protected final String a(di diVar) {
        if (diVar == null) {
            return null;
        }
        if (!v()) {
            return diVar.toString();
        }
        return "Event{appId='" + diVar.f4197a + "', name='" + a(diVar.f4198b) + "', params=" + a(diVar.f4201e) + "}";
    }

    protected final String a(iu iuVar) {
        if (iuVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        a(sb, 0, "filter_id", iuVar.f4575c);
        a(sb, 0, "event_name", a(iuVar.f4576d));
        a(sb, 1, "event_count_filter", iuVar.f);
        sb.append("  filters {\n");
        for (iv ivVar : iuVar.f4577e) {
            a(sb, 2, ivVar);
        }
        a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    protected final String a(ix ixVar) {
        if (ixVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        a(sb, 0, "filter_id", ixVar.f4584c);
        a(sb, 0, "property_name", c(ixVar.f4585d));
        a(sb, 1, ixVar.f4586e);
        sb.append("}\n");
        return sb.toString();
    }

    protected final String a(jf jfVar) {
        jg[] jgVarArr;
        int i;
        jg[] jgVarArr2;
        int i2;
        dv dvVar = this;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (jfVar.f4611c != null) {
            jg[] jgVarArr3 = jfVar.f4611c;
            int length = jgVarArr3.length;
            int i3 = 0;
            while (i3 < length) {
                jg jgVar = jgVarArr3[i3];
                if (jgVar == null || jgVar == null) {
                    jgVarArr = jgVarArr3;
                    i = length;
                } else {
                    a(sb, 1);
                    sb.append("bundle {\n");
                    a(sb, 1, "protocol_version", jgVar.f4612c);
                    a(sb, 1, "platform", jgVar.k);
                    a(sb, 1, "gmp_version", jgVar.s);
                    a(sb, 1, "uploading_gmp_version", jgVar.t);
                    a(sb, 1, "config_version", jgVar.G);
                    a(sb, 1, "gmp_app_id", jgVar.A);
                    a(sb, 1, "app_id", jgVar.q);
                    a(sb, 1, "app_version", jgVar.r);
                    a(sb, 1, "app_version_major", jgVar.E);
                    a(sb, 1, "firebase_instance_id", jgVar.D);
                    a(sb, 1, "dev_cert_hash", jgVar.x);
                    a(sb, 1, "app_store", jgVar.p);
                    a(sb, 1, "upload_timestamp_millis", jgVar.f);
                    a(sb, 1, "start_timestamp_millis", jgVar.g);
                    a(sb, 1, "end_timestamp_millis", jgVar.h);
                    a(sb, 1, "previous_bundle_start_timestamp_millis", jgVar.i);
                    a(sb, 1, "previous_bundle_end_timestamp_millis", jgVar.j);
                    a(sb, 1, "app_instance_id", jgVar.w);
                    a(sb, 1, "resettable_device_id", jgVar.u);
                    a(sb, 1, "device_id", jgVar.F);
                    a(sb, 1, "limited_ad_tracking", jgVar.v);
                    a(sb, 1, "os_version", jgVar.l);
                    a(sb, 1, "device_model", jgVar.m);
                    a(sb, 1, "user_default_language", jgVar.n);
                    a(sb, 1, "time_zone_offset_minutes", jgVar.o);
                    a(sb, 1, "bundle_sequential_index", jgVar.y);
                    a(sb, 1, "service_upload", jgVar.B);
                    a(sb, 1, "health_monitor", jgVar.z);
                    if (jgVar.H != null && jgVar.H.longValue() != 0) {
                        a(sb, 1, "android_id", jgVar.H);
                    }
                    if (jgVar.J != null) {
                        a(sb, 1, "retry_counter", jgVar.J);
                    }
                    ji[] jiVarArr = jgVar.f4614e;
                    int i4 = 2;
                    if (jiVarArr != null) {
                        int length2 = jiVarArr.length;
                        int i5 = 0;
                        while (i5 < length2) {
                            ji jiVar = jiVarArr[i5];
                            if (jiVar != null) {
                                a(sb, i4);
                                sb.append("user_property {\n");
                                jgVarArr2 = jgVarArr3;
                                i2 = length;
                                a(sb, 2, "set_timestamp_millis", jiVar.f4617c);
                                a(sb, 2, "name", dvVar.c(jiVar.f4618d));
                                a(sb, 2, "string_value", jiVar.f4619e);
                                a(sb, 2, "int_value", jiVar.f);
                                a(sb, 2, "double_value", jiVar.g);
                                a(sb, 2);
                                sb.append("}\n");
                            } else {
                                jgVarArr2 = jgVarArr3;
                                i2 = length;
                            }
                            i5++;
                            jgVarArr3 = jgVarArr2;
                            length = i2;
                            i4 = 2;
                        }
                    }
                    jgVarArr = jgVarArr3;
                    i = length;
                    jc[] jcVarArr = jgVar.C;
                    if (jcVarArr != null) {
                        for (jc jcVar : jcVarArr) {
                            if (jcVar != null) {
                                a(sb, 2);
                                sb.append("audience_membership {\n");
                                a(sb, 2, "audience_id", jcVar.f4602c);
                                a(sb, 2, "new_audience", jcVar.f);
                                a(sb, 2, "current_data", jcVar.f4603d);
                                a(sb, 2, "previous_data", jcVar.f4604e);
                                a(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    jd[] jdVarArr = jgVar.f4613d;
                    if (jdVarArr != null) {
                        int length3 = jdVarArr.length;
                        int i6 = 0;
                        while (i6 < length3) {
                            jd jdVar = jdVarArr[i6];
                            if (jdVar != null) {
                                a(sb, 2);
                                sb.append("event {\n");
                                a(sb, 2, "name", dvVar.a(jdVar.f4606d));
                                a(sb, 2, "timestamp_millis", jdVar.f4607e);
                                a(sb, 2, "previous_timestamp_millis", jdVar.f);
                                a(sb, 2, "count", jdVar.g);
                                je[] jeVarArr = jdVar.f4605c;
                                if (jeVarArr != null) {
                                    int length4 = jeVarArr.length;
                                    int i7 = 0;
                                    while (i7 < length4) {
                                        je jeVar = jeVarArr[i7];
                                        if (jeVar != null) {
                                            a(sb, 3);
                                            sb.append("param {\n");
                                            a(sb, 3, "name", dvVar.b(jeVar.f4608c));
                                            a(sb, 3, "string_value", jeVar.f4609d);
                                            a(sb, 3, "int_value", jeVar.f4610e);
                                            a(sb, 3, "double_value", jeVar.f);
                                            a(sb, 3);
                                            sb.append("}\n");
                                        }
                                        i7++;
                                        dvVar = this;
                                    }
                                }
                                a(sb, 2);
                                sb.append("}\n");
                            }
                            i6++;
                            dvVar = this;
                        }
                    }
                    a(sb, 1);
                    sb.append("}\n");
                }
                i3++;
                dvVar = this;
                jgVarArr3 = jgVarArr;
                length = i;
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    protected final String a(zzeu zzeuVar) {
        if (zzeuVar == null) {
            return null;
        }
        if (!v()) {
            return zzeuVar.toString();
        }
        return "origin=" + zzeuVar.f4726c + ",name=" + a(zzeuVar.f4724a) + ",params=" + a(zzeuVar.f4725b);
    }

    protected final String a(String str) {
        if (str == null) {
            return null;
        }
        return !v() ? str : a(str, AppMeasurement.a.f4734b, AppMeasurement.a.f4733a, f4224a);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    protected final String b(String str) {
        if (str == null) {
            return null;
        }
        return !v() ? str : a(str, AppMeasurement.d.f4736b, AppMeasurement.d.f4735a, f4225b);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    protected final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!v()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return a(str, AppMeasurement.e.f4738b, AppMeasurement.e.f4737a, f4226c);
        }
        return "experiment_id(" + str + ")";
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }
}
