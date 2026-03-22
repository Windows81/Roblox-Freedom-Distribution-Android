package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.roblox.client.o;
import java.util.Hashtable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {
    public static void a(TextView textView, Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.l.RbxFont);
        String string = typedArrayObtainStyledAttributes.getString(o.l.RbxFont_fontName);
        if (string == null) {
            string = "SourceSansPro-Light.ttf";
        }
        a(textView, context, string);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void a(TextView textView, Context context, String str) {
        if (str != null) {
            Typeface typefaceA = a.a("fonts/" + str, context);
            if (typefaceA != null) {
                textView.setTypeface(typefaceA);
            }
        }
    }

    public static boolean a(TextView textView, String str) {
        String strC;
        if (str == null || (strC = com.roblox.engine.f.c()) == null) {
            return false;
        }
        Typeface typefaceA = a.a(str, strC + "/fonts/" + str);
        if (typefaceA == null) {
            return false;
        }
        textView.setTypeface(typefaceA);
        return true;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Hashtable<String, Typeface> f5874a = new Hashtable<>();

        public static Typeface a(String str, Context context) {
            Typeface typeface = f5874a.get(str);
            if (typeface != null) {
                return typeface;
            }
            try {
                Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), str);
                f5874a.put(str, typefaceCreateFromAsset);
                return typefaceCreateFromAsset;
            } catch (Exception unused) {
                return null;
            }
        }

        public static Typeface a(String str, String str2) {
            Typeface typeface = f5874a.get(str);
            if (typeface != null) {
                return typeface;
            }
            try {
                Typeface typefaceCreateFromFile = Typeface.createFromFile(str2);
                f5874a.put(str, typefaceCreateFromFile);
                return typefaceCreateFromFile;
            } catch (Exception unused) {
                return null;
            }
        }
    }
}
