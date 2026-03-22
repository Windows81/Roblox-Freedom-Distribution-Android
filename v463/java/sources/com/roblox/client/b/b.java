package com.roblox.client.b;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.widget.Toast;
import androidx.fragment.app.g;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.ae.s;
import com.roblox.client.b.c;
import com.roblox.client.o;
import com.roblox.client.s.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f5742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences f5743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5744c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5745d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5746e = 0;
    private int f = 0;
    private long g = 0;
    private int h = 0;
    private Boolean i = true;
    private a j;

    public interface a {
        void a();

        void b();

        void c();
    }

    private b() {
    }

    public static b a() {
        b bVar = f5742a;
        if (bVar != null) {
            return bVar;
        }
        synchronized (b.class) {
            if (f5742a == null) {
                f5742a = new b();
            }
        }
        return f5742a;
    }

    public void a(Context context) {
        SharedPreferences sharedPreferencesA = s.a(context, "rate_me_maybe");
        this.f5743b = sharedPreferencesA;
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        if (!"2.463.417712".equals(this.f5743b.getString("CURRENT_APP_VERSION", ""))) {
            b(context);
            editorEdit.putString("CURRENT_APP_VERSION", "2.463.417712");
        }
        if (this.f5743b.getLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", 0L) == 0) {
            editorEdit.putLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", System.currentTimeMillis());
        }
        editorEdit.putInt("PREF_TOTAL_LAUNCH_COUNT", this.f5743b.getInt("PREF_TOTAL_LAUNCH_COUNT", 0) + 1);
        editorEdit.putInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", this.f5743b.getInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0) + 1);
        editorEdit.apply();
    }

    private f e() {
        return f.b();
    }

    public void a(int i, int i2, int i3, int i4, long j, int i5) {
        this.f5744c = i;
        this.f5745d = i2;
        this.f5746e = i3;
        this.f = i4;
        this.g = j;
        this.h = i5;
    }

    public void a(long j) {
        SharedPreferences.Editor editorEdit = this.f5743b.edit();
        if (j > this.f5743b.getLong("PREF_LONGEST_GAME_DURATION", 0L)) {
            editorEdit.putLong("PREF_LONGEST_GAME_DURATION", j);
        }
        editorEdit.putInt("PREF_GAMES_PLAYED", this.f5743b.getInt("PREF_GAMES_PLAYED", 0) + 1);
        editorEdit.apply();
    }

    public static void b(Context context) {
        s.a(context, "rate_me_maybe").edit().clear().apply();
        k.c("RateMeMaybe", "Cleared RateMeMaybe shared preferences.");
    }

    private void b(Activity activity) {
        g gVarJ = ((androidx.appcompat.app.c) activity).j();
        if (gVarJ.a("rmmFragment") != null) {
            return;
        }
        c cVar = new c();
        cVar.a(this);
        try {
            cVar.a(gVarJ, "rmmFragment");
            e().a("Mobile-Ratings-Shown-Android");
        } catch (IllegalStateException e2) {
            k.e("RateMeMaybe", "Exception: " + e2.getMessage());
        }
    }

    public void a(Activity activity) {
        if (this.f5743b.getBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", false)) {
            return;
        }
        if (!l.b(activity)) {
            k.c("RateMeMaybe", "No Play Store installed on device.");
            return;
        }
        if (this.h > this.f5743b.getInt("PREF_GAMES_PLAYED", 0)) {
            k.c("RateMeMaybe", "Hasn't played a number games higher than the minimum requested.");
            return;
        }
        if (this.g > this.f5743b.getLong("PREF_LONGEST_GAME_DURATION", 0L)) {
            k.c("RateMeMaybe", "Hasn't played a game for more than the minimum time requested.");
            return;
        }
        SharedPreferences.Editor editorEdit = this.f5743b.edit();
        int i = this.f5743b.getInt("PREF_TOTAL_LAUNCH_COUNT", 0);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.f5743b.getLong("PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH", 0L);
        long j2 = this.f5743b.getLong("PREF_TIME_OF_LAST_PROMPT", 0L);
        int i2 = this.f5743b.getInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0);
        if (i >= this.f5744c && jCurrentTimeMillis - j >= ((long) this.f5745d) * 86400000) {
            k.c("RateMeMaybe", "Enough time until initial prompt.");
            if (j2 == 0 || (i2 >= this.f5746e && jCurrentTimeMillis - j2 >= ((long) this.f) * 86400000)) {
                k.c("RateMeMaybe", "User has not seen a prompt || (Enough launches since last prompt && Enough time since last prompt)");
                editorEdit.putLong("PREF_TIME_OF_LAST_PROMPT", jCurrentTimeMillis);
                editorEdit.putInt("PREF_LAUNCHES_SINCE_LAST_PROMPT", 0);
                editorEdit.apply();
                b(activity);
                return;
            }
            k.c("RateMeMaybe", "User has seen a prompt recently || (Not enough launches since last prompt || Not enough time since last prompt)");
            editorEdit.apply();
            return;
        }
        k.c("RateMeMaybe", "Not enough time until initial prompt.");
        editorEdit.apply();
    }

    @Override // com.roblox.client.b.c.a
    public void b() {
        if (this.i.booleanValue()) {
            d();
        } else {
            c();
        }
    }

    @Override // com.roblox.client.b.c.a
    public void c() {
        SharedPreferences.Editor editorEdit = this.f5743b.edit();
        editorEdit.putBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", true);
        editorEdit.apply();
        a aVar = this.j;
        if (aVar != null) {
            aVar.c();
        }
        e().a("Mobile-Ratings-NotNow-Tapped-Android");
    }

    @Override // com.roblox.client.b.c.a
    public void d() {
        a aVar = this.j;
        if (aVar != null) {
            aVar.b();
        }
        e().a("Mobile-Ratings-RemindMe-Tapped-Android");
    }

    @Override // com.roblox.client.b.c.a
    public void c(Context context) {
        SharedPreferences.Editor editorEdit = this.f5743b.edit();
        editorEdit.putBoolean("PREF_DONT_SHOW_AGAIN_FOR_THIS_VERSION", true);
        editorEdit.apply();
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName())));
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, o.j.Application_AppRating_Response_CouldNotLaunchPlayStore, 0).show();
        }
        a aVar = this.j;
        if (aVar != null) {
            aVar.a();
        }
        e().a("Mobile-Ratings-Yes-Tapped-Android");
    }
}
