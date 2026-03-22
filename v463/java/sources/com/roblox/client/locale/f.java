package com.roblox.client.locale;

import com.roblox.client.ae.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static f f6502a = new f("en_us", "en");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static f f6503b = new f("es_es", "es");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f f6504c = new f("fr_fr", "fr");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static f f6505d = new f("it_it", "it");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ArrayList<f> f6506e;
    private String f;
    private String g;

    static {
        ArrayList<f> arrayList = new ArrayList<>();
        f6506e = arrayList;
        arrayList.add(f6502a);
        f6506e.add(f6503b);
        f6506e.add(f6504c);
        f6506e.add(f6505d);
        f6506e.add(new f("de_de", "de"));
        f6506e.add(new f("id_id", "id"));
        f6506e.add(new f("ja_jp", "ja"));
        f6506e.add(new f("ko_kr", "ko"));
        f6506e.add(new f("pt_br", "pt"));
        f6506e.add(new f("ru_ru", "ru"));
        f6506e.add(new f("th_th", "th"));
        f6506e.add(new f("tr_tr", "tr"));
        f6506e.add(new f("vi_vn", "vi"));
        f6506e.add(new f("zh_tw", "zh_TW"));
        if (l.b()) {
            f6506e.add(new f("zh_cjv", "zh_CN"));
        } else {
            f6506e.add(new f("zh_cn", "zh_CN"));
        }
    }

    private f(String str, String str2) {
        this.f = str;
        this.g = str2;
    }

    public String a() {
        return this.f;
    }

    public String b() {
        return this.g;
    }

    public static f a(String str) {
        for (f fVar : f6506e) {
            if (fVar.a().equals(str)) {
                return fVar;
            }
        }
        return null;
    }

    public static f b(String str) {
        for (f fVar : f6506e) {
            if (fVar.b().equals(str) || fVar.b().equals(str.split("_")[0])) {
                return fVar;
            }
        }
        return null;
    }

    public String toString() {
        return "LocaleValue{'" + this.f + "','" + this.g + "'}";
    }
}
