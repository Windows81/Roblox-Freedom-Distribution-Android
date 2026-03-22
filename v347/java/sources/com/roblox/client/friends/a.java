package com.roblox.client.friends;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InterfaceC0102a f6963c;

    /* JADX INFO: renamed from: com.roblox.client.friends.a$a, reason: collision with other inner class name */
    public interface InterfaceC0102a {
        void e(int i);
    }

    public static a a(int i, int i2) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("text_param", i2);
        bundle.putInt("request_code_param", i);
        aVar.setArguments(bundle);
        return aVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f6961a = getArguments().getInt("text_param");
            this.f6962b = getArguments().getInt("request_code_param");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131361877, viewGroup, false);
        ((TextView) viewInflate.findViewById(2131230766)).setText(this.f6961a);
        viewInflate.findViewById(2131230765).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.f6963c.e(a.this.f6962b);
            }
        });
        return viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof InterfaceC0102a) {
            this.f6963c = (InterfaceC0102a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f6963c = null;
    }
}
