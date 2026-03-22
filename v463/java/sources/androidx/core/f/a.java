package androidx.core.f;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.g.c;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1408a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Executor f1409b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Spannable f1410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C0029a f1411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final PrecomputedText f1412e;

    /* JADX INFO: renamed from: androidx.core.f.a$a, reason: collision with other inner class name */
    public static final class C0029a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final PrecomputedText.Params f1413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextPaint f1414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextDirectionHeuristic f1415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f1416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1417e;

        /* JADX INFO: renamed from: androidx.core.f.a$a$a, reason: collision with other inner class name */
        public static class C0030a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final TextPaint f1418a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f1419b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f1420c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1421d;

            public C0030a(TextPaint textPaint) {
                this.f1418a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f1420c = 1;
                    this.f1421d = 1;
                } else {
                    this.f1421d = 0;
                    this.f1420c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f1419b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f1419b = null;
                }
            }

            public C0030a a(int i) {
                this.f1420c = i;
                return this;
            }

            public C0030a b(int i) {
                this.f1421d = i;
                return this;
            }

            public C0030a a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f1419b = textDirectionHeuristic;
                return this;
            }

            public C0029a a() {
                return new C0029a(this.f1418a, this.f1419b, this.f1420c, this.f1421d);
            }
        }

        C0029a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 28) {
                this.f1413a = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f1413a = null;
            }
            this.f1414b = textPaint;
            this.f1415c = textDirectionHeuristic;
            this.f1416d = i;
            this.f1417e = i2;
        }

        public C0029a(PrecomputedText.Params params) {
            this.f1414b = params.getTextPaint();
            this.f1415c = params.getTextDirection();
            this.f1416d = params.getBreakStrategy();
            this.f1417e = params.getHyphenationFrequency();
            this.f1413a = params;
        }

        public TextPaint a() {
            return this.f1414b;
        }

        public TextDirectionHeuristic b() {
            return this.f1415c;
        }

        public int c() {
            return this.f1416d;
        }

        public int d() {
            return this.f1417e;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || !(obj instanceof C0029a)) {
                return false;
            }
            C0029a c0029a = (C0029a) obj;
            PrecomputedText.Params params = this.f1413a;
            if (params != null) {
                return params.equals(c0029a.f1413a);
            }
            if (Build.VERSION.SDK_INT >= 23 && (this.f1416d != c0029a.c() || this.f1417e != c0029a.d())) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 18 && this.f1415c != c0029a.b()) || this.f1414b.getTextSize() != c0029a.a().getTextSize() || this.f1414b.getTextScaleX() != c0029a.a().getTextScaleX() || this.f1414b.getTextSkewX() != c0029a.a().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f1414b.getLetterSpacing() != c0029a.a().getLetterSpacing() || !TextUtils.equals(this.f1414b.getFontFeatureSettings(), c0029a.a().getFontFeatureSettings()))) || this.f1414b.getFlags() != c0029a.a().getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.f1414b.getTextLocales().equals(c0029a.a().getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.f1414b.getTextLocale().equals(c0029a.a().getTextLocale())) {
                return false;
            }
            if (this.f1414b.getTypeface() == null) {
                if (c0029a.a().getTypeface() != null) {
                    return false;
                }
            } else if (!this.f1414b.getTypeface().equals(c0029a.a().getTypeface())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return c.a(Float.valueOf(this.f1414b.getTextSize()), Float.valueOf(this.f1414b.getTextScaleX()), Float.valueOf(this.f1414b.getTextSkewX()), Float.valueOf(this.f1414b.getLetterSpacing()), Integer.valueOf(this.f1414b.getFlags()), this.f1414b.getTextLocales(), this.f1414b.getTypeface(), Boolean.valueOf(this.f1414b.isElegantTextHeight()), this.f1415c, Integer.valueOf(this.f1416d), Integer.valueOf(this.f1417e));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return c.a(Float.valueOf(this.f1414b.getTextSize()), Float.valueOf(this.f1414b.getTextScaleX()), Float.valueOf(this.f1414b.getTextSkewX()), Float.valueOf(this.f1414b.getLetterSpacing()), Integer.valueOf(this.f1414b.getFlags()), this.f1414b.getTextLocale(), this.f1414b.getTypeface(), Boolean.valueOf(this.f1414b.isElegantTextHeight()), this.f1415c, Integer.valueOf(this.f1416d), Integer.valueOf(this.f1417e));
            }
            if (Build.VERSION.SDK_INT >= 18) {
                return c.a(Float.valueOf(this.f1414b.getTextSize()), Float.valueOf(this.f1414b.getTextScaleX()), Float.valueOf(this.f1414b.getTextSkewX()), Integer.valueOf(this.f1414b.getFlags()), this.f1414b.getTextLocale(), this.f1414b.getTypeface(), this.f1415c, Integer.valueOf(this.f1416d), Integer.valueOf(this.f1417e));
            }
            if (Build.VERSION.SDK_INT >= 17) {
                return c.a(Float.valueOf(this.f1414b.getTextSize()), Float.valueOf(this.f1414b.getTextScaleX()), Float.valueOf(this.f1414b.getTextSkewX()), Integer.valueOf(this.f1414b.getFlags()), this.f1414b.getTextLocale(), this.f1414b.getTypeface(), this.f1415c, Integer.valueOf(this.f1416d), Integer.valueOf(this.f1417e));
            }
            return c.a(Float.valueOf(this.f1414b.getTextSize()), Float.valueOf(this.f1414b.getTextScaleX()), Float.valueOf(this.f1414b.getTextSkewX()), Integer.valueOf(this.f1414b.getFlags()), this.f1414b.getTypeface(), this.f1415c, Integer.valueOf(this.f1416d), Integer.valueOf(this.f1417e));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f1414b.getTextSize());
            sb.append(", textScaleX=" + this.f1414b.getTextScaleX());
            sb.append(", textSkewX=" + this.f1414b.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f1414b.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f1414b.isElegantTextHeight());
            }
            if (Build.VERSION.SDK_INT >= 24) {
                sb.append(", textLocale=" + this.f1414b.getTextLocales());
            } else if (Build.VERSION.SDK_INT >= 17) {
                sb.append(", textLocale=" + this.f1414b.getTextLocale());
            }
            sb.append(", typeface=" + this.f1414b.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f1414b.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f1415c);
            sb.append(", breakStrategy=" + this.f1416d);
            sb.append(", hyphenationFrequency=" + this.f1417e);
            sb.append("}");
            return sb.toString();
        }
    }

    public PrecomputedText a() {
        Spannable spannable = this.f1410c;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    public C0029a b() {
        return this.f1411d;
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1412e.setSpan(obj, i, i2, i3);
        } else {
            this.f1410c.setSpan(obj, i, i2, i3);
        }
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f1412e.removeSpan(obj);
        } else {
            this.f1410c.removeSpan(obj);
        }
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T[]) this.f1412e.getSpans(i, i2, cls);
        }
        return (T[]) this.f1410c.getSpans(i, i2, cls);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f1410c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f1410c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f1410c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f1410c.nextSpanTransition(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f1410c.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f1410c.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f1410c.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f1410c.toString();
    }
}
