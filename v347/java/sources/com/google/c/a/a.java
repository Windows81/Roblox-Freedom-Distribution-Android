package com.google.c.a;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a implements com.google.c.a.f<Character> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final a f6063a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public static final a f6064b = d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final a f6065c = e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final a f6066d = f();

    @Deprecated
    public static final a e = g();

    @Deprecated
    public static final a f = h();

    @Deprecated
    public static final a g = i();

    @Deprecated
    public static final a h = j();

    @Deprecated
    public static final a i = k();

    @Deprecated
    public static final a j = l();

    @Deprecated
    public static final a k = m();

    @Deprecated
    public static final a l = n();

    @Deprecated
    public static final a m = a();

    @Deprecated
    public static final a n = b();

    public abstract boolean a(char c2);

    public static a a() {
        return C0088a.o;
    }

    public static a b() {
        return n.o;
    }

    public static a c() {
        return q.p;
    }

    public static a d() {
        return c.o;
    }

    public static a e() {
        return b.o;
    }

    public static a f() {
        return d.o;
    }

    public static a g() {
        return g.o;
    }

    public static a h() {
        return i.o;
    }

    public static a i() {
        return j.o;
    }

    public static a j() {
        return l.o;
    }

    public static a k() {
        return k.o;
    }

    public static a l() {
        return h.o;
    }

    public static a m() {
        return f.o;
    }

    public static a n() {
        return p.o;
    }

    protected a() {
    }

    public boolean a(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!a(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.c.a.f
    @Deprecated
    public boolean a(Character ch) {
        return a(ch.charValue());
    }

    public String toString() {
        return super.toString();
    }

    static abstract class e extends a {
        e() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }
    }

    static abstract class m extends e {
        private final String o;

        m(String str) {
            this.o = (String) com.google.c.a.e.a(str);
        }

        @Override // com.google.c.a.a
        public final String toString() {
            return this.o;
        }
    }

    /* JADX INFO: renamed from: com.google.c.a.a$a, reason: collision with other inner class name */
    private static final class C0088a extends m {
        static final C0088a o = new C0088a();

        private C0088a() {
            super("CharMatcher.any()");
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return true;
        }

        @Override // com.google.c.a.a
        public boolean a(CharSequence charSequence) {
            com.google.c.a.e.a(charSequence);
            return true;
        }
    }

    private static final class n extends m {
        static final n o = new n();

        private n() {
            super("CharMatcher.none()");
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return false;
        }

        @Override // com.google.c.a.a
        public boolean a(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    static final class q extends m {
        static final int o = Integer.numberOfLeadingZeros("\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".length() - 1);
        static final q p = new q();

        q() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> o) == c2;
        }
    }

    private static final class c extends a {
        static final a o = new c();

        private c() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            switch (c2) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case ' ':
                case 133:
                case 5760:
                case 8232:
                case 8233:
                case 8287:
                case 12288:
                    break;
                case 8199:
                    break;
                default:
                    if (c2 < 8192 || c2 > 8202) {
                    }
                    break;
            }
            return true;
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    private static final class b extends m {
        static final b o = new b();

        b() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return c2 <= 127;
        }
    }

    private static class o extends a {
        private final String o;
        private final char[] p;
        private final char[] q;

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        o(String str, char[] cArr, char[] cArr2) {
            this.o = str;
            this.p = cArr;
            this.q = cArr2;
            com.google.c.a.e.a(cArr.length == cArr2.length);
            for (int i = 0; i < cArr.length; i++) {
                com.google.c.a.e.a(cArr[i] <= cArr2[i]);
                if (i + 1 < cArr.length) {
                    com.google.c.a.e.a(cArr2[i] < cArr[i + 1]);
                }
            }
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            int iBinarySearch = Arrays.binarySearch(this.p, c2);
            if (iBinarySearch >= 0) {
                return true;
            }
            int i = (iBinarySearch ^ (-1)) - 1;
            return i >= 0 && c2 <= this.q[i];
        }

        @Override // com.google.c.a.a
        public String toString() {
            return this.o;
        }
    }

    private static final class d extends o {
        static final d o = new d();

        private static char[] o() {
            return "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray();
        }

        private static char[] p() {
            char[] cArr = new char["0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".length()];
            for (int i = 0; i < "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".length(); i++) {
                cArr[i] = (char) ("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i) + '\t');
            }
            return cArr;
        }

        private d() {
            super("CharMatcher.digit()", o(), p());
        }
    }

    private static final class g extends a {
        static final g o = new g();

        private g() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return Character.isDigit(c2);
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    private static final class i extends a {
        static final i o = new i();

        private i() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return Character.isLetter(c2);
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    private static final class j extends a {
        static final j o = new j();

        private j() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return Character.isLetterOrDigit(c2);
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    private static final class l extends a {
        static final l o = new l();

        private l() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return Character.isUpperCase(c2);
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    private static final class k extends a {
        static final k o = new k();

        private k() {
        }

        @Override // com.google.c.a.a, com.google.c.a.f
        @Deprecated
        public /* bridge */ /* synthetic */ boolean a(Character ch) {
            return super.a(ch);
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return Character.isLowerCase(c2);
        }

        @Override // com.google.c.a.a
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    private static final class h extends m {
        static final h o = new h();

        private h() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.c.a.a
        public boolean a(char c2) {
            return c2 <= 31 || (c2 >= 127 && c2 <= 159);
        }
    }

    private static final class f extends o {
        static final f o = new f();

        private f() {
            super("CharMatcher.invisible()", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa".toCharArray(), "  \u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f \u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb".toCharArray());
        }
    }

    private static final class p extends o {
        static final p o = new p();

        private p() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }
}
