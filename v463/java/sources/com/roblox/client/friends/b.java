package com.roblox.client.friends;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.roblox.client.o;
import com.roblox.client.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f6031c;

    public interface a {
        void f(int i);
    }

    public static b a(int i, int i2) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putInt("text_param", i2);
        bundle.putInt("request_code_param", i);
        bVar.g(bundle);
        return bVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        if (n() != null) {
            this.f6029a = n().getInt("text_param");
            this.f6030b = n().getInt("request_code_param");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(o.g.fragment_app_settings, viewGroup, false);
        ((TextView) viewInflate.findViewById(o.f.app_settings_text_view)).setText(this.f6029a);
        viewInflate.findViewById(o.f.app_settings_needed_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                p.a("appSettings", "appSettings");
                b.this.f6031c.f(b.this.f6030b);
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void h() {
        super.h();
        p.b("appSettings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof a) {
            this.f6031c = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.f6031c = null;
    }
}
