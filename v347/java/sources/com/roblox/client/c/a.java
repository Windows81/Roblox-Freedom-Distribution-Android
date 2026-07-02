package com.roblox.client.c;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.support.v4.app.l;
import android.support.v7.app.c;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.c.b;
import com.roblox.client.i.f;
import com.roblox.client.util.g;
import com.roblox.client.util.h;
import com.roblox.client.util.m;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f6490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f6491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6492c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6493d = 0;
    private int e = 0;
    private int f = 0;
    private long g = 0;
    private int h = 0;
    private Boolean i = true;
    private f j;
    private InterfaceC0098a k;

    /* JADX INFO: renamed from: com.roblox.client.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0098a {
        void a();

        void b();

        void c();
    }

    private a() {
    }

    public static a a() {
        if (f6490a != null) {
            return f6490a;
        }
        synchronized (a.class) {
            if (f6490a == null) {
                f6490a = new a();
            }
        }
        return f6490a;
    }

    public void a(Context context, f fVar) {
        this.j = fVar;
        this.f6491b = m.a(context, "rate_me_maybe");
        SharedPreferences.Editor editorEdit = this.f6491b.edit();
        if (!"2.347.225742".equals(this.f6491b.getString("CURRENT_APP_VERSION", ""))) {
            a(context);
            editorEdit.putString("CURRENT_APP_VERSION", "2.347.225742");
        }
        if (this.f6491b.getLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", 0L) == 0) {
            editorEdit.putLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", System.currentTimeMillis());
        }
        editorEdit.putInt("PREF_TOTAL_LAUNCH_COUNT", this.f6491b.getInt("PREF_TOTAL_LAUNCH_COUNT", 0) + 1);
        editorEdit.putInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", this.f6491b.getInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0) + 1);
        editorEdit.apply();
    }

    public void a(int i, int i2, int i3, int i4, long j, int i5) {
        this.f6492c = i;
        this.f6493d = i2;
        this.e = i3;
        this.f = i4;
        this.g = j;
        this.h = i5;
    }

    public void a(long j) {
        SharedPreferences.Editor editorEdit = this.f6491b.edit();
        if (j > this.f6491b.getLong("PREF_LONGEST_GAME_DURATION", 0L)) {
            editorEdit.putLong("PREF_LONGEST_GAME_DURATION", j);
        }
        editorEdit.putInt("PREF_GAMES_PLAYED", this.f6491b.getInt("PREF_GAMES_PLAYED", 0) + 1);
        editorEdit.apply();
    }

    public static void a(Context context) {
        m.a(context, "rate_me_maybe").edit().clear().apply();
        g.c("RateMeMaybe", "Cleared RateMeMaybe shared preferences.");
    }

    private void b(Activity activity) {
        l lVarE = ((c) activity).e();
        if (lVarE.a("rmmFragment") == null) {
            b bVar = new b();
            bVar.a(this);
            try {
                bVar.show(lVarE, "rmmFragment");
                this.j.a("Mobile-Ratings-Shown-Android");
            } catch (IllegalStateException e) {
            }
        }
    }

    public void a(Activity activity) {
        if (!this.f6491b.getBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", false)) {
            if (!h.b(activity)) {
                g.b("RateMeMaybe", "No Play Store installed on device.");
                return;
            }
            if (this.h > this.f6491b.getInt("PREF_GAMES_PLAYED", 0)) {
                g.c("RateMeMaybe", "Hasn't played a number games higher than the minimum requested.");
                return;
            }
            if (this.g > this.f6491b.getLong("PREF_LONGEST_GAME_DURATION", 0L)) {
                g.c("RateMeMaybe", "Hasn't played a game for more than the minimum time requested.");
                return;
            }
            SharedPreferences.Editor editorEdit = this.f6491b.edit();
            int i = this.f6491b.getInt("PREF_TOTAL_LAUNCH_COUNT", 0);
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.f6491b.getLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", 0L);
            long j2 = this.f6491b.getLong("PREF_TIME_OF_LAST_PROMPT", 0L);
            int i2 = this.f6491b.getInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0);
            if (i < this.f6492c || jCurrentTimeMillis - j < ((long) this.f6493d) * 86400000) {
                editorEdit.apply();
                return;
            }
            if (j2 == 0 || (i2 >= this.e && jCurrentTimeMillis - j2 >= ((long) this.f) * 86400000)) {
                editorEdit.putLong("PREF_TIME_OF_LAST_PROMPT", jCurrentTimeMillis);
                editorEdit.putInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0);
                editorEdit.apply();
                b(activity);
                return;
            }
            editorEdit.apply();
        }
    }

    @Override // com.roblox.client.c.b.a
    public void b() {
        if (this.i.booleanValue()) {
            d();
        } else {
            c();
        }
    }

    @Override // com.roblox.client.c.b.a
    public void c() {
        SharedPreferences.Editor editorEdit = this.f6491b.edit();
        editorEdit.putBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", true);
        editorEdit.apply();
        if (this.k != null) {
            this.k.c();
        }
        this.j.a("Mobile-Ratings-NotNow-Tapped-Android");
    }

    @Override // com.roblox.client.c.b.a
    public void d() {
        if (this.k != null) {
            this.k.b();
        }
        this.j.a("Mobile-Ratings-RemindMe-Tapped-Android");
    }

    @Override // com.roblox.client.c.b.a
    public void b(Context context) {
        SharedPreferences.Editor editorEdit = this.f6491b.edit();
        editorEdit.putBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", true);
        editorEdit.apply();
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName())));
        } catch (ActivityNotFoundException e) {
            Toast.makeText(context, R.string.Application_AppRating_Response_CouldNotLaunchPlayStore, 0).show();
        }
        if (this.k != null) {
            this.k.a();
        }
        this.j.a("Mobile-Ratings-Yes-Tapped-Android");
    }
}
