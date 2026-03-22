package android.support.v4.a.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.a.a;
import android.util.Base64;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: android.support.v4.a.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0013a {
    }

    public static final class d implements InterfaceC0013a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final android.support.v4.e.a f587a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f588b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f589c;

        public d(android.support.v4.e.a aVar, int i, int i2) {
            this.f587a = aVar;
            this.f589c = i;
            this.f588b = i2;
        }

        public android.support.v4.e.a a() {
            return this.f587a;
        }

        public int b() {
            return this.f589c;
        }

        public int c() {
            return this.f588b;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f585c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f586d;

        public c(String str, int i, boolean z, int i2) {
            this.f583a = str;
            this.f584b = i;
            this.f585c = z;
            this.f586d = i2;
        }

        public String a() {
            return this.f583a;
        }

        public int b() {
            return this.f584b;
        }

        public boolean c() {
            return this.f585c;
        }

        public int d() {
            return this.f586d;
        }
    }

    public static final class b implements InterfaceC0013a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c[] f582a;

        public b(c[] cVarArr) {
            this.f582a = cVarArr;
        }

        public c[] a() {
            return this.f582a;
        }
    }

    public static InterfaceC0013a a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
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

    private static InterfaceC0013a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    private static InterfaceC0013a c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.b.FontFamily);
        String string = typedArrayObtainAttributes.getString(a.b.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(a.b.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(a.b.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(a.b.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(a.b.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(a.b.FontFamily_fontProviderFetchTimeout, 500);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new d(new android.support.v4.e.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
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
        return new b((c[]) arrayList.toArray(new c[arrayList.size()]));
    }

    public static List<List<byte[]>> a(Resources resources, int i) {
        ArrayList arrayList = null;
        if (i != 0) {
            TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
            if (typedArrayObtainTypedArray.length() > 0) {
                ArrayList arrayList2 = new ArrayList();
                if (typedArrayObtainTypedArray.getResourceId(0, 0) != 0) {
                    for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                        arrayList2.add(a(resources.getStringArray(typedArrayObtainTypedArray.getResourceId(i2, 0))));
                    }
                    arrayList = arrayList2;
                } else {
                    arrayList2.add(a(resources.getStringArray(i)));
                    arrayList = arrayList2;
                }
            }
            typedArrayObtainTypedArray.recycle();
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static c d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), a.b.FontFamilyFont);
        int i = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(a.b.FontFamilyFont_fontWeight) ? a.b.FontFamilyFont_fontWeight : a.b.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(a.b.FontFamilyFont_fontStyle) ? a.b.FontFamilyFont_fontStyle : a.b.FontFamilyFont_android_fontStyle, 0);
        int i2 = typedArrayObtainAttributes.hasValue(a.b.FontFamilyFont_font) ? a.b.FontFamilyFont_font : a.b.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i2, 0);
        String string = typedArrayObtainAttributes.getString(i2);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new c(string, i, z, resourceId);
    }

    private static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }
}
