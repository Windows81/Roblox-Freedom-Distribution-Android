package com.roblox.client.chat;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.roblox.client.R;
import com.roblox.client.components.p;

/* JADX INFO: loaded from: classes.dex */
public class i extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Toolbar f6627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.j.c f6628b;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chat_disable, viewGroup, false);
        this.f6627a = (Toolbar) viewInflate.findViewById(R.id.toolbar_chat);
        this.f6627a.setTitle(R.string.CommonUI_Features_Label_Chat);
        TextView textView = (TextView) viewInflate.findViewById(R.id.chat_disabled_hint);
        String string = getString(R.string.Feature_Chat_Label_PrivacySettings);
        String string2 = getString(R.string.Feature_Chat_Label_TurnOnChatInSettings, string);
        int iIndexOf = string2.indexOf(string);
        com.roblox.client.util.a.b.a(textView, string2, new com.roblox.client.util.a.d(null, null, string, iIndexOf, iIndexOf + string.length()));
        a(this.f6627a.getMenu(), getActivity().getMenuInflater());
        p.a(this.f6627a, getContext());
        return viewInflate;
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        this.f6628b = new com.roblox.client.j.c(this);
        this.f6628b.a(menu, menuInflater);
    }
}
