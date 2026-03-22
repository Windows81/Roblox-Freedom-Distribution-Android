package com.roblox.client.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.roblox.client.h;
import java.util.Hashtable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class m {
    public static void a(TextView textView, Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.b.RbxFont);
        String string = typedArrayObtainStyledAttributes.getString(0);
        if (string == null) {
            string = "SourceSansPro-Light.ttf";
        }
        a(textView, context, string);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void a(TextView textView, Context context, String str) {
        Typeface typefaceA;
        if (str != null && (typefaceA = a.a(str, context)) != null) {
            textView.setTypeface(typefaceA);
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Hashtable<String, Typeface> f6762a = new Hashtable<>();

        public static Typeface a(String str, Context context) {
            Typeface typeface = f6762a.get(str);
            if (typeface == null) {
                try {
                    Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), "fonts/" + str);
                    f6762a.put(str, typefaceCreateFromAsset);
                    return typefaceCreateFromAsset;
                } catch (Exception e) {
                    return null;
                }
            }
            return typeface;
        }
    }
}
