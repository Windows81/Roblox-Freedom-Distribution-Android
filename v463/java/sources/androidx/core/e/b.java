package androidx.core.e;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.c.e;
import androidx.c.g;
import androidx.core.a.a.f;
import androidx.core.e.c;
import androidx.core.graphics.i;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final e<String, Typeface> f1370a = new e<>(16);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.core.e.c f1373d = new androidx.core.e.c("fonts", 10, 10000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Object f1371b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final g<String, ArrayList<c.a<c>>> f1372c = new g<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator<byte[]> f1374e = new Comparator<byte[]>() { // from class: androidx.core.e.b.4
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            if (bArr.length != bArr2.length) {
                length = bArr.length;
                length2 = bArr2.length;
            } else {
                for (int i = 0; i < bArr.length; i++) {
                    if (bArr[i] != bArr2[i]) {
                        length = bArr[i];
                        length2 = bArr2[i];
                    }
                }
                return 0;
            }
            return length - length2;
        }
    };

    static c a(Context context, androidx.core.e.a aVar, int i) {
        try {
            a aVarA = a(context, (CancellationSignal) null, aVar);
            if (aVarA.a() == 0) {
                Typeface typefaceA = androidx.core.graphics.c.a(context, null, aVarA.b(), i);
                return new c(typefaceA, typefaceA != null ? 0 : -3);
            }
            return new c(null, aVarA.a() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new c(null, -1);
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f1389a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1390b;

        c(Typeface typeface, int i) {
            this.f1389a = typeface;
            this.f1390b = i;
        }
    }

    public static Typeface a(final Context context, final androidx.core.e.a aVar, final f.a aVar2, final Handler handler, boolean z, int i, final int i2) {
        final String str = aVar.f() + "-" + i2;
        Typeface typefaceA = f1370a.a(str);
        if (typefaceA != null) {
            if (aVar2 != null) {
                aVar2.a(typefaceA);
            }
            return typefaceA;
        }
        if (z && i == -1) {
            c cVarA = a(context, aVar, i2);
            if (aVar2 != null) {
                if (cVarA.f1390b == 0) {
                    aVar2.a(cVarA.f1389a, handler);
                } else {
                    aVar2.a(cVarA.f1390b, handler);
                }
            }
            return cVarA.f1389a;
        }
        Callable<c> callable = new Callable<c>() { // from class: androidx.core.e.b.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public c call() throws Exception {
                c cVarA2 = b.a(context, aVar, i2);
                if (cVarA2.f1389a != null) {
                    b.f1370a.a(str, cVarA2.f1389a);
                }
                return cVarA2;
            }
        };
        if (z) {
            try {
                return ((c) f1373d.a(callable, i)).f1389a;
            } catch (InterruptedException unused) {
                return null;
            }
        }
        c.a<c> aVar3 = aVar2 == null ? null : new c.a<c>() { // from class: androidx.core.e.b.2
            @Override // androidx.core.e.c.a
            public void a(c cVar) {
                if (cVar == null) {
                    aVar2.a(1, handler);
                } else if (cVar.f1390b == 0) {
                    aVar2.a(cVar.f1389a, handler);
                } else {
                    aVar2.a(cVar.f1390b, handler);
                }
            }
        };
        synchronized (f1371b) {
            if (f1372c.containsKey(str)) {
                if (aVar3 != null) {
                    f1372c.get(str).add(aVar3);
                }
                return null;
            }
            if (aVar3 != null) {
                ArrayList<c.a<c>> arrayList = new ArrayList<>();
                arrayList.add(aVar3);
                f1372c.put(str, arrayList);
            }
            f1373d.a(callable, new c.a<c>() { // from class: androidx.core.e.b.3
                @Override // androidx.core.e.c.a
                public void a(c cVar) {
                    synchronized (b.f1371b) {
                        ArrayList<c.a<c>> arrayList2 = b.f1372c.get(str);
                        if (arrayList2 == null) {
                            return;
                        }
                        b.f1372c.remove(str);
                        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                            arrayList2.get(i3).a(cVar);
                        }
                    }
                }
            });
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.core.e.b$b, reason: collision with other inner class name */
    public static class C0028b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f1384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1386c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1387d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1388e;

        public C0028b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f1384a = (Uri) androidx.core.g.e.a(uri);
            this.f1385b = i;
            this.f1386c = i2;
            this.f1387d = z;
            this.f1388e = i3;
        }

        public Uri a() {
            return this.f1384a;
        }

        public int b() {
            return this.f1385b;
        }

        public int c() {
            return this.f1386c;
        }

        public boolean d() {
            return this.f1387d;
        }

        public int e() {
            return this.f1388e;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0028b[] f1383b;

        public a(int i, C0028b[] c0028bArr) {
            this.f1382a = i;
            this.f1383b = c0028bArr;
        }

        public int a() {
            return this.f1382a;
        }

        public C0028b[] b() {
            return this.f1383b;
        }
    }

    public static Map<Uri, ByteBuffer> a(Context context, C0028b[] c0028bArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (C0028b c0028b : c0028bArr) {
            if (c0028b.e() == 0) {
                Uri uriA = c0028b.a();
                if (!map.containsKey(uriA)) {
                    map.put(uriA, i.a(context, cancellationSignal, uriA));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public static a a(Context context, CancellationSignal cancellationSignal, androidx.core.e.a aVar) throws PackageManager.NameNotFoundException {
        ProviderInfo providerInfoA = a(context.getPackageManager(), aVar, context.getResources());
        if (providerInfoA == null) {
            return new a(1, null);
        }
        return new a(0, a(context, aVar, providerInfoA.authority, cancellationSignal));
    }

    public static ProviderInfo a(PackageManager packageManager, androidx.core.e.a aVar, Resources resources) throws PackageManager.NameNotFoundException {
        String strA = aVar.a();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strA, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + strA);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(aVar.b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + strA + ", but package was not " + aVar.b());
        }
        List<byte[]> listA = a(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listA, f1374e);
        List<List<byte[]>> listA2 = a(aVar, resources);
        for (int i = 0; i < listA2.size(); i++) {
            ArrayList arrayList = new ArrayList(listA2.get(i));
            Collections.sort(arrayList, f1374e);
            if (a(listA, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    private static List<List<byte[]>> a(androidx.core.e.a aVar, Resources resources) {
        if (aVar.d() != null) {
            return aVar.d();
        }
        return androidx.core.a.a.c.a(resources, aVar.e());
    }

    private static boolean a(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<byte[]> a(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    static C0028b[] a(Context context, androidx.core.e.a aVar, String str, CancellationSignal cancellationSignal) {
        Uri uriWithAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
        Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursorQuery = null;
        try {
            if (Build.VERSION.SDK_INT > 16) {
                cursorQuery = context.getContentResolver().query(uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, null, cancellationSignal);
            } else {
                cursorQuery = context.getContentResolver().query(uriBuild, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{aVar.c()}, null);
            }
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                int columnIndex = cursorQuery.getColumnIndex("result_code");
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursorQuery.getColumnIndex("_id");
                int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                while (cursorQuery.moveToNext()) {
                    int i = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                    int i2 = columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2));
                    } else {
                        uriWithAppendedId = ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3));
                    }
                    arrayList2.add(new C0028b(uriWithAppendedId, i2, columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorQuery.getInt(columnIndex6) == 1, i));
                }
                arrayList = arrayList2;
            }
            return (C0028b[]) arrayList.toArray(new C0028b[0]);
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }
}
