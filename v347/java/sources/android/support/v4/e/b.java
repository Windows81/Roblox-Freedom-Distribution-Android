package android.support.v4.e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.support.v4.a.a.b;
import android.support.v4.b.h;
import android.support.v4.e.c;
import android.support.v4.g.g;
import android.support.v4.g.l;
import android.support.v4.g.m;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g<String, Typeface> f874a = new g<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final android.support.v4.e.c f875b = new android.support.v4.e.c("fonts", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f876c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final m<String, ArrayList<c.a<c>>> f877d = new m<>();
    private static final Comparator<byte[]> e = new Comparator<byte[]>() { // from class: android.support.v4.e.b.4
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return bArr[i] - bArr2[i];
                }
            }
            return 0;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Context context, android.support.v4.e.a aVar, int i) {
        try {
            a aVarA = a(context, (CancellationSignal) null, aVar);
            if (aVarA.a() == 0) {
                Typeface typefaceA = android.support.v4.b.c.a(context, null, aVarA.b(), i);
                return new c(typefaceA, typefaceA != null ? 0 : -3);
            }
            return new c(null, aVarA.a() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException e2) {
            return new c(null, -1);
        }
    }

    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f892b;

        c(Typeface typeface, int i) {
            this.f891a = typeface;
            this.f892b = i;
        }
    }

    public static Typeface a(final Context context, final android.support.v4.e.a aVar, final b.a aVar2, final Handler handler, boolean z, int i, final int i2) {
        final String str = aVar.f() + "-" + i2;
        Typeface typefaceA = f874a.a(str);
        if (typefaceA != null) {
            if (aVar2 != null) {
                aVar2.a(typefaceA);
            }
            return typefaceA;
        }
        if (z && i == -1) {
            c cVarB = b(context, aVar, i2);
            if (aVar2 != null) {
                if (cVarB.f892b == 0) {
                    aVar2.a(cVarB.f891a, handler);
                } else {
                    aVar2.a(cVarB.f892b, handler);
                }
            }
            return cVarB.f891a;
        }
        Callable<c> callable = new Callable<c>() { // from class: android.support.v4.e.b.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public c call() throws Exception {
                c cVarB2 = b.b(context, aVar, i2);
                if (cVarB2.f891a != null) {
                    b.f874a.a(str, cVarB2.f891a);
                }
                return cVarB2;
            }
        };
        if (z) {
            try {
                return ((c) f875b.a(callable, i)).f891a;
            } catch (InterruptedException e2) {
                return null;
            }
        }
        c.a<c> aVar3 = aVar2 == null ? null : new c.a<c>() { // from class: android.support.v4.e.b.2
            @Override // android.support.v4.e.c.a
            public void a(c cVar) {
                if (cVar.f892b == 0) {
                    aVar2.a(cVar.f891a, handler);
                } else {
                    aVar2.a(cVar.f892b, handler);
                }
            }
        };
        synchronized (f876c) {
            if (f877d.containsKey(str)) {
                if (aVar3 != null) {
                    f877d.get(str).add(aVar3);
                }
                return null;
            }
            if (aVar3 != null) {
                ArrayList<c.a<c>> arrayList = new ArrayList<>();
                arrayList.add(aVar3);
                f877d.put(str, arrayList);
            }
            f875b.a(callable, new c.a<c>() { // from class: android.support.v4.e.b.3
                @Override // android.support.v4.e.c.a
                public void a(c cVar) {
                    synchronized (b.f876c) {
                        ArrayList arrayList2 = (ArrayList) b.f877d.get(str);
                        if (arrayList2 != null) {
                            b.f877d.remove(str);
                            int i3 = 0;
                            while (true) {
                                int i4 = i3;
                                if (i4 < arrayList2.size()) {
                                    ((c.a) arrayList2.get(i4)).a(cVar);
                                    i3 = i4 + 1;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                }
            });
            return null;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.e.b$b, reason: collision with other inner class name */
    public static class C0018b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f887a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f890d;
        private final int e;

        public C0018b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f887a = (Uri) l.a(uri);
            this.f888b = i;
            this.f889c = i2;
            this.f890d = z;
            this.e = i3;
        }

        public Uri a() {
            return this.f887a;
        }

        public int b() {
            return this.f888b;
        }

        public int c() {
            return this.f889c;
        }

        public boolean d() {
            return this.f890d;
        }

        public int e() {
            return this.e;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0018b[] f886b;

        public a(int i, C0018b[] c0018bArr) {
            this.f885a = i;
            this.f886b = c0018bArr;
        }

        public int a() {
            return this.f885a;
        }

        public C0018b[] b() {
            return this.f886b;
        }
    }

    public static Map<Uri, ByteBuffer> a(Context context, C0018b[] c0018bArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (C0018b c0018b : c0018bArr) {
            if (c0018b.e() == 0) {
                Uri uriA = c0018b.a();
                if (!map.containsKey(uriA)) {
                    map.put(uriA, h.a(context, cancellationSignal, uriA));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public static a a(Context context, CancellationSignal cancellationSignal, android.support.v4.e.a aVar) throws PackageManager.NameNotFoundException {
        ProviderInfo providerInfoA = a(context.getPackageManager(), aVar, context.getResources());
        if (providerInfoA == null) {
            return new a(1, null);
        }
        return new a(0, a(context, aVar, providerInfoA.authority, cancellationSignal));
    }

    public static ProviderInfo a(PackageManager packageManager, android.support.v4.e.a aVar, Resources resources) throws PackageManager.NameNotFoundException {
        int i = 0;
        String strA = aVar.a();
        ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strA, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + strA);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(aVar.b())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + strA + ", but package was not " + aVar.b());
        }
        List<byte[]> listA = a(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        Collections.sort(listA, e);
        List<List<byte[]>> listA2 = a(aVar, resources);
        while (true) {
            int i2 = i;
            if (i2 < listA2.size()) {
                ArrayList arrayList = new ArrayList(listA2.get(i2));
                Collections.sort(arrayList, e);
                if (a(listA, arrayList)) {
                    return providerInfoResolveContentProvider;
                }
                i = i2 + 1;
            } else {
                return null;
            }
        }
    }

    private static List<List<byte[]>> a(android.support.v4.e.a aVar, Resources resources) {
        if (aVar.d() != null) {
            return aVar.d();
        }
        return android.support.v4.a.a.a.a(resources, aVar.e());
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

    /* JADX WARN: Removed duplicated region for block: B:44:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static android.support.v4.e.b.C0018b[] a(android.content.Context r18, android.support.v4.e.a r19, java.lang.String r20, android.os.CancellationSignal r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.e.b.a(android.content.Context, android.support.v4.e.a, java.lang.String, android.os.CancellationSignal):android.support.v4.e.b$b[]");
    }
}
