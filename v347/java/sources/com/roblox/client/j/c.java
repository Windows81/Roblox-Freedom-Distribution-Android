package com.roblox.client.j;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.h;
import android.support.v4.view.g;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.roblox.client.NotificationStreamActivity;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i;
import com.roblox.client.p;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f7228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MenuItem f7231d;
    private TextView e;

    public c(Fragment fragment) {
        this(fragment.getActivity(), false);
    }

    public c(h hVar, boolean z) {
        this.f7230c = -1;
        this.f7228a = hVar;
        this.f7229b = z;
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_button_notification_stream, menu);
        this.f7231d = menu.findItem(R.id.action_notification_stream);
        View viewA = g.a(this.f7231d);
        ImageView imageView = (ImageView) viewA.findViewById(R.id.notification_button);
        this.e = (TextView) viewA.findViewById(R.id.notification_count);
        a(this.e, this.f7230c);
        if (!this.f7229b) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.j.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c.this.a();
                }
            });
        }
        return this.f7231d;
    }

    public void a() {
        if (this.f7228a != null) {
            if (com.roblox.client.b.bW()) {
                i.a(com.roblox.client.q.d.a().c());
            }
            com.roblox.client.q.d.a().c(0);
            this.f7230c = 0;
            if (this.e != null) {
                this.e.setVisibility(8);
            }
            com.roblox.platform.g.a().d().b().a(new com.roblox.platform.http.a.a());
            if (RobloxSettings.isPhone()) {
                this.f7228a.startActivityForResult(new Intent(this.f7228a, (Class<?>) NotificationStreamActivity.class), 10110);
                this.f7228a.overridePendingTransition(R.anim.slide_up_short, android.R.anim.fade_out);
                return;
            }
            c();
        }
    }

    private void a(int i) {
        this.f7230c = i;
        a((TextView) g.a(this.f7231d).findViewById(R.id.notification_count), this.f7230c);
    }

    private void a(TextView textView, int i) {
        if (i > 0) {
            textView.setVisibility(0);
            if (i > 99) {
                textView.setText(textView.getContext().getString(R.string.CommonUI_Messages_Response_99_Plus));
                return;
            } else {
                textView.setText(com.roblox.client.locale.b.a(i));
                return;
            }
        }
        textView.setVisibility(8);
    }

    private void c() {
        Point pointA = p.a((Context) this.f7228a);
        int dimensionPixelSize = this.f7228a.getResources().getDimensionPixelSize(R.dimen.mainToolbarHeight);
        int dimensionPixelSize2 = this.f7228a.getResources().getDimensionPixelSize(R.dimen.mainTabWidgetHeight);
        int iA = (int) p.a(this.f7228a, 80);
        int iA2 = (int) p.a(this.f7228a, 420);
        int i = ((pointA.y - dimensionPixelSize2) - dimensionPixelSize) - iA;
        int iA3 = (int) p.a(this.f7228a, 15);
        com.roblox.client.g gVar = new com.roblox.client.g();
        gVar.setStyle(2, 0);
        Bundle bundle = new Bundle();
        gVar.getClass();
        bundle.putInt("dialogWidth", iA2);
        gVar.getClass();
        bundle.putInt("dialogHeight", i);
        gVar.getClass();
        bundle.putInt("dialogGravity", 53);
        gVar.getClass();
        bundle.putInt("dialogOffsetY", dimensionPixelSize);
        gVar.getClass();
        bundle.putInt("dialogOffsetX", iA3);
        bundle.putString("DEFAULT_URL", RobloxSettings.notificationStreamUrl());
        gVar.setArguments(bundle);
        gVar.show(this.f7228a.e(), "NOTIFICATION_STREAM_TAG");
    }

    public void b() {
        Fragment fragmentA = this.f7228a.e().a("NOTIFICATION_STREAM_TAG");
        if (fragmentA != null && fragmentA.isVisible()) {
            com.roblox.client.q.d.a().c(0);
        }
        a(com.roblox.client.q.d.a().c());
    }
}
