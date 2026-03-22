package com.roblox.client.locale.d;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.roblox.client.ae.k;
import com.roblox.client.o;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f6480a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, Integer> f6482c = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Pattern f6481b = Pattern.compile("^*%[0-9]+\\$[sd]*");

    public static b a(Context context) {
        if (f6480a == null) {
            synchronized (b.class) {
                f6480a = new b(context);
            }
        }
        return f6480a;
    }

    b(Context context) {
        b(context);
    }

    public boolean a(String str) {
        return this.f6482c.containsKey(str);
    }

    private void b(Context context) {
        String string;
        Field[] fields = o.j.class.getFields();
        if (context == null || fields.length <= 0) {
            return;
        }
        Resources resources = context.getResources();
        for (Field field : fields) {
            String name = field.getName();
            try {
                string = resources.getString(resources.getIdentifier(name, "string", context.getPackageName()));
            } catch (Resources.NotFoundException e2) {
                k.c("rbx.locale", e2.getMessage());
                string = "";
            }
            if (!TextUtils.isEmpty(string)) {
                this.f6482c.put(name, Integer.valueOf(b(string)));
            }
        }
    }

    private int b(String str) {
        int i = 0;
        while (this.f6481b.matcher(str).find()) {
            i++;
        }
        return i;
    }

    public boolean a(String str, String str2) {
        return this.f6482c.containsKey(str) && this.f6482c.get(str).intValue() == b(str2);
    }
}
