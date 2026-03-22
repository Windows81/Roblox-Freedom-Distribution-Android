package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iq extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f4565a = {"firebase_", "google_", "ga_"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SecureRandom f4566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f4567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f4569e;

    iq(fc fcVar) {
        super(fcVar);
        this.f4569e = null;
        this.f4567c = new AtomicLong(0L);
    }

    public static je a(jd jdVar, String str) {
        for (je jeVar : jdVar.f4605c) {
            if (jeVar.f4608c.equals(str)) {
                return jeVar;
            }
        }
        return null;
    }

    private static Object a(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return a(String.valueOf(obj), i, z);
        }
        return null;
    }

    public static String a(String str, int i, boolean z) {
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    public static String a(String str, String[] strArr, String[] strArr2) {
        com.google.android.gms.common.internal.aa.a(strArr);
        com.google.android.gms.common.internal.aa.a(strArr2);
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < iMin; i++) {
            if (b(str, strArr[i])) {
                return strArr2[i];
            }
        }
        return null;
    }

    private static void a(Bundle bundle, Object obj) {
        com.google.android.gms.common.internal.aa.a(bundle);
        if (obj != null) {
            if ((obj instanceof String) || (obj instanceof CharSequence)) {
                bundle.putLong("_el", String.valueOf(obj).length());
            }
        }
    }

    public static boolean a(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    private static boolean a(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    static boolean a(zzeu zzeuVar, zzdz zzdzVar) {
        com.google.android.gms.common.internal.aa.a(zzeuVar);
        com.google.android.gms.common.internal.aa.a(zzdzVar);
        return !TextUtils.isEmpty(zzdzVar.f4714b);
    }

    static boolean a(String str) {
        com.google.android.gms.common.internal.aa.a(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    private final boolean a(String str, String str2, int i, Object obj, boolean z) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                if ((obj instanceof Bundle) && z) {
                    return true;
                }
                if ((obj instanceof Parcelable[]) && z) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            q().y().a("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
                if (!(obj instanceof ArrayList) || !z) {
                    return false;
                }
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    if (!(obj2 instanceof Bundle)) {
                        q().y().a("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                        return false;
                    }
                }
                return true;
            }
            String strValueOf = String.valueOf(obj);
            if (strValueOf.codePointCount(0, strValueOf.length()) > i) {
                q().y().a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(strValueOf.length()));
                return false;
            }
        }
        return true;
    }

    public static boolean a(long[] jArr, int i) {
        if (i >= (jArr.length << 6)) {
            return false;
        }
        return ((1 << (i % 64)) & jArr[i / 64]) != 0;
    }

    static byte[] a(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static long[] a(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i << 6) + i2;
                if (i3 < bitSet.length()) {
                    if (bitSet.get(i3)) {
                        jArr[i] = jArr[i] | (1 << i2);
                    }
                }
            }
        }
        return jArr;
    }

    public static Bundle[] a(Object obj) {
        Object[] array;
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            array = Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else {
            if (!(obj instanceof ArrayList)) {
                return null;
            }
            ArrayList arrayList = (ArrayList) obj;
            array = arrayList.toArray(new Bundle[arrayList.size()]);
        }
        return (Bundle[]) array;
    }

    static je[] a(je[] jeVarArr, String str, Object obj) {
        for (je jeVar : jeVarArr) {
            if (str.equals(jeVar.f4608c)) {
                jeVar.f4610e = null;
                jeVar.f4609d = null;
                jeVar.f = null;
                if (obj instanceof Long) {
                    jeVar.f4610e = (Long) obj;
                } else if (obj instanceof String) {
                    jeVar.f4609d = (String) obj;
                } else if (obj instanceof Double) {
                    jeVar.f = (Double) obj;
                }
                return jeVarArr;
            }
        }
        je[] jeVarArr2 = new je[jeVarArr.length + 1];
        System.arraycopy(jeVarArr, 0, jeVarArr2, 0, jeVarArr.length);
        je jeVar2 = new je();
        jeVar2.f4608c = str;
        if (obj instanceof Long) {
            jeVar2.f4610e = (Long) obj;
        } else if (obj instanceof String) {
            jeVar2.f4609d = (String) obj;
        } else if (obj instanceof Double) {
            jeVar2.f = (Double) obj;
        }
        jeVarArr2[jeVarArr.length] = jeVar2;
        return jeVarArr2;
    }

    public static Object b(jd jdVar, String str) {
        je jeVarA = a(jdVar, str);
        if (jeVarA == null) {
            return null;
        }
        if (jeVarA.f4609d != null) {
            return jeVarA.f4609d;
        }
        if (jeVarA.f4610e != null) {
            return jeVarA.f4610e;
        }
        if (jeVarA.f != null) {
            return jeVarA.f;
        }
        return null;
    }

    public static Object b(Object obj) {
        ObjectInputStream objectInputStream;
        ObjectOutputStream objectOutputStream;
        try {
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    try {
                        Object object = objectInputStream.readObject();
                        objectOutputStream.close();
                        objectInputStream.close();
                        return object;
                    } catch (Throwable th) {
                        th = th;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                objectOutputStream = null;
            }
        } catch (IOException | ClassNotFoundException unused) {
            return null;
        }
    }

    public static boolean b(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    static long c(byte[] bArr) {
        com.google.android.gms.common.internal.aa.a(bArr);
        int i = 0;
        com.google.android.gms.common.internal.aa.a(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (((long) bArr[length]) & 255) << i;
            i += 8;
        }
        return j;
    }

    private final boolean c(Context context, String str) {
        dz dzVarV;
        String str2;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfoB = com.google.android.gms.common.d.c.b(context).b(str, 64);
            if (packageInfoB == null || packageInfoB.signatures == null || packageInfoB.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfoB.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e2) {
            e = e2;
            dzVarV = q().v();
            str2 = "Package name not found";
            dzVarV.a(str2, e);
            return true;
        } catch (CertificateException e3) {
            e = e3;
            dzVarV = q().v();
            str2 = "Error obtaining certificate";
            dzVarV.a(str2, e);
            return true;
        }
    }

    private final boolean c(String str, String str2) {
        if (str2 == null) {
            q().v().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            q().v().a("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt) && iCodePointAt != 95) {
            q().v().a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                q().v().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    static MessageDigest f(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static boolean h(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    static boolean j(String str) {
        return str != null && str.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean k(java.lang.String r5) {
        /*
            com.google.android.gms.common.internal.aa.a(r5)
            int r0 = r5.hashCode()
            r1 = 94660(0x171c4, float:1.32647E-40)
            r2 = 0
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L2e
            r1 = 95025(0x17331, float:1.33158E-40)
            if (r0 == r1) goto L24
            r1 = 95027(0x17333, float:1.33161E-40)
            if (r0 == r1) goto L1a
            goto L38
        L1a:
            java.lang.String r0 = "_ui"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L38
            r5 = 1
            goto L39
        L24:
            java.lang.String r0 = "_ug"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L38
            r5 = 2
            goto L39
        L2e:
            java.lang.String r0 = "_in"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L38
            r5 = 0
            goto L39
        L38:
            r5 = -1
        L39:
            if (r5 == 0) goto L40
            if (r5 == r4) goto L40
            if (r5 == r3) goto L40
            return r2
        L40:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.iq.k(java.lang.String):boolean");
    }

    private static int l(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? 256 : 36;
    }

    public final Bundle a(Uri uri) {
        String queryParameter;
        String queryParameter2;
        String queryParameter3;
        String queryParameter4;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                queryParameter = uri.getQueryParameter("utm_campaign");
                queryParameter2 = uri.getQueryParameter("utm_source");
                queryParameter3 = uri.getQueryParameter("utm_medium");
                queryParameter4 = uri.getQueryParameter("gclid");
            } else {
                queryParameter = null;
                queryParameter2 = null;
                queryParameter3 = null;
                queryParameter4 = null;
            }
            if (TextUtils.isEmpty(queryParameter) && TextUtils.isEmpty(queryParameter2) && TextUtils.isEmpty(queryParameter3) && TextUtils.isEmpty(queryParameter4)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("campaign", queryParameter);
            }
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString(Payload.SOURCE, queryParameter2);
            }
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("medium", queryParameter3);
            }
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("gclid", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("term", queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("content", queryParameter6);
            }
            String queryParameter7 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("aclid", queryParameter7);
            }
            String queryParameter8 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("cp1", queryParameter8);
            }
            String queryParameter9 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString("anid", queryParameter9);
            }
            return bundle;
        } catch (UnsupportedOperationException e2) {
            q().y().a("Install referrer url isn't a hierarchical URI", e2);
            return null;
        }
    }

    final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object objA = a(str, bundle.get(str));
                if (objA == null) {
                    q().y().a("Param value can't be null", m().b(str));
                } else {
                    a(bundle2, str, objA);
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle a(java.lang.String r18, android.os.Bundle r19, java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.iq.a(java.lang.String, android.os.Bundle, java.util.List, boolean, boolean):android.os.Bundle");
    }

    final <T extends Parcelable> T a(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } catch (a.C0093a unused) {
            q().v().a("Failed to load parcelable from buffer");
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    final zzeu a(String str, Bundle bundle, String str2, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (b(str) != 0) {
            q().v().a("Invalid conditional property event name", m().c(str));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        return new zzeu(str, new zzer(a(a(str, bundle2, com.google.android.gms.common.util.e.a("_o"), false, false))), str2, j);
    }

    public final Object a(String str, Object obj) {
        boolean z;
        if ("_ev".equals(str)) {
            z = true;
        } else {
            i = h(str) ? 256 : 100;
            z = false;
        }
        return a(i, obj, z);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final void a(int i, String str, String str2, int i2) {
        a((String) null, i, str, str2, i2);
    }

    public final void a(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (str != null) {
            q().z().a("Not putting event parameter. Invalid value type. name, type", m().b(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void a(je jeVar, Object obj) {
        com.google.android.gms.common.internal.aa.a(obj);
        jeVar.f4609d = null;
        jeVar.f4610e = null;
        jeVar.f = null;
        if (obj instanceof String) {
            jeVar.f4609d = (String) obj;
            return;
        }
        if (obj instanceof Long) {
            jeVar.f4610e = (Long) obj;
        } else if (obj instanceof Double) {
            jeVar.f = (Double) obj;
        } else {
            q().v().a("Ignoring invalid (type) event param value", obj);
        }
    }

    public final void a(ji jiVar, Object obj) {
        com.google.android.gms.common.internal.aa.a(obj);
        jiVar.f4619e = null;
        jiVar.f = null;
        jiVar.g = null;
        if (obj instanceof String) {
            jiVar.f4619e = (String) obj;
            return;
        }
        if (obj instanceof Long) {
            jiVar.f = (Long) obj;
        } else if (obj instanceof Double) {
            jiVar.g = (Double) obj;
        } else {
            q().v().a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void a(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        a(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        this.q.h().a("auto", "_err", bundle);
    }

    public final boolean a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(j().a() - j) > j2;
    }

    final boolean a(String str, int i, String str2) {
        if (str2 == null) {
            q().v().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        q().v().a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    final boolean a(String str, String str2) {
        if (str2 == null) {
            q().v().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            q().v().a("Name is required and can't be empty. Type", str);
            return false;
        }
        int iCodePointAt = str2.codePointAt(0);
        if (!Character.isLetter(iCodePointAt)) {
            q().v().a("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int iCharCount = Character.charCount(iCodePointAt);
        while (iCharCount < length) {
            int iCodePointAt2 = str2.codePointAt(iCharCount);
            if (iCodePointAt2 != 95 && !Character.isLetterOrDigit(iCodePointAt2)) {
                q().v().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            iCharCount += Character.charCount(iCodePointAt2);
        }
        return true;
    }

    final boolean a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            q().v().a("Name is required and can't be null. Type", str);
            return false;
        }
        com.google.android.gms.common.internal.aa.a(str2);
        int i = 0;
        while (true) {
            String[] strArr2 = f4565a;
            if (i >= strArr2.length) {
                z = false;
                break;
            }
            if (str2.startsWith(strArr2[i])) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            q().v().a("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        }
        if (strArr != null) {
            com.google.android.gms.common.internal.aa.a(strArr);
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    z2 = false;
                    break;
                }
                if (b(str2, strArr[i2])) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                q().v().a("Name is reserved. Type, name", str, str2);
                return false;
            }
        }
        return true;
    }

    public final byte[] a(jf jfVar) {
        try {
            int iD = jfVar.d();
            byte[] bArr = new byte[iD];
            d dVarA = d.a(bArr, 0, iD);
            jfVar.a(dVarA);
            dVarA.a();
            return bArr;
        } catch (IOException e2) {
            q().v().a("Data loss. Failed to serialize batch", e2);
            return null;
        }
    }

    public final byte[] a(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            q().v().a("Failed to gzip content", e2);
            throw e2;
        }
    }

    public final int b(String str) {
        if (!c("event", str)) {
            return 2;
        }
        if (a("event", AppMeasurement.a.f4733a, str)) {
            return !a("event", 40, str) ? 2 : 0;
        }
        return 13;
    }

    public final int b(String str, Object obj) {
        return "_ldl".equals(str) ? a("user property referrer", str, l(str), obj, false) : a("user property", str, l(str), obj, false) ? 0 : 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0078  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x006b -> B:17:0x0078). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final long b(android.content.Context r7, java.lang.String r8) {
        /*
            r6 = this;
            r6.c()
            com.google.android.gms.common.internal.aa.a(r7)
            com.google.android.gms.common.internal.aa.a(r8)
            android.content.pm.PackageManager r0 = r7.getPackageManager()
            java.lang.String r1 = "MD5"
            java.security.MessageDigest r1 = f(r1)
            r2 = -1
            r4 = 0
            if (r1 != 0) goto L27
            com.google.android.gms.internal.measurement.dx r7 = r6.q()
            com.google.android.gms.internal.measurement.dz r7 = r7.v()
            java.lang.String r8 = "Could not get MD5 instance"
            r7.a(r8)
            goto L79
        L27:
            if (r0 == 0) goto L78
            boolean r8 = r6.c(r7, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            if (r8 != 0) goto L78
            com.google.android.gms.common.d.b r7 = com.google.android.gms.common.d.c.b(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            android.content.Context r8 = r6.k()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            r0 = 64
            android.content.pm.PackageInfo r7 = r7.b(r8, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            android.content.pm.Signature[] r8 = r7.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            if (r8 == 0) goto L5c
            android.content.pm.Signature[] r8 = r7.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            int r8 = r8.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            if (r8 <= 0) goto L5c
            android.content.pm.Signature[] r7 = r7.signatures     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            r8 = 0
            r7 = r7[r8]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            byte[] r7 = r1.digest(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            long r2 = c(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            goto L79
        L5c:
            com.google.android.gms.internal.measurement.dx r7 = r6.q()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            com.google.android.gms.internal.measurement.dz r7 = r7.y()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            java.lang.String r8 = "Could not get signatures"
            r7.a(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6a
            goto L79
        L6a:
            r7 = move-exception
            com.google.android.gms.internal.measurement.dx r8 = r6.q()
            com.google.android.gms.internal.measurement.dz r8 = r8.v()
            java.lang.String r0 = "Package name not found"
            r8.a(r0, r7)
        L78:
            r2 = r4
        L79:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.iq.b(android.content.Context, java.lang.String):long");
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public final byte[] b(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int i = gZIPInputStream.read(bArr2);
                if (i <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, i);
            }
        } catch (IOException e2) {
            q().v().a("Failed to ungzip content", e2);
            throw e2;
        }
    }

    public final int c(String str) {
        if (!a("user property", str)) {
            return 6;
        }
        if (a("user property", AppMeasurement.e.f4737a, str)) {
            return !a("user property", 24, str) ? 6 : 0;
        }
        return 15;
    }

    public final Object c(String str, Object obj) {
        return a(l(str), obj, "_ldl".equals(str));
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    public final int d(String str) {
        if (!c("user property", str)) {
            return 6;
        }
        if (a("user property", AppMeasurement.e.f4737a, str)) {
            return !a("user property", 24, str) ? 6 : 0;
        }
        return 15;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    public final boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            q().v().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        com.google.android.gms.common.internal.aa.a(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        q().v().a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", str);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final void e_() {
        c();
        SecureRandom secureRandom = new SecureRandom();
        long jNextLong = secureRandom.nextLong();
        if (jNextLong == 0) {
            jNextLong = secureRandom.nextLong();
            if (jNextLong == 0) {
                q().y().a("Utils falling back to Random for random id");
            }
        }
        this.f4567c.set(jNextLong);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    public final boolean g(String str) {
        c();
        if (com.google.android.gms.common.d.c.b(k()).a(str) == 0) {
            return true;
        }
        q().B().a("Permission not granted", str);
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    public final boolean i(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return s().x().equals(str);
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
        return true;
    }

    public final long v() {
        long j = this.f4567c.get();
        synchronized (this.f4567c) {
            if (j != 0) {
                this.f4567c.compareAndSet(-1L, 1L);
                return this.f4567c.getAndIncrement();
            }
            long jNextLong = new Random(System.nanoTime() ^ j().a()).nextLong();
            int i = this.f4568d + 1;
            this.f4568d = i;
            return jNextLong + ((long) i);
        }
    }

    final SecureRandom w() {
        c();
        if (this.f4566b == null) {
            this.f4566b = new SecureRandom();
        }
        return this.f4566b;
    }

    public final int x() {
        if (this.f4569e == null) {
            this.f4569e = Integer.valueOf(com.google.android.gms.common.f.b().b(k()) / 1000);
        }
        return this.f4569e.intValue();
    }
}
