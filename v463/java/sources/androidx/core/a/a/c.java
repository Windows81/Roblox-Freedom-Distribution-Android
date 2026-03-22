package androidx.core.a.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    public interface a {
    }

    public static final class d implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.core.e.a f1258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1259b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1260c;

        public d(androidx.core.e.a aVar, int i, int i2) {
            this.f1258a = aVar;
            this.f1260c = i;
            this.f1259b = i2;
        }

        public androidx.core.e.a a() {
            return this.f1258a;
        }

        public int b() {
            return this.f1260c;
        }

        public int c() {
            return this.f1259b;
        }
    }

    /* JADX INFO: renamed from: androidx.core.a.a.c$c, reason: collision with other inner class name */
    public static final class C0024c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1253a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1255c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f1256d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1257e;
        private int f;

        public C0024c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1253a = str;
            this.f1254b = i;
            this.f1255c = z;
            this.f1256d = str2;
            this.f1257e = i2;
            this.f = i3;
        }

        public String a() {
            return this.f1253a;
        }

        public int b() {
            return this.f1254b;
        }

        public boolean c() {
            return this.f1255c;
        }

        public String d() {
            return this.f1256d;
        }

        public int e() {
            return this.f1257e;
        }

        public int f() {
            return this.f;
        }
    }

    public static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final C0024c[] f1252a;

        public b(C0024c[] c0024cArr) {
            this.f1252a = c0024cArr;
        }

        public C0024c[] a() {
            return this.f1252a;
        }
    }

    public static a a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return b(xmlPullParser, resources);
    }

    private static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    private static a c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.d.FontFamily);
        String string = typedArrayObtainAttributes.getString(a.d.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(a.d.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(a.d.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(a.d.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(a.d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(a.d.FontFamily_fontProviderFetchTimeout, 500);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new d(new androidx.core.e.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(d(xmlPullParser, resources));
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((C0024c[]) arrayList.toArray(new C0024c[arrayList.size()]));
    }

    private static int a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    public static List<List<byte[]>> a(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static C0024c d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.d.FontFamilyFont);
        int i = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(a.d.FontFamilyFont_fontWeight) ? a.d.FontFamilyFont_fontWeight : a.d.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(a.d.FontFamilyFont_fontStyle) ? a.d.FontFamilyFont_fontStyle : a.d.FontFamilyFont_android_fontStyle, 0);
        int i2 = typedArrayObtainAttributes.hasValue(a.d.FontFamilyFont_ttcIndex) ? a.d.FontFamilyFont_ttcIndex : a.d.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(a.d.FontFamilyFont_fontVariationSettings) ? a.d.FontFamilyFont_fontVariationSettings : a.d.FontFamilyFont_android_fontVariationSettings);
        int i3 = typedArrayObtainAttributes.getInt(i2, 0);
        int i4 = typedArrayObtainAttributes.hasValue(a.d.FontFamilyFont_font) ? a.d.FontFamilyFont_font : a.d.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i4, 0);
        String string2 = typedArrayObtainAttributes.getString(i4);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new C0024c(string2, i, z, string, i3, resourceId);
    }

    private static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
