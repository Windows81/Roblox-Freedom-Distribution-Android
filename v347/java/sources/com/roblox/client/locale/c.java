package com.roblox.client.locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum c {
    ENGLISH("en_us", "en"),
    SPANISH("es_es", "es"),
    GERMAN("de_de", "de"),
    FRENCH("fr_fr", "fr"),
    INDONESIAN("id_id", "id"),
    ITALIAN("it_it", "it"),
    JAPANESE("ja_jp", "ja"),
    KOREAN("ko_kr", "ko"),
    PORTUGUESE("pt_br", "pt"),
    RUSSIAN("ru_ru", "ru"),
    THAI("th_th", "th"),
    TURKISH("tr_tr", "tr"),
    VIETNAMESE("vi_vn", "vi"),
    TRADITIONAL_CHINESE("zh_tw", "zh_TW"),
    SIMPLIFIED_CHINESE("zh_cn", "zh_CN");

    private String p;
    private String q;

    c(String str, String str2) {
        this.p = str;
        this.q = str2;
    }

    public String a() {
        return this.p;
    }

    public String b() {
        return this.q;
    }

    public static c a(String str) {
        for (c cVar : values()) {
            if (cVar.a().equals(str)) {
                return cVar;
            }
        }
        return null;
    }
}
