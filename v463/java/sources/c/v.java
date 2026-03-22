package c;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f2837a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f2838b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2840d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2841e;
    private final String f;

    private v(String str, String str2, String str3, String str4) {
        this.f2839c = str;
        this.f2840d = str2;
        this.f2841e = str3;
        this.f = str4;
    }

    public static v a(String str) {
        String strGroup;
        Matcher matcher = f2837a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f2838b.matcher(str);
        String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String strGroup2 = matcher2.group(1);
            if (strGroup2 != null && strGroup2.equalsIgnoreCase("charset")) {
                if (matcher2.group(2) != null) {
                    strGroup = matcher2.group(2);
                } else {
                    strGroup = matcher2.group(3);
                }
                if (str2 != null && !strGroup.equalsIgnoreCase(str2)) {
                    throw new IllegalArgumentException("Multiple different charsets: " + str);
                }
                str2 = strGroup;
            }
        }
        return new v(str, lowerCase, lowerCase2, str2);
    }

    public String a() {
        return this.f2840d;
    }

    public Charset b() {
        String str = this.f;
        if (str != null) {
            return Charset.forName(str);
        }
        return null;
    }

    public Charset a(Charset charset) {
        String str = this.f;
        return str != null ? Charset.forName(str) : charset;
    }

    public String toString() {
        return this.f2839c;
    }

    public boolean equals(Object obj) {
        return (obj instanceof v) && ((v) obj).f2839c.equals(this.f2839c);
    }

    public int hashCode() {
        return this.f2839c.hashCode();
    }
}
