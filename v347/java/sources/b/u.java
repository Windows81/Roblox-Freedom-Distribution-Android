package b;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f2079a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f2080b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2082d;
    private final String e;
    private final String f;

    private u(String str, String str2, String str3, String str4) {
        this.f2081c = str;
        this.f2082d = str2;
        this.e = str3;
        this.f = str4;
    }

    public static u a(String str) {
        String strGroup;
        Matcher matcher = f2079a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f2080b.matcher(str);
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
        return new u(str, lowerCase, lowerCase2, str2);
    }

    public String a() {
        return this.f2082d;
    }

    public Charset b() {
        if (this.f != null) {
            return Charset.forName(this.f);
        }
        return null;
    }

    public Charset a(Charset charset) {
        return this.f != null ? Charset.forName(this.f) : charset;
    }

    public String toString() {
        return this.f2081c;
    }

    public boolean equals(Object obj) {
        return (obj instanceof u) && ((u) obj).f2081c.equals(this.f2081c);
    }

    public int hashCode() {
        return this.f2081c.hashCode();
    }
}
