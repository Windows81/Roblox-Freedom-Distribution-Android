package com.roblox.client.locale.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.roblox.client.h;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f7361a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, Integer> f7363c = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Pattern f7362b = Pattern.compile("^*%[0-9]+\\$[sd]*");

    public static b a(Context context) {
        if (f7361a == null) {
            synchronized (b.class) {
                f7361a = new b(context);
            }
        }
        return f7361a;
    }

    b(Context context) {
        b(context);
    }

    public boolean a(String str) {
        return this.f7363c.containsKey(str);
    }

    private void b(Context context) {
        Field[] fields = h.a.class.getFields();
        if (context != null && fields.length > 0) {
            Resources resources = context.getResources();
            for (Field field : fields) {
                String name = field.getName();
                String string = resources.getString(resources.getIdentifier(name, "string", context.getPackageName()));
                if (!TextUtils.isEmpty(string)) {
                    this.f7363c.put(name, Integer.valueOf(b(string)));
                }
            }
        }
    }

    private int b(String str) {
        int i = 0;
        while (this.f7362b.matcher(str).find()) {
            i++;
        }
        return i;
    }

    public boolean a(String str, String str2) {
        return this.f7363c.containsKey(str) && this.f7363c.get(str).intValue() == b(str2);
    }
}
