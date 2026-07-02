package com.roblox.client.friends.b;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0104a f6969a;

    /* JADX INFO: renamed from: com.roblox.client.friends.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0104a {
        void l();
    }

    public static a a() {
        return new a();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_nearby_presentation, viewGroup, false);
        viewInflate.findViewById(R.id.nearby_presentation_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.b.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (a.this.f6969a != null) {
                    a.this.f6969a.l();
                }
            }
        });
        return viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof InterfaceC0104a) {
            this.f6969a = (InterfaceC0104a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f6969a = null;
    }
}
